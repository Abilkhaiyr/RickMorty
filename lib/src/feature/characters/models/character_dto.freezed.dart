// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CharacterDTO {

 int get id; String get name; String get status; String get species; String get image; CharacterLocationDTO get origin; CharacterLocationDTO get location;
/// Create a copy of CharacterDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterDTOCopyWith<CharacterDTO> get copyWith => _$CharacterDTOCopyWithImpl<CharacterDTO>(this as CharacterDTO, _$identity);

  /// Serializes this CharacterDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.species, species) || other.species == species)&&(identical(other.image, image) || other.image == image)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,species,image,origin,location);

@override
String toString() {
  return 'CharacterDTO(id: $id, name: $name, status: $status, species: $species, image: $image, origin: $origin, location: $location)';
}


}

/// @nodoc
abstract mixin class $CharacterDTOCopyWith<$Res>  {
  factory $CharacterDTOCopyWith(CharacterDTO value, $Res Function(CharacterDTO) _then) = _$CharacterDTOCopyWithImpl;
@useResult
$Res call({
 int id, String name, String status, String species, String image, CharacterLocationDTO origin, CharacterLocationDTO location
});


$CharacterLocationDTOCopyWith<$Res> get origin;$CharacterLocationDTOCopyWith<$Res> get location;

}
/// @nodoc
class _$CharacterDTOCopyWithImpl<$Res>
    implements $CharacterDTOCopyWith<$Res> {
  _$CharacterDTOCopyWithImpl(this._self, this._then);

  final CharacterDTO _self;
  final $Res Function(CharacterDTO) _then;

/// Create a copy of CharacterDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? status = null,Object? species = null,Object? image = null,Object? origin = null,Object? location = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as CharacterLocationDTO,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as CharacterLocationDTO,
  ));
}
/// Create a copy of CharacterDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterLocationDTOCopyWith<$Res> get origin {
  
  return $CharacterLocationDTOCopyWith<$Res>(_self.origin, (value) {
    return _then(_self.copyWith(origin: value));
  });
}/// Create a copy of CharacterDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterLocationDTOCopyWith<$Res> get location {
  
  return $CharacterLocationDTOCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// Adds pattern-matching-related methods to [CharacterDTO].
extension CharacterDTOPatterns on CharacterDTO {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CharacterDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CharacterDTO() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CharacterDTO value)  $default,){
final _that = this;
switch (_that) {
case _CharacterDTO():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CharacterDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CharacterDTO() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String status,  String species,  String image,  CharacterLocationDTO origin,  CharacterLocationDTO location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CharacterDTO() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.species,_that.image,_that.origin,_that.location);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String status,  String species,  String image,  CharacterLocationDTO origin,  CharacterLocationDTO location)  $default,) {final _that = this;
switch (_that) {
case _CharacterDTO():
return $default(_that.id,_that.name,_that.status,_that.species,_that.image,_that.origin,_that.location);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String status,  String species,  String image,  CharacterLocationDTO origin,  CharacterLocationDTO location)?  $default,) {final _that = this;
switch (_that) {
case _CharacterDTO() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.species,_that.image,_that.origin,_that.location);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CharacterDTO extends CharacterDTO {
  const _CharacterDTO({required this.id, required this.name, required this.status, required this.species, required this.image, required this.origin, required this.location}): super._();
  factory _CharacterDTO.fromJson(Map<String, dynamic> json) => _$CharacterDTOFromJson(json);

@override final  int id;
@override final  String name;
@override final  String status;
@override final  String species;
@override final  String image;
@override final  CharacterLocationDTO origin;
@override final  CharacterLocationDTO location;

/// Create a copy of CharacterDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterDTOCopyWith<_CharacterDTO> get copyWith => __$CharacterDTOCopyWithImpl<_CharacterDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CharacterDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.species, species) || other.species == species)&&(identical(other.image, image) || other.image == image)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,species,image,origin,location);

@override
String toString() {
  return 'CharacterDTO(id: $id, name: $name, status: $status, species: $species, image: $image, origin: $origin, location: $location)';
}


}

/// @nodoc
abstract mixin class _$CharacterDTOCopyWith<$Res> implements $CharacterDTOCopyWith<$Res> {
  factory _$CharacterDTOCopyWith(_CharacterDTO value, $Res Function(_CharacterDTO) _then) = __$CharacterDTOCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String status, String species, String image, CharacterLocationDTO origin, CharacterLocationDTO location
});


