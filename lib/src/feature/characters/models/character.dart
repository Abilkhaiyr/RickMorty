import 'package:freezed_annotation/freezed_annotation.dart';

part 'character.freezed.dart';

@freezed
abstract class Character with _$Character {
  const factory Character({
    required int id,
    required String name,
    required String status,
    required String species,
    required String image,
    required String origin,
    required String location,
  }) = _Character;
}

@freezed
abstract class CharacterPage with _$CharacterPage {
  const factory CharacterPage({
    required List<Character> characters,
    required int? nextPage,
    @Default(0) int totalCount,
  }) = _CharacterPage;
}
