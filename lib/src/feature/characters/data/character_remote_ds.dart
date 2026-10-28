import '../../../core/rest_client/rest_client.dart';
import '../models/character.dart';
import '../models/character_dto.dart';

abstract interface class ICharacterRemoteDS {
  Future<CharacterPage> getCharacters({
    required int page,
    required String name,
  });
  Future<Character> getCharacter(int id);
}

final class CharacterRemoteDSImpl implements ICharacterRemoteDS {
  const CharacterRemoteDSImpl({required IRestClient restClient})
    : _restClient = restClient;
  final IRestClient _restClient;
  @override
  Future<CharacterPage> getCharacters({
    required int page,
    required String name,
  }) async {
    try {
      final json = await _restClient.get(
        'character',
        queryParams: {'page': page, if (name.isNotEmpty) 'name': name},
      );
      final next = (json['info'] as Map<String, dynamic>)['next'] as String?;
      return CharacterPage(
        totalCount:
            (json['info'] as Map<String, dynamic>)['count'] as int? ?? 0,
        characters: (json['results'] as List)
            .map(
              (item) => CharacterDTO.fromJson(
                item as Map<String, dynamic>,
              ).toDomain(),
            )
            .toList(),
        nextPage: next == null
            ? null
            : int.parse(Uri.parse(next).queryParameters['page']!),
      );
    } on RestClientException catch (error) {
      // The catalogue endpoint returns 404 for an empty filtered result.
      if (error.statusCode == 404) {
        return CharacterPage(characters: [], nextPage: null);
      }
      rethrow;
    }
  }

  @override
  Future<Character> getCharacter(int id) async =>
      CharacterDTO.fromJson(await _restClient.get('character/$id')).toDomain();
}
