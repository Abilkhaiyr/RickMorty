// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppTheme {

 ThemeMode get themeMode; Color get seed;
/// Create a copy of AppTheme
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppThemeCopyWith<AppTheme> get copyWith => _$AppThemeCopyWithImpl<AppTheme>(this as AppTheme, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppTheme&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode)&&(identical(other.seed, seed) || other.seed == seed));
}


@override
int get hashCode => Object.hash(runtimeType,themeMode,seed);

@override
String toString() {
  return 'AppTheme(themeMode: $themeMode, seed: $seed)';
}


}

/// @nodoc
abstract mixin class $AppThemeCopyWith<$Res>  {
  factory $AppThemeCopyWith(AppTheme value, $Res Function(AppTheme) _then) = _$AppThemeCopyWithImpl;
@useResult
$Res call({
 ThemeMode themeMode, Color seed
});




}
/// @nodoc
class _$AppThemeCopyWithImpl<$Res>
    implements $AppThemeCopyWith<$Res> {
  _$AppThemeCopyWithImpl(this._self, this._then);

  final AppTheme _self;
  final $Res Function(AppTheme) _then;

/// Create a copy of AppTheme
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? themeMode = null,Object? seed = null,}) {
  return _then(_self.copyWith(
themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as ThemeMode,seed: null == seed ? _self.seed : seed // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}

}


/// Adds pattern-matching-related methods to [AppTheme].
extension AppThemePatterns on AppTheme {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppTheme value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppTheme() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppTheme value)  $default,){
final _that = this;
switch (_that) {
case _AppTheme():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppTheme value)?  $default,){
final _that = this;
switch (_that) {
case _AppTheme() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ThemeMode themeMode,  Color seed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppTheme() when $default != null:
return $default(_that.themeMode,_that.seed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ThemeMode themeMode,  Color seed)  $default,) {final _that = this;
switch (_that) {
case _AppTheme():
return $default(_that.themeMode,_that.seed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ThemeMode themeMode,  Color seed)?  $default,) {final _that = this;
switch (_that) {
case _AppTheme() when $default != null:
return $default(_that.themeMode,_that.seed);case _:
  return null;

}
}

}

/// @nodoc


class _AppTheme extends AppTheme {
  const _AppTheme({required this.themeMode, required this.seed}): super._();
  

@override final  ThemeMode themeMode;
@override final  Color seed;

/// Create a copy of AppTheme
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppThemeCopyWith<_AppTheme> get copyWith => __$AppThemeCopyWithImpl<_AppTheme>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppTheme&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode)&&(identical(other.seed, seed) || other.seed == seed));
}


@override
int get hashCode => Object.hash(runtimeType,themeMode,seed);

@override
String toString() {
  return 'AppTheme(themeMode: $themeMode, seed: $seed)';
}


}

/// @nodoc
abstract mixin class _$AppThemeCopyWith<$Res> implements $AppThemeCopyWith<$Res> {
  factory _$AppThemeCopyWith(_AppTheme value, $Res Function(_AppTheme) _then) = __$AppThemeCopyWithImpl;
@override @useResult
$Res call({
 ThemeMode themeMode, Color seed
});




}
/// @nodoc
class __$AppThemeCopyWithImpl<$Res>
    implements _$AppThemeCopyWith<$Res> {
  __$AppThemeCopyWithImpl(this._self, this._then);

  final _AppTheme _self;
  final $Res Function(_AppTheme) _then;

/// Create a copy of AppTheme
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? themeMode = null,Object? seed = null,}) {
  return _then(_AppTheme(
themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as ThemeMode,seed: null == seed ? _self.seed : seed // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}


}

// dart format on