@override $CharacterLocationDTOCopyWith<$Res> get origin;@override $CharacterLocationDTOCopyWith<$Res> get location;

}
/// @nodoc
class __$CharacterDTOCopyWithImpl<$Res>
    implements _$CharacterDTOCopyWith<$Res> {
  __$CharacterDTOCopyWithImpl(this._self, this._then);

  final _CharacterDTO _self;
  final $Res Function(_CharacterDTO) _then;

/// Create a copy of CharacterDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? status = null,Object? species = null,Object? image = null,Object? origin = null,Object? location = null,}) {
  return _then(_CharacterDTO(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as CharacterLocationDTO,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as CharacterLocationDTO,
  ));
}

/// Create a copy of CharacterDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterLocationDTOCopyWith<$Res> get origin {
  
  return $CharacterLocationDTOCopyWith<$Res>(_self.origin, (value) {
    return _then(_self.copyWith(origin: value));
  });
}/// Create a copy of CharacterDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterLocationDTOCopyWith<$Res> get location {
  
  return $CharacterLocationDTOCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// @nodoc
mixin _$CharacterLocationDTO {

 String get name;
/// Create a copy of CharacterLocationDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterLocationDTOCopyWith<CharacterLocationDTO> get copyWith => _$CharacterLocationDTOCopyWithImpl<CharacterLocationDTO>(this as CharacterLocationDTO, _$identity);

  /// Serializes this CharacterLocationDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterLocationDTO&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'CharacterLocationDTO(name: $name)';
}


}

/// @nodoc
abstract mixin class $CharacterLocationDTOCopyWith<$Res>  {
  factory $CharacterLocationDTOCopyWith(CharacterLocationDTO value, $Res Function(CharacterLocationDTO) _then) = _$CharacterLocationDTOCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$CharacterLocationDTOCopyWithImpl<$Res>
    implements $CharacterLocationDTOCopyWith<$Res> {
  _$CharacterLocationDTOCopyWithImpl(this._self, this._then);

  final CharacterLocationDTO _self;
  final $Res Function(CharacterLocationDTO) _then;

/// Create a copy of CharacterLocationDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CharacterLocationDTO].
extension CharacterLocationDTOPatterns on CharacterLocationDTO {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CharacterLocationDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CharacterLocationDTO() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CharacterLocationDTO value)  $default,){
final _that = this;
switch (_that) {
case _CharacterLocationDTO():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CharacterLocationDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CharacterLocationDTO() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CharacterLocationDTO() when $default != null:
return $default(_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name)  $default,) {final _that = this;
switch (_that) {
case _CharacterLocationDTO():
return $default(_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name)?  $default,) {final _that = this;
switch (_that) {
case _CharacterLocationDTO() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CharacterLocationDTO implements CharacterLocationDTO {
  const _CharacterLocationDTO({required this.name});
  factory _CharacterLocationDTO.fromJson(Map<String, dynamic> json) => _$CharacterLocationDTOFromJson(json);

@override final  String name;

/// Create a copy of CharacterLocationDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterLocationDTOCopyWith<_CharacterLocationDTO> get copyWith => __$CharacterLocationDTOCopyWithImpl<_CharacterLocationDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CharacterLocationDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterLocationDTO&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'CharacterLocationDTO(name: $name)';
}


}

/// @nodoc
abstract mixin class _$CharacterLocationDTOCopyWith<$Res> implements $CharacterLocationDTOCopyWith<$Res> {
  factory _$CharacterLocationDTOCopyWith(_CharacterLocationDTO value, $Res Function(_CharacterLocationDTO) _then) = __$CharacterLocationDTOCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$CharacterLocationDTOCopyWithImpl<$Res>
    implements _$CharacterLocationDTOCopyWith<$Res> {
  __$CharacterLocationDTOCopyWithImpl(this._self, this._then);

  final _CharacterLocationDTO _self;
  final $Res Function(_CharacterLocationDTO) _then;

/// Create a copy of CharacterLocationDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_CharacterLocationDTO(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
