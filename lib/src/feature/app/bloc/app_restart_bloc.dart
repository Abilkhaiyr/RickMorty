import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_restart_bloc.freezed.dart';

final class AppRestartBloc extends Bloc<AppRestartEvent, AppRestartState> {
  AppRestartBloc() : super(AppRestartState.loaded(key: UniqueKey())) {
    on<_RestartAppEvent>((event, emit) {
      emit(const AppRestartState.loading());
      emit(AppRestartState.loaded(key: UniqueKey()));
    });
  }
  void restartApp() => add(const AppRestartEvent.restartApp());
}

@freezed
sealed class AppRestartEvent with _$AppRestartEvent {
  const factory AppRestartEvent.restartApp() = _RestartAppEvent;
}

@freezed
sealed class AppRestartState with _$AppRestartState {
  const factory AppRestartState.loading() = _LoadingAppRestartState;
  const factory AppRestartState.loaded({required Key key}) =
      _LoadedAppRestartState;
}
