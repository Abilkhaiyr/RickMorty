// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CharactersState {

 List<Character> get characters; String get query; bool get loading; int? get nextPage; int get totalCount; String? get error;
/// Create a copy of CharactersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharactersStateCopyWith<CharactersState> get copyWith => _$CharactersStateCopyWithImpl<CharactersState>(this as CharactersState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharactersState&&const DeepCollectionEquality().equals(other.characters, characters)&&(identical(other.query, query) || other.query == query)&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.nextPage, nextPage) || other.nextPage == nextPage)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(characters),query,loading,nextPage,totalCount,error);

@override
String toString() {
  return 'CharactersState(characters: $characters, query: $query, loading: $loading, nextPage: $nextPage, totalCount: $totalCount, error: $error)';
}


}

/// @nodoc
abstract mixin class $CharactersStateCopyWith<$Res>  {
  factory $CharactersStateCopyWith(CharactersState value, $Res Function(CharactersState) _then) = _$CharactersStateCopyWithImpl;
@useResult
$Res call({
 List<Character> characters, String query, bool loading, int? nextPage, int totalCount, String? error
});




}
/// @nodoc
class _$CharactersStateCopyWithImpl<$Res>
    implements $CharactersStateCopyWith<$Res> {
  _$CharactersStateCopyWithImpl(this._self, this._then);

  final CharactersState _self;
  final $Res Function(CharactersState) _then;

/// Create a copy of CharactersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? characters = null,Object? query = null,Object? loading = null,Object? nextPage = freezed,Object? totalCount = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
characters: null == characters ? _self.characters : characters // ignore: cast_nullable_to_non_nullable
as List<Character>,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,nextPage: freezed == nextPage ? _self.nextPage : nextPage // ignore: cast_nullable_to_non_nullable
as int?,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CharactersState].
extension CharactersStatePatterns on CharactersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CharactersState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CharactersState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CharactersState value)  $default,){
final _that = this;
switch (_that) {
case _CharactersState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CharactersState value)?  $default,){
final _that = this;
switch (_that) {
case _CharactersState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Character> characters,  String query,  bool loading,  int? nextPage,  int totalCount,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CharactersState() when $default != null:
return $default(_that.characters,_that.query,_that.loading,_that.nextPage,_that.totalCount,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Character> characters,  String query,  bool loading,  int? nextPage,  int totalCount,  String? error)  $default,) {final _that = this;
switch (_that) {
case _CharactersState():
return $default(_that.characters,_that.query,_that.loading,_that.nextPage,_that.totalCount,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Character> characters,  String query,  bool loading,  int? nextPage,  int totalCount,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _CharactersState() when $default != null:
return $default(_that.characters,_that.query,_that.loading,_that.nextPage,_that.totalCount,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _CharactersState implements CharactersState {
  const _CharactersState({final  List<Character> characters = const [], this.query = '', this.loading = false, this.nextPage = 1, this.totalCount = 0, this.error}): _characters = characters;
  

 final  List<Character> _characters;
@override@JsonKey() List<Character> get characters {
  if (_characters is EqualUnmodifiableListView) return _characters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_characters);
}

@override@JsonKey() final  String query;
@override@JsonKey() final  bool loading;
@override@JsonKey() final  int? nextPage;
@override@JsonKey() final  int totalCount;
@override final  String? error;

/// Create a copy of CharactersState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharactersStateCopyWith<_CharactersState> get copyWith => __$CharactersStateCopyWithImpl<_CharactersState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharactersState&&const DeepCollectionEquality().equals(other._characters, _characters)&&(identical(other.query, query) || other.query == query)&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.nextPage, nextPage) || other.nextPage == nextPage)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_characters),query,loading,nextPage,totalCount,error);

@override
String toString() {
  return 'CharactersState(characters: $characters, query: $query, loading: $loading, nextPage: $nextPage, totalCount: $totalCount, error: $error)';
}


}

/// @nodoc
abstract mixin class _$CharactersStateCopyWith<$Res> implements $CharactersStateCopyWith<$Res> {
  factory _$CharactersStateCopyWith(_CharactersState value, $Res Function(_CharactersState) _then) = __$CharactersStateCopyWithImpl;
@override @useResult
$Res call({
 List<Character> characters, String query, bool loading, int? nextPage, int totalCount, String? error
});




}
/// @nodoc
class __$CharactersStateCopyWithImpl<$Res>
    implements _$CharactersStateCopyWith<$Res> {
  __$CharactersStateCopyWithImpl(this._self, this._then);

  final _CharactersState _self;
  final $Res Function(_CharactersState) _then;

/// Create a copy of CharactersState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? characters = null,Object? query = null,Object? loading = null,Object? nextPage = freezed,Object? totalCount = null,Object? error = freezed,}) {
  return _then(_CharactersState(
characters: null == characters ? _self._characters : characters // ignore: cast_nullable_to_non_nullable
as List<Character>,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,nextPage: freezed == nextPage ? _self.nextPage : nextPage // ignore: cast_nullable_to_non_nullable
as int?,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
