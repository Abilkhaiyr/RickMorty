import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../app/bloc/app_bloc.dart';
import '../../app/bloc/app_restart_bloc.dart';
import '../../app/initialization/widget/dependencies_scope.dart';
import '../bloc/app_settings_bloc.dart';
import '../models/app_settings.dart';

class SettingsScope extends StatelessWidget {
  const SettingsScope({required this.child, super.key});
  final Widget child;

  static AppSettingsBloc of(BuildContext context, {bool listen = true}) =>
      listen
      ? context.watch<AppSettingsBloc>()
      : context.read<AppSettingsBloc>();

  static AppSettings settingsOf(BuildContext context, {bool listen = true}) =>
      (listen
              ? context.dependOnInheritedWidgetOfExactType<_InheritedSettings>()
              : context.getInheritedWidgetOfExactType<_InheritedSettings>())!
          .settings;

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
    providers: [
      BlocProvider.value(value: DependenciesScope.of(context).appSettingsBloc),
      BlocProvider(create: (_) => AppBloc()),
      BlocProvider(create: (_) => AppRestartBloc()),
    ],
    child: BlocBuilder<AppSettingsBloc, AppSettingsState>(
      builder: (context, state) => _InheritedSettings(
        settings: state.appSettings ?? const AppSettings(),
        child: child,
      ),
    ),
  );
}

class _InheritedSettings extends InheritedWidget {
  const _InheritedSettings({required this.settings, required super.child});
  final AppSettings settings;
  @override
  bool updateShouldNotify(_InheritedSettings oldWidget) =>
      settings != oldWidget.settings;
}
