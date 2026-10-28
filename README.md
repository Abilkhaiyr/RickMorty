# Rick and Morty

Flutter character catalogue built on the architecture of `../breeze_app`.
The Breeze source project is read only and remains unchanged.

## Startup

The application follows the same startup layers and file names as Breeze:

```text
main.dart (runZonedGuarded)
  -> feature/app/logic/app_runner.dart
  -> feature/app/initialization/logic/composition_root.dart
     -> SharedPreferencesAsync + SharedPreferencesWithCache
     -> PackageInfo + persisted application settings
     -> DependenciesContainer + RepositoryStorage
  -> feature/app/presentation/app.dart
     -> DependenciesScope
     -> RepositoryScope
     -> SettingsScope (AppSettingsBloc, AppBloc, AppRestartBloc)
     -> MaterialContext
        -> AppRouterBuilder + NavigatorObserversFactory
        -> MaterialApp.router (theme, locale, LoaderOverlay)
        -> Launcher -> BasePageStart -> CharactersPage
```

`DependenciesContainer` owns the single router and settings Bloc. `AppRouterBuilder`
uses that router without creating a second instance. `SettingsScope` owns the app
and restart Blocs. App disposal closes these services and the network client.

## Structure

```text
lib/src/
  core/
    constant/
      config.dart
      localization/translations/  # en, ru, kk ARB and generated translations
    containers/repository_storage.dart  # IRepositoryStorage and lazy services
    database/                     # shared_preferences_dao, typed_preferences_dao, preferences_entries
    presentation/
      scopes/repository_scope.dart
      widgets/other/              # shared loading widgets and overlay
    rest_client/
      rest_client.dart            # public exports
      network_options.dart
      src/
        rest_client.dart          # IRestClient
        rest_client_base.dart     # shared request entry point
        dio_rest_client/          # DioClient, RestClientDio, DioInterceptor
        exception/
    theme/                        # recources, app_colors, app_textstyles, app_themes
    utils/                        # refined_logger, talker_logger_util, persisted_entry, context extension
  feature/
    app/
      bloc/                       # app_bloc, app_restart_bloc
      initialization/
        logic/composition_root.dart
        models/dependencies_container.dart
        widget/                   # dependencies_scope, initialization_failed_app
      logic/app_runner.dart
      models/app_theme.dart
      presentation/
        app.dart
        material_context.dart
        pages/                    # launcher, base
        widgets/app_router_builder.dart
      router/                     # app_router, navigator_observers_factory, router_observers
    settings/
      bloc/app_settings_bloc.dart
      data/                       # app_settings_datasource, app_settings_repository, theme_mode_codec
      models/app_settings.dart
      widget/settings_scope.dart
    characters/
      bloc/                       # catalogue and detail Cubits
      data/                       # remote source; repository interface + implementation in one file
      models/                     # Freezed models and JSON DTOs
      presentation/               # catalogue, detail page and images
```

All data and state models use Freezed; dependency containers are ordinary classes.
Folders are named `models`, including where Breeze uses `model`, as required by
AGENTS.md. Repository contracts and implementations share a file under `data`.
The REST module keeps the Breeze abstraction/adapter layout and the GET operation
needed by this public API. Breeze's authentication, account profile and forced
update business logic are not part of the public character catalogue. Launcher
therefore opens the catalogue without requesting authentication.

Dependencies and Flutter configuration follow Breeze, with the `rick_morty`
package name and valid asset directory paths. No unrelated Breeze assets are copied.
The interface implements all eight states from the linked Figma design:
catalogue, search results, profile, loading skeletons, empty search, initial
network error, pagination loading and pagination error with retry. Photos and
the discovered count are supplied by the live API; initials are used while
photos load or when they fail. Explore remains disabled as requested.

Search is debounced by 350 ms and ignores stale successes and failures. Scrolling
loads the next API page once, retains results on pagination failure, and retries
the failed page. Opening a profile preserves the catalogue, search and scroll
position. A direct profile URL fetches the character and offers retry on failure.
The dark navy/lime theme, local Inter font, rounded cards and status badges follow
Figma. The heading uses flowing layout to avoid the overlap in the source design.
English, Russian and Kazakh strings use the existing localization architecture.

## Run and verify

Use Flutter 3.41.7 / Dart 3.11.5 or a compatible newer SDK.

```sh
flutter pub get
flutter gen-l10n
dart run build_runner build
flutter analyze
flutter test
flutter run
```

On this Windows network, use `./run_android.ps1` (optionally `-Device <device-id>`)
if Gradle reports `PKIX path building failed`. It prepares a project-local copy
of Java's truststore using the network root already trusted by Windows, leaving
TLS validation enabled and the installed JDK unchanged.

Override the API with `--dart-define=API_BASE_URL=https://rickandmortyapi.com/api/`
(include the trailing slash).

Tests cover DTO mapping, API errors, pagination/retry, stale searches, detail/back
navigation, state preservation after settings updates, persisted settings at
startup, clearing settings, and dependency disposal. UI tests also cover all
design states, clear-search/retry actions, direct profile loading/retry, narrow
screens and enlarged text.

Generate visual review PNGs without an emulator:

```sh
flutter test --dart-define=UI_REVIEW=true test/characters_ui_test.dart
```

The images are saved to `.dart_tool/ui-review/`. Fonts and their OFL licenses are
stored in `assets/fonts/`; no temporary Figma asset URLs are used at runtime.
