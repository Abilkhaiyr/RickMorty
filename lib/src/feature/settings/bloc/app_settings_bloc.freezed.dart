// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppSettingsEvent {

 AppSettings get appSettings;
/// Create a copy of AppSettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppSettingsEventCopyWith<AppSettingsEvent> get copyWith => _$AppSettingsEventCopyWithImpl<AppSettingsEvent>(this as AppSettingsEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppSettingsEvent&&(identical(other.appSettings, appSettings) || other.appSettings == appSettings));
}


@override
int get hashCode => Object.hash(runtimeType,appSettings);

@override
String toString() {
  return 'AppSettingsEvent(appSettings: $appSettings)';
}


}

/// @nodoc
abstract mixin class $AppSettingsEventCopyWith<$Res>  {
  factory $AppSettingsEventCopyWith(AppSettingsEvent value, $Res Function(AppSettingsEvent) _then) = _$AppSettingsEventCopyWithImpl;
@useResult
$Res call({
 AppSettings appSettings
});


$AppSettingsCopyWith<$Res> get appSettings;

}
/// @nodoc
class _$AppSettingsEventCopyWithImpl<$Res>
    implements $AppSettingsEventCopyWith<$Res> {
  _$AppSettingsEventCopyWithImpl(this._self, this._then);

  final AppSettingsEvent _self;
  final $Res Function(AppSettingsEvent) _then;

/// Create a copy of AppSettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appSettings = null,}) {
  return _then(_self.copyWith(
appSettings: null == appSettings ? _self.appSettings : appSettings // ignore: cast_nullable_to_non_nullable
as AppSettings,
  ));
}
/// Create a copy of AppSettingsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppSettingsCopyWith<$Res> get appSettings {
  
  return $AppSettingsCopyWith<$Res>(_self.appSettings, (value) {
    return _then(_self.copyWith(appSettings: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppSettingsEvent].
extension AppSettingsEventPatterns on AppSettingsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _UpdateAppSettingsEvent value)?  updateAppSettings,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateAppSettingsEvent() when updateAppSettings != null:
return updateAppSettings(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _UpdateAppSettingsEvent value)  updateAppSettings,}){
final _that = this;
switch (_that) {
case _UpdateAppSettingsEvent():
return updateAppSettings(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _UpdateAppSettingsEvent value)?  updateAppSettings,}){
final _that = this;
switch (_that) {
case _UpdateAppSettingsEvent() when updateAppSettings != null:
return updateAppSettings(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( AppSettings appSettings)?  updateAppSettings,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateAppSettingsEvent() when updateAppSettings != null:
return updateAppSettings(_that.appSettings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( AppSettings appSettings)  updateAppSettings,}) {final _that = this;
switch (_that) {
case _UpdateAppSettingsEvent():
return updateAppSettings(_that.appSettings);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( AppSettings appSettings)?  updateAppSettings,}) {final _that = this;
switch (_that) {
case _UpdateAppSettingsEvent() when updateAppSettings != null:
return updateAppSettings(_that.appSettings);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateAppSettingsEvent implements AppSettingsEvent {
  const _UpdateAppSettingsEvent({required this.appSettings});
  

@override final  AppSettings appSettings;

/// Create a copy of AppSettingsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateAppSettingsEventCopyWith<_UpdateAppSettingsEvent> get copyWith => __$UpdateAppSettingsEventCopyWithImpl<_UpdateAppSettingsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateAppSettingsEvent&&(identical(other.appSettings, appSettings) || other.appSettings == appSettings));
}


@override
int get hashCode => Object.hash(runtimeType,appSettings);

@override
String toString() {
  return 'AppSettingsEvent.updateAppSettings(appSettings: $appSettings)';
}


}

/// @nodoc
abstract mixin class _$UpdateAppSettingsEventCopyWith<$Res> implements $AppSettingsEventCopyWith<$Res> {
  factory _$UpdateAppSettingsEventCopyWith(_UpdateAppSettingsEvent value, $Res Function(_UpdateAppSettingsEvent) _then) = __$UpdateAppSettingsEventCopyWithImpl;
@override @useResult
$Res call({
 AppSettings appSettings
});


@override $AppSettingsCopyWith<$Res> get appSettings;

}
/// @nodoc
class __$UpdateAppSettingsEventCopyWithImpl<$Res>
    implements _$UpdateAppSettingsEventCopyWith<$Res> {
  __$UpdateAppSettingsEventCopyWithImpl(this._self, this._then);

  final _UpdateAppSettingsEvent _self;
  final $Res Function(_UpdateAppSettingsEvent) _then;

/// Create a copy of AppSettingsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appSettings = null,}) {
  return _then(_UpdateAppSettingsEvent(
appSettings: null == appSettings ? _self.appSettings : appSettings // ignore: cast_nullable_to_non_nullable
as AppSettings,
  ));
}

/// Create a copy of AppSettingsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppSettingsCopyWith<$Res> get appSettings {
  
  return $AppSettingsCopyWith<$Res>(_self.appSettings, (value) {
    return _then(_self.copyWith(appSettings: value));
  });
}
}

/// @nodoc
mixin _$AppSettingsState {

 AppSettings? get appSettings;
/// Create a copy of AppSettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppSettingsStateCopyWith<AppSettingsState> get copyWith => _$AppSettingsStateCopyWithImpl<AppSettingsState>(this as AppSettingsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppSettingsState&&(identical(other.appSettings, appSettings) || other.appSettings == appSettings));
}


@override
int get hashCode => Object.hash(runtimeType,appSettings);

@override
String toString() {
  return 'AppSettingsState(appSettings: $appSettings)';
}


}

