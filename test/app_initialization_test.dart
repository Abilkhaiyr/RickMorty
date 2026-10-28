import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_platform_interface/in_memory_shared_preferences_async.dart';
import 'package:shared_preferences_platform_interface/shared_preferences_async_platform_interface.dart';
import 'package:rick_morty/src/core/constant/config.dart';
import 'package:rick_morty/src/feature/app/initialization/logic/composition_root.dart';
import 'package:rick_morty/src/feature/app/models/app_theme.dart';
import 'package:rick_morty/src/feature/settings/data/app_settings_datasource.dart';
import 'package:rick_morty/src/feature/settings/models/app_settings.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late SharedPreferencesAsyncPlatform? previousPlatform;
  setUp(() {
    previousPlatform = SharedPreferencesAsyncPlatform.instance;
    SharedPreferencesAsyncPlatform.instance =
        InMemorySharedPreferencesAsync.empty();
    PackageInfo.setMockInitialValues(
      appName: 'Rick and Morty',
      packageName: 'com.example.rick_morty',
      version: '1.0.0',
      buildNumber: '1',
      buildSignature: '',
    );
  });
  tearDown(() {
    SharedPreferencesAsyncPlatform.instance = previousPlatform;
  });

  test(
    'composition loads persisted settings and closes dependencies once',
    () async {
      final datasource = AppSettingsDatasourceImpl(
        sharedPreferences: SharedPreferencesAsync(),
      );
      const settings = AppSettings(
        appTheme: AppTheme(themeMode: ThemeMode.dark, seed: Color(0xFF009688)),
        locale: Locale('ru'),
        textScale: 1.2,
      );
      await datasource.setAppSettings(settings);
      final result = await const CompositionRoot(Config()).compose();
      expect(result.dependencies.appSettingsBloc.state.appSettings, settings);
      expect(result.repository.packageInfo.version, '1.0.0');
      expect(
        identical(
          result.repository.characterRepository,
          result.repository.characterRepository,
        ),
        isTrue,
      );
      result.repository.close();
      result.repository.close();
      expect(() => result.repository.restClient, throwsStateError);
      await result.dependencies.close();
      await result.dependencies.close();
      expect(result.dependencies.appSettingsBloc.isClosed, isTrue);
    },
  );

  test('clearing nullable settings removes persisted values', () async {
    final datasource = AppSettingsDatasourceImpl(
      sharedPreferences: SharedPreferencesAsync(),
    );
    await datasource.setAppSettings(
      const AppSettings(
        appTheme: AppTheme(themeMode: ThemeMode.dark, seed: Color(0xFF009688)),
        locale: Locale('kk'),
        textScale: 1.4,
      ),
    );
    await datasource.setAppSettings(const AppSettings());
    expect(await datasource.getAppSettings(), isNull);
  });
}
