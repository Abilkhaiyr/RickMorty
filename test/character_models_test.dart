import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:rick_morty/src/feature/characters/models/character.dart';
import 'package:rick_morty/src/feature/characters/models/character_dto.dart';

void main() {
  test(
    'generated DTO JSON round trip preserves nested locations and domain mapping',
    () {
      const dto = CharacterDTO(
        id: 1,
        name: 'Rick Sanchez',
        status: 'Alive',
        species: 'Human',
        image: 'https://example.com/rick.png',
        origin: CharacterLocationDTO(name: 'Earth'),
        location: CharacterLocationDTO(name: 'Citadel'),
      );
      final decoded = CharacterDTO.fromJson(
        jsonDecode(jsonEncode(dto.toJson())) as Map<String, dynamic>,
      );
      expect(decoded, dto);
      expect(decoded.toDomain().origin, 'Earth');
      expect(decoded.toDomain().location, 'Citadel');
      expect(decoded.copyWith(name: 'Morty').name, 'Morty');
      expect(decoded.name, 'Rick Sanchez');
    },
  );

  test(
    'Freezed page exposes an unmodifiable character list and supports copyWith',
    () {
      const character = Character(
        id: 1,
        name: 'Rick',
        status: 'Alive',
        species: 'Human',
        image: '',
        origin: 'Earth',
        location: 'Citadel',
      );
      final page = CharacterPage(characters: [character], nextPage: 2);
      expect(() => page.characters.add(character), throwsUnsupportedError);
      expect(page.copyWith(nextPage: null).nextPage, isNull);
      expect(page.nextPage, 2);
      expect(character.copyWith(status: 'Dead').status, 'Dead');
      expect(character.status, 'Alive');
    },
  );
}