/// @nodoc
abstract mixin class $AppSettingsStateCopyWith<$Res>  {
  factory $AppSettingsStateCopyWith(AppSettingsState value, $Res Function(AppSettingsState) _then) = _$AppSettingsStateCopyWithImpl;
@useResult
$Res call({
 AppSettings? appSettings
});


$AppSettingsCopyWith<$Res>? get appSettings;

}
/// @nodoc
class _$AppSettingsStateCopyWithImpl<$Res>
    implements $AppSettingsStateCopyWith<$Res> {
  _$AppSettingsStateCopyWithImpl(this._self, this._then);

  final AppSettingsState _self;
  final $Res Function(AppSettingsState) _then;

/// Create a copy of AppSettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appSettings = freezed,}) {
  return _then(_self.copyWith(
appSettings: freezed == appSettings ? _self.appSettings : appSettings // ignore: cast_nullable_to_non_nullable
as AppSettings?,
  ));
}
/// Create a copy of AppSettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppSettingsCopyWith<$Res>? get appSettings {
    if (_self.appSettings == null) {
    return null;
  }

  return $AppSettingsCopyWith<$Res>(_self.appSettings!, (value) {
    return _then(_self.copyWith(appSettings: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppSettingsState].
extension AppSettingsStatePatterns on AppSettingsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _IdleAppSettingsState value)?  idle,TResult Function( _LoadingAppSettingsState value)?  loading,TResult Function( _ErrorAppSettingsState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IdleAppSettingsState() when idle != null:
return idle(_that);case _LoadingAppSettingsState() when loading != null:
return loading(_that);case _ErrorAppSettingsState() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _IdleAppSettingsState value)  idle,required TResult Function( _LoadingAppSettingsState value)  loading,required TResult Function( _ErrorAppSettingsState value)  error,}){
final _that = this;
switch (_that) {
case _IdleAppSettingsState():
return idle(_that);case _LoadingAppSettingsState():
return loading(_that);case _ErrorAppSettingsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _IdleAppSettingsState value)?  idle,TResult? Function( _LoadingAppSettingsState value)?  loading,TResult? Function( _ErrorAppSettingsState value)?  error,}){
final _that = this;
switch (_that) {
case _IdleAppSettingsState() when idle != null:
return idle(_that);case _LoadingAppSettingsState() when loading != null:
return loading(_that);case _ErrorAppSettingsState() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( AppSettings? appSettings)?  idle,TResult Function( AppSettings? appSettings)?  loading,TResult Function( Object error,  AppSettings? appSettings)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IdleAppSettingsState() when idle != null:
return idle(_that.appSettings);case _LoadingAppSettingsState() when loading != null:
return loading(_that.appSettings);case _ErrorAppSettingsState() when error != null:
return error(_that.error,_that.appSettings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( AppSettings? appSettings)  idle,required TResult Function( AppSettings? appSettings)  loading,required TResult Function( Object error,  AppSettings? appSettings)  error,}) {final _that = this;
switch (_that) {
case _IdleAppSettingsState():
return idle(_that.appSettings);case _LoadingAppSettingsState():
return loading(_that.appSettings);case _ErrorAppSettingsState():
return error(_that.error,_that.appSettings);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( AppSettings? appSettings)?  idle,TResult? Function( AppSettings? appSettings)?  loading,TResult? Function( Object error,  AppSettings? appSettings)?  error,}) {final _that = this;
switch (_that) {
case _IdleAppSettingsState() when idle != null:
return idle(_that.appSettings);case _LoadingAppSettingsState() when loading != null:
return loading(_that.appSettings);case _ErrorAppSettingsState() when error != null:
return error(_that.error,_that.appSettings);case _:
  return null;

}
}

}

