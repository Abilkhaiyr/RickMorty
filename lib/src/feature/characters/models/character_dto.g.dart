// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CharacterDTO _$CharacterDTOFromJson(Map<String, dynamic> json) =>
    _CharacterDTO(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      status: json['status'] as String,
      species: json['species'] as String,
      image: json['image'] as String,
      origin: CharacterLocationDTO.fromJson(
        json['origin'] as Map<String, dynamic>,
      ),
      location: CharacterLocationDTO.fromJson(
        json['location'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$CharacterDTOToJson(_CharacterDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'image': instance.image,
      'origin': instance.origin,
      'location': instance.location,
    };

_CharacterLocationDTO _$CharacterLocationDTOFromJson(
  Map<String, dynamic> json,
) => _CharacterLocationDTO(name: json['name'] as String);

Map<String, dynamic> _$CharacterLocationDTOToJson(
  _CharacterLocationDTO instance,
) => <String, dynamic>{'name': instance.name};
