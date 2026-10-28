// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_restart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppRestartEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppRestartEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppRestartEvent()';
}


}

/// @nodoc
class $AppRestartEventCopyWith<$Res>  {
$AppRestartEventCopyWith(AppRestartEvent _, $Res Function(AppRestartEvent) __);
}


/// Adds pattern-matching-related methods to [AppRestartEvent].
extension AppRestartEventPatterns on AppRestartEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _RestartAppEvent value)?  restartApp,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RestartAppEvent() when restartApp != null:
return restartApp(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _RestartAppEvent value)  restartApp,}){
final _that = this;
switch (_that) {
case _RestartAppEvent():
return restartApp(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _RestartAppEvent value)?  restartApp,}){
final _that = this;
switch (_that) {
case _RestartAppEvent() when restartApp != null:
return restartApp(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  restartApp,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RestartAppEvent() when restartApp != null:
return restartApp();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  restartApp,}) {final _that = this;
switch (_that) {
case _RestartAppEvent():
return restartApp();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  restartApp,}) {final _that = this;
switch (_that) {
case _RestartAppEvent() when restartApp != null:
return restartApp();case _:
  return null;

}
}

}

/// @nodoc


class _RestartAppEvent implements AppRestartEvent {
  const _RestartAppEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestartAppEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppRestartEvent.restartApp()';
}


}




/// @nodoc
mixin _$AppRestartState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppRestartState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppRestartState()';
}


}

/// @nodoc
class $AppRestartStateCopyWith<$Res>  {
$AppRestartStateCopyWith(AppRestartState _, $Res Function(AppRestartState) __);
}


/// Adds pattern-matching-related methods to [AppRestartState].
extension AppRestartStatePatterns on AppRestartState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadingAppRestartState value)?  loading,TResult Function( _LoadedAppRestartState value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadingAppRestartState() when loading != null:
return loading(_that);case _LoadedAppRestartState() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadingAppRestartState value)  loading,required TResult Function( _LoadedAppRestartState value)  loaded,}){
final _that = this;
switch (_that) {
case _LoadingAppRestartState():
return loading(_that);case _LoadedAppRestartState():
return loaded(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadingAppRestartState value)?  loading,TResult? Function( _LoadedAppRestartState value)?  loaded,}){
final _that = this;
switch (_that) {
case _LoadingAppRestartState() when loading != null:
return loading(_that);case _LoadedAppRestartState() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( Key key)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadingAppRestartState() when loading != null:
return loading();case _LoadedAppRestartState() when loaded != null:
return loaded(_that.key);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( Key key)  loaded,}) {final _that = this;
switch (_that) {
case _LoadingAppRestartState():
return loading();case _LoadedAppRestartState():
return loaded(_that.key);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( Key key)?  loaded,}) {final _that = this;
switch (_that) {
case _LoadingAppRestartState() when loading != null:
return loading();case _LoadedAppRestartState() when loaded != null:
return loaded(_that.key);case _:
  return null;

}
}

}

/// @nodoc


class _LoadingAppRestartState implements AppRestartState {
  const _LoadingAppRestartState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingAppRestartState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppRestartState.loading()';
}


}




/// @nodoc


class _LoadedAppRestartState implements AppRestartState {
  const _LoadedAppRestartState({required this.key});
  

 final  Key key;

/// Create a copy of AppRestartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedAppRestartStateCopyWith<_LoadedAppRestartState> get copyWith => __$LoadedAppRestartStateCopyWithImpl<_LoadedAppRestartState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedAppRestartState&&(identical(other.key, key) || other.key == key));
}


@override
int get hashCode => Object.hash(runtimeType,key);

@override
String toString() {
  return 'AppRestartState.loaded(key: $key)';
}


}

/// @nodoc
abstract mixin class _$LoadedAppRestartStateCopyWith<$Res> implements $AppRestartStateCopyWith<$Res> {
  factory _$LoadedAppRestartStateCopyWith(_LoadedAppRestartState value, $Res Function(_LoadedAppRestartState) _then) = __$LoadedAppRestartStateCopyWithImpl;
@useResult
$Res call({
 Key key
});




}
/// @nodoc
class __$LoadedAppRestartStateCopyWithImpl<$Res>
    implements _$LoadedAppRestartStateCopyWith<$Res> {
  __$LoadedAppRestartStateCopyWithImpl(this._self, this._then);

  final _LoadedAppRestartState _self;
  final $Res Function(_LoadedAppRestartState) _then;

/// Create a copy of AppRestartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? key = null,}) {
  return _then(_LoadedAppRestartState(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as Key,
  ));
}


}

// dart format on
