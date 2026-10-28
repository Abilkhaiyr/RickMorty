import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/app_settings_repository.dart';
import '../models/app_settings.dart';

part 'app_settings_bloc.freezed.dart';

final class AppSettingsBloc extends Bloc<AppSettingsEvent, AppSettingsState> {
  AppSettingsBloc({
    required AppSettingsRepository appSettingsRepository,
    required AppSettingsState initialState,
  }) : _appSettingsRepository = appSettingsRepository,
       super(initialState) {
    on<_UpdateAppSettingsEvent>((event, emit) async {
      final previous = state.appSettings;
      emit(AppSettingsState.loading(appSettings: previous));
      try {
        await _appSettingsRepository.setAppSettings(event.appSettings);
        emit(AppSettingsState.idle(appSettings: event.appSettings));
      } catch (error) {
        emit(AppSettingsState.error(appSettings: previous, error: error));
      }
    });
  }
  final AppSettingsRepository _appSettingsRepository;
}

@freezed
sealed class AppSettingsEvent with _$AppSettingsEvent {
  const factory AppSettingsEvent.updateAppSettings({
    required AppSettings appSettings,
  }) = _UpdateAppSettingsEvent;
}

@freezed
sealed class AppSettingsState with _$AppSettingsState {
  const factory AppSettingsState.idle({AppSettings? appSettings}) =
      _IdleAppSettingsState;
  const factory AppSettingsState.loading({AppSettings? appSettings}) =
      _LoadingAppSettingsState;
  const factory AppSettingsState.error({
    required Object error,
    AppSettings? appSettings,
  }) = _ErrorAppSettingsState;
}
