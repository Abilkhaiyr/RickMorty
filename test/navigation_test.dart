import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rick_morty/src/core/constant/config.dart';
import 'package:rick_morty/src/core/containers/repository_storage.dart';
import 'package:rick_morty/src/core/rest_client/rest_client.dart';
import 'package:rick_morty/src/feature/app/initialization/logic/composition_root.dart';
import 'package:rick_morty/src/feature/app/initialization/models/dependencies_container.dart';
import 'package:rick_morty/src/feature/app/presentation/app.dart';
import 'package:rick_morty/src/feature/app/router/app_router.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:rick_morty/src/feature/settings/bloc/app_settings_bloc.dart';
import 'package:rick_morty/src/feature/settings/data/app_settings_datasource.dart';
import 'package:rick_morty/src/feature/settings/data/app_settings_repository.dart';
import 'package:shared_preferences_platform_interface/in_memory_shared_preferences_async.dart';
import 'package:shared_preferences_platform_interface/shared_preferences_async_platform_interface.dart';
import 'package:rick_morty/src/feature/settings/widget/settings_scope.dart';
import 'package:rick_morty/src/feature/settings/models/app_settings.dart';

class CatalogueClient implements IRestClient {
  int calls = 0;
  @override
  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, Object?>? queryParams,
  }) async {
    calls++;
    return {
      'info': {'next': null},
      'results': List.generate(
        12,
        (index) => {
          'id': index + 1,
          'name': index == 0 ? 'Rick Sanchez' : 'Rick Sanchez ${index + 1}',
          'status': 'Alive',
          'species': 'Human',
          'image': '',
          'origin': {'name': 'Earth'},
          'location': {'name': 'Citadel'},
        },
      ),
    };
  }

  @override
  void close() {}
}

void main() {
  testWidgets('detail back navigation keeps loaded catalogue and search', (
    tester,
  ) async {
    final client = CatalogueClient();
    SharedPreferences.setMockInitialValues({});
    final previousPlatform = SharedPreferencesAsyncPlatform.instance;
    SharedPreferencesAsyncPlatform.instance =
        InMemorySharedPreferencesAsync.empty();
    addTearDown(
      () => SharedPreferencesAsyncPlatform.instance = previousPlatform,
    );
    final preferences = await SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions(),
    );
    final datasource = AppSettingsDatasourceImpl(
      sharedPreferences: SharedPreferencesAsync(),
    );
    await tester.pumpWidget(
      App(
        result: CompositionResult(
          dependencies: DependenciesContainer(
            config: const Config(),
            appRouter: AppRouter(),
            appSettingsBloc: AppSettingsBloc(
              appSettingsRepository: AppSettingsRepositoryImpl(
                datasource: datasource,
              ),
              initialState: const AppSettingsState.idle(),
            ),
          ),
          repository: RepositoryStorage(
            restClient: client,
            sharedPreferences: preferences,
            packageInfo: PackageInfo(
              appName: 'test',
              packageName: 'test',
              version: '1.0.0',
              buildNumber: '1',
            ),
            appSettingsDatasource: datasource,
            config: const Config(),
          ),
          msSpent: 0,
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'Rick');
    await tester.pump(const Duration(milliseconds: 400));
    await tester.pumpAndSettle();
    final callsBeforeDetail = client.calls;
    await tester.tap(find.text('Rick Sanchez'));
    await tester.pumpAndSettle();
    expect(find.text('CHARACTER PROFILE'), findsOneWidget);
    await tester.scrollUntilVisible(find.text('Citadel'), 200);
    expect(find.text('Citadel'), findsOneWidget);
    await tester.pageBack();
    await tester.pumpAndSettle();
    expect(find.text('Rick Sanchez'), findsOneWidget);
    expect(find.widgetWithText(TextField, 'Rick'), findsOneWidget);
    expect(client.calls, callsBeforeDetail);
    await tester.scrollUntilVisible(
      find.text('Rick Sanchez 4'),
      200,
      scrollable: find
          .descendant(
            of: find.byType(CustomScrollView),
            matching: find.byType(Scrollable),
          )
          .first,
    );
    await tester.pumpAndSettle();
    final scrollState = tester.state<ScrollableState>(
      find
          .descendant(
            of: find.byType(CustomScrollView),
            matching: find.byType(Scrollable),
          )
          .first,
    );
    final savedOffset = scrollState.position.pixels;
    expect(savedOffset, greaterThan(0));
    await tester.tap(find.text('Rick Sanchez 4'));
    await tester.pumpAndSettle();
    await tester.pageBack();
    await tester.pumpAndSettle();
    expect(scrollState.position.pixels, savedOffset);
    expect(client.calls, callsBeforeDetail);
    await tester.drag(find.byType(CustomScrollView), const Offset(0, 1000));
    await tester.pumpAndSettle();
    expect(find.widgetWithText(TextField, 'Rick'), findsOneWidget);
    final settingsBloc = SettingsScope.of(
      tester.element(find.byType(TextField)),
      listen: false,
    );
    settingsBloc.add(
      const AppSettingsEvent.updateAppSettings(
        appSettings: AppSettings(textScale: 1.1),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.widgetWithText(TextField, 'Rick'), findsOneWidget);
    expect(client.calls, callsBeforeDetail);
    await tester.pumpWidget(const SizedBox.shrink());
  });
}
