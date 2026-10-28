// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppEvent()';
}


}

/// @nodoc
class $AppEventCopyWith<$Res>  {
$AppEventCopyWith(AppEvent _, $Res Function(AppEvent) __);
}


/// Adds pattern-matching-related methods to [AppEvent].
extension AppEventPatterns on AppEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _StartAppEvent value)?  start,TResult Function( _ChangeStateEvent value)?  changeState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StartAppEvent() when start != null:
return start(_that);case _ChangeStateEvent() when changeState != null:
return changeState(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _StartAppEvent value)  start,required TResult Function( _ChangeStateEvent value)  changeState,}){
final _that = this;
switch (_that) {
case _StartAppEvent():
return start(_that);case _ChangeStateEvent():
return changeState(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _StartAppEvent value)?  start,TResult? Function( _ChangeStateEvent value)?  changeState,}){
final _that = this;
switch (_that) {
case _StartAppEvent() when start != null:
return start(_that);case _ChangeStateEvent() when changeState != null:
return changeState(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  start,TResult Function( AppState state)?  changeState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StartAppEvent() when start != null:
return start();case _ChangeStateEvent() when changeState != null:
return changeState(_that.state);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  start,required TResult Function( AppState state)  changeState,}) {final _that = this;
switch (_that) {
case _StartAppEvent():
return start();case _ChangeStateEvent():
return changeState(_that.state);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  start,TResult? Function( AppState state)?  changeState,}) {final _that = this;
switch (_that) {
case _StartAppEvent() when start != null:
return start();case _ChangeStateEvent() when changeState != null:
return changeState(_that.state);case _:
  return null;

}
}

}

/// @nodoc


class _StartAppEvent implements AppEvent {
  const _StartAppEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartAppEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppEvent.start()';
}


}




/// @nodoc


class _ChangeStateEvent implements AppEvent {
  const _ChangeStateEvent({required this.state});
  

 final  AppState state;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeStateEventCopyWith<_ChangeStateEvent> get copyWith => __$ChangeStateEventCopyWithImpl<_ChangeStateEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeStateEvent&&(identical(other.state, state) || other.state == state));
}


@override
int get hashCode => Object.hash(runtimeType,state);

@override
String toString() {
  return 'AppEvent.changeState(state: $state)';
}


}

/// @nodoc
abstract mixin class _$ChangeStateEventCopyWith<$Res> implements $AppEventCopyWith<$Res> {
  factory _$ChangeStateEventCopyWith(_ChangeStateEvent value, $Res Function(_ChangeStateEvent) _then) = __$ChangeStateEventCopyWithImpl;
@useResult
$Res call({
 AppState state
});


$AppStateCopyWith<$Res> get state;

}
/// @nodoc
class __$ChangeStateEventCopyWithImpl<$Res>
    implements _$ChangeStateEventCopyWith<$Res> {
  __$ChangeStateEventCopyWithImpl(this._self, this._then);

  final _ChangeStateEvent _self;
  final $Res Function(_ChangeStateEvent) _then;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? state = null,}) {
  return _then(_ChangeStateEvent(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as AppState,
  ));
}

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppStateCopyWith<$Res> get state {
  
  return $AppStateCopyWith<$Res>(_self.state, (value) {
    return _then(_self.copyWith(state: value));
  });
}
}

/// @nodoc
mixin _$AppState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppState()';
}


}

/// @nodoc
class $AppStateCopyWith<$Res>  {
$AppStateCopyWith(AppState _, $Res Function(AppState) __);
}


/// Adds pattern-matching-related methods to [AppState].
extension AppStatePatterns on AppState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadingAppState value)?  loading,TResult Function( _InAppState value)?  inApp,TResult Function( _ErrorAppState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadingAppState() when loading != null:
return loading(_that);case _InAppState() when inApp != null:
return inApp(_that);case _ErrorAppState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadingAppState value)  loading,required TResult Function( _InAppState value)  inApp,required TResult Function( _ErrorAppState value)  error,}){
final _that = this;
switch (_that) {
case _LoadingAppState():
return loading(_that);case _InAppState():
return inApp(_that);case _ErrorAppState():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadingAppState value)?  loading,TResult? Function( _InAppState value)?  inApp,TResult? Function( _ErrorAppState value)?  error,}){
final _that = this;
switch (_that) {
case _LoadingAppState() when loading != null:
return loading(_that);case _InAppState() when inApp != null:
return inApp(_that);case _ErrorAppState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  inApp,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadingAppState() when loading != null:
return loading();case _InAppState() when inApp != null:
return inApp();case _ErrorAppState() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  inApp,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _LoadingAppState():
return loading();case _InAppState():
return inApp();case _ErrorAppState():
return error(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  inApp,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _LoadingAppState() when loading != null:
return loading();case _InAppState() when inApp != null:
return inApp();case _ErrorAppState() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _LoadingAppState implements AppState {
  const _LoadingAppState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingAppState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppState.loading()';
}


}




/// @nodoc


class _InAppState implements AppState {
  const _InAppState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InAppState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppState.inApp()';
}


}




/// @nodoc


class _ErrorAppState implements AppState {
  const _ErrorAppState({required this.message});
  

 final  String message;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorAppStateCopyWith<_ErrorAppState> get copyWith => __$ErrorAppStateCopyWithImpl<_ErrorAppState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorAppState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorAppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$ErrorAppStateCopyWith(_ErrorAppState value, $Res Function(_ErrorAppState) _then) = __$ErrorAppStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorAppStateCopyWithImpl<$Res>
    implements _$ErrorAppStateCopyWith<$Res> {
  __$ErrorAppStateCopyWithImpl(this._self, this._then);

  final _ErrorAppState _self;
  final $Res Function(_ErrorAppState) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorAppState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
