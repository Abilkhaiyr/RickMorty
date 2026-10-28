import '../models/character.dart';
import 'character_remote_ds.dart';

abstract interface class ICharacterRepository {
  Future<CharacterPage> getCharacters({required int page, String name = ''});
  Future<Character> getCharacter(int id);
}

final class CharacterRepositoryImpl implements ICharacterRepository {
  const CharacterRepositoryImpl({required ICharacterRemoteDS remoteDS})
    : _remoteDS = remoteDS;
  final ICharacterRemoteDS _remoteDS;
  @override
  Future<CharacterPage> getCharacters({required int page, String name = ''}) =>
      _remoteDS.getCharacters(page: page, name: name);
  @override
  Future<Character> getCharacter(int id) => _remoteDS.getCharacter(id);
}