/// @nodoc


class _IdleAppSettingsState implements AppSettingsState {
  const _IdleAppSettingsState({this.appSettings});
  

@override final  AppSettings? appSettings;

/// Create a copy of AppSettingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IdleAppSettingsStateCopyWith<_IdleAppSettingsState> get copyWith => __$IdleAppSettingsStateCopyWithImpl<_IdleAppSettingsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IdleAppSettingsState&&(identical(other.appSettings, appSettings) || other.appSettings == appSettings));
}


@override
int get hashCode => Object.hash(runtimeType,appSettings);

@override
String toString() {
  return 'AppSettingsState.idle(appSettings: $appSettings)';
}


}

/// @nodoc
abstract mixin class _$IdleAppSettingsStateCopyWith<$Res> implements $AppSettingsStateCopyWith<$Res> {
  factory _$IdleAppSettingsStateCopyWith(_IdleAppSettingsState value, $Res Function(_IdleAppSettingsState) _then) = __$IdleAppSettingsStateCopyWithImpl;
@override @useResult
$Res call({
 AppSettings? appSettings
});


@override $AppSettingsCopyWith<$Res>? get appSettings;

}
/// @nodoc
class __$IdleAppSettingsStateCopyWithImpl<$Res>
    implements _$IdleAppSettingsStateCopyWith<$Res> {
  __$IdleAppSettingsStateCopyWithImpl(this._self, this._then);

  final _IdleAppSettingsState _self;
  final $Res Function(_IdleAppSettingsState) _then;

/// Create a copy of AppSettingsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appSettings = freezed,}) {
  return _then(_IdleAppSettingsState(
appSettings: freezed == appSettings ? _self.appSettings : appSettings // ignore: cast_nullable_to_non_nullable
as AppSettings?,
  ));
}

/// Create a copy of AppSettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppSettingsCopyWith<$Res>? get appSettings {
    if (_self.appSettings == null) {
    return null;
  }

  return $AppSettingsCopyWith<$Res>(_self.appSettings!, (value) {
    return _then(_self.copyWith(appSettings: value));
  });
}
}

/// @nodoc


class _LoadingAppSettingsState implements AppSettingsState {
  const _LoadingAppSettingsState({this.appSettings});
  

@override final  AppSettings? appSettings;

/// Create a copy of AppSettingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadingAppSettingsStateCopyWith<_LoadingAppSettingsState> get copyWith => __$LoadingAppSettingsStateCopyWithImpl<_LoadingAppSettingsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingAppSettingsState&&(identical(other.appSettings, appSettings) || other.appSettings == appSettings));
}


