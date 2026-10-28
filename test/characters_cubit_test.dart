import 'dart:async';
import 'package:flutter_test/flutter_test.dart';
import 'package:rick_morty/src/feature/characters/bloc/characters_cubit.dart';
import 'package:rick_morty/src/feature/characters/data/character_repository.dart';
import 'package:rick_morty/src/feature/characters/models/character.dart';

const rick = Character(
  id: 1,
  name: 'Rick',
  status: 'Alive',
  species: 'Human',
  image: '',
  origin: 'Earth',
  location: 'Earth',
);

class FakeRepository implements ICharacterRepository {
  final calls = <({int page, String name, Completer<CharacterPage> result})>[];
  @override
  Future<CharacterPage> getCharacters({required int page, String name = ''}) {
    final result = Completer<CharacterPage>();
    calls.add((page: page, name: name, result: result));
    return result.future;
  }

  @override
  Future<Character> getCharacter(int id) async => rick;
}

void main() {
  testWidgets('stale failure cannot replace a newer successful search', (
    tester,
  ) async {
    final repository = FakeRepository();
    final cubit = CharactersCubit(repository: repository);
    addTearDown(cubit.close);
    final oldRequest = cubit.loadNext();
    cubit.search('Rick');
    await tester.pump(const Duration(milliseconds: 351));
    repository.calls.last.result.complete(
      CharacterPage(characters: [rick], nextPage: null, totalCount: 1),
    );
    await tester.pump();
    repository.calls.first.result.completeError(
      Exception('old network failure'),
    );
    await oldRequest;
    expect(cubit.state.characters, [rick]);
    expect(cubit.state.query, 'Rick');
    expect(cubit.state.totalCount, 1);
    expect(cubit.state.error, isNull);
  });
  test(
    'pagination guards duplicate requests, appends and stops at last page',
    () async {
      final repository = FakeRepository();
      final cubit = CharactersCubit(repository: repository);
      addTearDown(cubit.close);
      final first = cubit.loadNext();
      await cubit.loadNext();
      expect(repository.calls.length, 1);
      repository.calls[0].result.complete(
        CharacterPage(characters: [rick], nextPage: 2),
      );
      await first;
      final second = cubit.loadNext();
      expect(repository.calls.last.page, 2);
      repository.calls.last.result.complete(
        CharacterPage(characters: [rick], nextPage: null),
      );
      await second;
      await cubit.loadNext();
      expect(repository.calls.length, 2);
      expect(cubit.state.characters.length, 2);
    },
  );

  test(
    'failed pagination retains content and retries the failed page',
    () async {
      final repository = FakeRepository();
      final cubit = CharactersCubit(repository: repository);
      addTearDown(cubit.close);
      final first = cubit.loadNext();
      repository.calls.last.result.complete(
        CharacterPage(characters: [rick], nextPage: 2),
      );
      await first;
      final second = cubit.loadNext();
      repository.calls.last.result.completeError(Exception('offline'));
      await second;
      expect(cubit.state.characters, [rick]);
      expect(cubit.state.error, isNotNull);
      final retry = cubit.loadNext();
      expect(repository.calls.last.page, 2);
      repository.calls.last.result.complete(
        CharacterPage(characters: [], nextPage: null),
      );
      await retry;
      expect(cubit.state.error, isNull);
    },
  );

  testWidgets(
    'new search ignores old response; whitespace does not cancel debounce',
    (tester) async {
      final repository = FakeRepository();
      final cubit = CharactersCubit(repository: repository);
      addTearDown(cubit.close);
      final initial = cubit.loadNext();
      cubit.search('Morty');
      cubit.search('Morty ');
      await tester.pump(const Duration(milliseconds: 351));
      expect(repository.calls.last.name, 'Morty');
      repository.calls.first.result.complete(
        CharacterPage(characters: [rick], nextPage: 2),
      );
      await initial;
      expect(cubit.state.characters, isEmpty);
      repository.calls.last.result.complete(
        CharacterPage(characters: [], nextPage: null),
      );
      await tester.pump();
      expect(cubit.state.query, 'Morty');
      expect(cubit.state.loading, isFalse);
      expect(cubit.state.nextPage, isNull);
    },
  );
}
