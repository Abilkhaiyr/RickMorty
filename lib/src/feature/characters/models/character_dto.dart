import 'package:freezed_annotation/freezed_annotation.dart';
import 'character.dart';

part 'character_dto.freezed.dart';
part 'character_dto.g.dart';

/// Transport mapping stays outside the domain model.
@freezed
abstract class CharacterDTO with _$CharacterDTO {
  const CharacterDTO._();

  const factory CharacterDTO({
    required int id,
    required String name,
    required String status,
    required String species,
    required String image,
    required CharacterLocationDTO origin,
    required CharacterLocationDTO location,
  }) = _CharacterDTO;

  factory CharacterDTO.fromJson(Map<String, dynamic> json) =>
      _$CharacterDTOFromJson(json);

  Character toDomain() => Character(
    id: id,
    name: name,
    status: status,
    species: species,
    image: image,
    origin: origin.name,
    location: location.name,
  );
}

@freezed
abstract class CharacterLocationDTO with _$CharacterLocationDTO {
  const factory CharacterLocationDTO({required String name}) =
      _CharacterLocationDTO;

  factory CharacterLocationDTO.fromJson(Map<String, dynamic> json) =>
      _$CharacterLocationDTOFromJson(json);
}
