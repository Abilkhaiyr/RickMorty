// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CharacterDetailState {

 Character? get character; bool get loading; String? get error;
/// Create a copy of CharacterDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterDetailStateCopyWith<CharacterDetailState> get copyWith => _$CharacterDetailStateCopyWithImpl<CharacterDetailState>(this as CharacterDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterDetailState&&(identical(other.character, character) || other.character == character)&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,character,loading,error);

@override
String toString() {
  return 'CharacterDetailState(character: $character, loading: $loading, error: $error)';
}


}

/// @nodoc
abstract mixin class $CharacterDetailStateCopyWith<$Res>  {
  factory $CharacterDetailStateCopyWith(CharacterDetailState value, $Res Function(CharacterDetailState) _then) = _$CharacterDetailStateCopyWithImpl;
@useResult
$Res call({
 Character? character, bool loading, String? error
});


$CharacterCopyWith<$Res>? get character;

}
/// @nodoc
class _$CharacterDetailStateCopyWithImpl<$Res>
    implements $CharacterDetailStateCopyWith<$Res> {
  _$CharacterDetailStateCopyWithImpl(this._self, this._then);

  final CharacterDetailState _self;
  final $Res Function(CharacterDetailState) _then;

/// Create a copy of CharacterDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? character = freezed,Object? loading = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
character: freezed == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as Character?,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CharacterDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterCopyWith<$Res>? get character {
    if (_self.character == null) {
    return null;
  }

  return $CharacterCopyWith<$Res>(_self.character!, (value) {
    return _then(_self.copyWith(character: value));
  });
}
}


/// Adds pattern-matching-related methods to [CharacterDetailState].
extension CharacterDetailStatePatterns on CharacterDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CharacterDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CharacterDetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CharacterDetailState value)  $default,){
final _that = this;
switch (_that) {
case _CharacterDetailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CharacterDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _CharacterDetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Character? character,  bool loading,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CharacterDetailState() when $default != null:
return $default(_that.character,_that.loading,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Character? character,  bool loading,  String? error)  $default,) {final _that = this;
switch (_that) {
case _CharacterDetailState():
return $default(_that.character,_that.loading,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Character? character,  bool loading,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _CharacterDetailState() when $default != null:
return $default(_that.character,_that.loading,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _CharacterDetailState implements CharacterDetailState {
  const _CharacterDetailState({this.character, this.loading = false, this.error});
  

@override final  Character? character;
@override@JsonKey() final  bool loading;
@override final  String? error;

/// Create a copy of CharacterDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterDetailStateCopyWith<_CharacterDetailState> get copyWith => __$CharacterDetailStateCopyWithImpl<_CharacterDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterDetailState&&(identical(other.character, character) || other.character == character)&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,character,loading,error);

@override
String toString() {
  return 'CharacterDetailState(character: $character, loading: $loading, error: $error)';
}


}

/// @nodoc
abstract mixin class _$CharacterDetailStateCopyWith<$Res> implements $CharacterDetailStateCopyWith<$Res> {
  factory _$CharacterDetailStateCopyWith(_CharacterDetailState value, $Res Function(_CharacterDetailState) _then) = __$CharacterDetailStateCopyWithImpl;
@override @useResult
$Res call({
 Character? character, bool loading, String? error
});


@override $CharacterCopyWith<$Res>? get character;

}
/// @nodoc
class __$CharacterDetailStateCopyWithImpl<$Res>
    implements _$CharacterDetailStateCopyWith<$Res> {
  __$CharacterDetailStateCopyWithImpl(this._self, this._then);

  final _CharacterDetailState _self;
  final $Res Function(_CharacterDetailState) _then;

/// Create a copy of CharacterDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? character = freezed,Object? loading = null,Object? error = freezed,}) {
  return _then(_CharacterDetailState(
character: freezed == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as Character?,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CharacterDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterCopyWith<$Res>? get character {
    if (_self.character == null) {
    return null;
  }

  return $CharacterCopyWith<$Res>(_self.character!, (value) {
    return _then(_self.copyWith(character: value));
  });
}
}

// dart format on
