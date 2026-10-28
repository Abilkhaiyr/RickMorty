import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_bloc.freezed.dart';

/// The public catalogue needs no authentication or version endpoint.
final class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState.loading()) {
    on<_StartAppEvent>((event, emit) => emit(const AppState.inApp()));
    on<_ChangeStateEvent>((event, emit) => emit(event.state));
  }
}

@freezed
sealed class AppEvent with _$AppEvent {
  const factory AppEvent.start() = _StartAppEvent;
  const factory AppEvent.changeState({required AppState state}) =
      _ChangeStateEvent;
}

@freezed
sealed class AppState with _$AppState {
  const factory AppState.loading() = _LoadingAppState;
  const factory AppState.inApp() = _InAppState;
  const factory AppState.error({required String message}) = _ErrorAppState;
}
