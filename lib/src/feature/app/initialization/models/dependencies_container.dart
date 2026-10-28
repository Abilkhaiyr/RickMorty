import '../../../../core/constant/config.dart';
import '../../router/app_router.dart';
import '../../../settings/bloc/app_settings_bloc.dart';

final class DependenciesContainer {
  DependenciesContainer({
    required this.config,
    required this.appRouter,
    required this.appSettingsBloc,
  });
  final Config config;
  final AppRouter appRouter;
  final AppSettingsBloc appSettingsBloc;
  Future<void>? _closing;
  Future<void> close() => _closing ??= _close();
  Future<void> _close() async {
    appRouter.dispose();
    await appSettingsBloc.close();
  }
}
