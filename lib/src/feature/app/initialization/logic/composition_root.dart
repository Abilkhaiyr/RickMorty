import '../../../../core/constant/config.dart';
import '../../../../core/containers/repository_storage.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../settings/bloc/app_settings_bloc.dart';
import '../../../settings/data/app_settings_datasource.dart';
import '../../../settings/data/app_settings_repository.dart';
import '../../router/app_router.dart';
import '../models/dependencies_container.dart';

final class CompositionRoot {
  const CompositionRoot(this.config);
  final Config config;
  Future<CompositionResult> compose() async {
    final stopwatch = Stopwatch()..start();
    final datasource = AppSettingsDatasourceImpl(
      sharedPreferences: SharedPreferencesAsync(),
    );
    final settingsRepository = AppSettingsRepositoryImpl(
      datasource: datasource,
    );
    final sharedPreferences = await SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions(),
    );
    final packageInfo = await PackageInfo.fromPlatform();
    final settings = await settingsRepository.getAppSettings();
    final repository = RepositoryStorage(
      sharedPreferences: sharedPreferences,
      packageInfo: packageInfo,
      appSettingsDatasource: datasource,
      config: config,
    );
    try {
      final dependencies = DependenciesContainer(
        config: config,
        appRouter: AppRouter(),
        appSettingsBloc: AppSettingsBloc(
          appSettingsRepository: settingsRepository,
          initialState: AppSettingsState.idle(appSettings: settings),
        ),
      );
      stopwatch.stop();
      return CompositionResult(
        dependencies: dependencies,
        repository: repository,
        msSpent: stopwatch.elapsedMilliseconds,
      );
    } catch (_) {
      repository.close();
      rethrow;
    }
  }
}

final class CompositionResult {
  const CompositionResult({
    required this.dependencies,
    required this.repository,
    required this.msSpent,
  });
  final DependenciesContainer dependencies;
  final RepositoryStorage repository;
  final int msSpent;
}