@override
int get hashCode => Object.hash(runtimeType,appSettings);

@override
String toString() {
  return 'AppSettingsState.loading(appSettings: $appSettings)';
}


}

/// @nodoc
abstract mixin class _$LoadingAppSettingsStateCopyWith<$Res> implements $AppSettingsStateCopyWith<$Res> {
  factory _$LoadingAppSettingsStateCopyWith(_LoadingAppSettingsState value, $Res Function(_LoadingAppSettingsState) _then) = __$LoadingAppSettingsStateCopyWithImpl;
@override @useResult
$Res call({
 AppSettings? appSettings
});


@override $AppSettingsCopyWith<$Res>? get appSettings;

}
/// @nodoc
class __$LoadingAppSettingsStateCopyWithImpl<$Res>
    implements _$LoadingAppSettingsStateCopyWith<$Res> {
  __$LoadingAppSettingsStateCopyWithImpl(this._self, this._then);

  final _LoadingAppSettingsState _self;
  final $Res Function(_LoadingAppSettingsState) _then;

/// Create a copy of AppSettingsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appSettings = freezed,}) {
  return _then(_LoadingAppSettingsState(
appSettings: freezed == appSettings ? _self.appSettings : appSettings // ignore: cast_nullable_to_non_nullable
as AppSettings?,
  ));
}

/// Create a copy of AppSettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppSettingsCopyWith<$Res>? get appSettings {
    if (_self.appSettings == null) {
    return null;
  }

  return $AppSettingsCopyWith<$Res>(_self.appSettings!, (value) {
    return _then(_self.copyWith(appSettings: value));
  });
}
}

/// @nodoc


class _ErrorAppSettingsState implements AppSettingsState {
  const _ErrorAppSettingsState({required this.error, this.appSettings});
  

 final  Object error;
@override final  AppSettings? appSettings;

/// Create a copy of AppSettingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorAppSettingsStateCopyWith<_ErrorAppSettingsState> get copyWith => __$ErrorAppSettingsStateCopyWithImpl<_ErrorAppSettingsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorAppSettingsState&&const DeepCollectionEquality().equals(other.error, error)&&(identical(other.appSettings, appSettings) || other.appSettings == appSettings));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error),appSettings);

@override
String toString() {
  return 'AppSettingsState.error(error: $error, appSettings: $appSettings)';
}


}

/// @nodoc
abstract mixin class _$ErrorAppSettingsStateCopyWith<$Res> implements $AppSettingsStateCopyWith<$Res> {
  factory _$ErrorAppSettingsStateCopyWith(_ErrorAppSettingsState value, $Res Function(_ErrorAppSettingsState) _then) = __$ErrorAppSettingsStateCopyWithImpl;
@override @useResult
$Res call({
 Object error, AppSettings? appSettings
});


@override $AppSettingsCopyWith<$Res>? get appSettings;

}
/// @nodoc
class __$ErrorAppSettingsStateCopyWithImpl<$Res>
    implements _$ErrorAppSettingsStateCopyWith<$Res> {
  __$ErrorAppSettingsStateCopyWithImpl(this._self, this._then);

  final _ErrorAppSettingsState _self;
  final $Res Function(_ErrorAppSettingsState) _then;

/// Create a copy of AppSettingsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = null,Object? appSettings = freezed,}) {
  return _then(_ErrorAppSettingsState(
error: null == error ? _self.error : error ,appSettings: freezed == appSettings ? _self.appSettings : appSettings // ignore: cast_nullable_to_non_nullable
as AppSettings?,
  ));
}

/// Create a copy of AppSettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppSettingsCopyWith<$Res>? get appSettings {
    if (_self.appSettings == null) {
    return null;
  }

  return $AppSettingsCopyWith<$Res>(_self.appSettings!, (value) {
    return _then(_self.copyWith(appSettings: value));
  });
}
}

// dart format on
