import 'package:flutter_test/flutter_test.dart';
import 'package:rick_morty/src/core/rest_client/rest_client.dart';
import 'package:rick_morty/src/feature/characters/data/character_remote_ds.dart';

class FakeClient implements IRestClient {
  int? statusCode;
  Map<String, Object?>? query;
  @override
  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, Object?>? queryParams,
  }) async {
    query = queryParams;
    if (statusCode != null) {
      throw RestClientException('error', statusCode: statusCode);
    }
    return {
      'info': {
        'count': 826,
        'next': 'https://rickandmortyapi.com/api/character?page=2',
      },
      'results': [
        {
          'id': 1,
          'name': 'Rick',
          'status': 'Alive',
          'species': 'Human',
          'image': 'https://example.com/rick.png',
          'origin': {'name': 'Earth'},
          'location': {'name': 'Citadel'},
        },
      ],
    };
  }

  @override
  void close() {}
}

void main() {
  test(
    'maps API page and nested character fields; passes query parameters',
    () async {
      final client = FakeClient();
      final page = await CharacterRemoteDSImpl(
        restClient: client,
      ).getCharacters(page: 1, name: 'Rick');
      expect(client.query, {'page': 1, 'name': 'Rick'});
      expect(page.nextPage, 2);
      expect(page.totalCount, 826);
      expect(page.characters.single.origin, 'Earth');
      expect(page.characters.single.location, 'Citadel');
    },
  );
  test('404 list is empty; server failures and detail 404 propagate', () async {
    final client = FakeClient()..statusCode = 404;
    final source = CharacterRemoteDSImpl(restClient: client);
    expect(
      (await source.getCharacters(page: 1, name: 'missing')).characters,
      isEmpty,
    );
    await expectLater(
      source.getCharacter(9999),
      throwsA(isA<RestClientException>()),
    );
    client.statusCode = 500;
    await expectLater(
      source.getCharacters(page: 1, name: ''),
      throwsA(isA<RestClientException>()),
    );
  });
}
