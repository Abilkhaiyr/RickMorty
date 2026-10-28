import '../../feature/characters/data/character_remote_ds.dart';
import '../../feature/characters/data/character_repository.dart';
import '../rest_client/rest_client.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../feature/settings/data/app_settings_datasource.dart';
import '../constant/config.dart';

abstract interface class IRepositoryStorage {
  IRestClient get restClient;
  ICharacterRemoteDS get characterRemoteDS;
  ICharacterRepository get characterRepository;
  void close();
}

final class RepositoryStorage implements IRepositoryStorage {
  RepositoryStorage({
    required this.sharedPreferences,
    required this.packageInfo,
    required this.appSettingsDatasource,
    required this.config,
    IRestClient? restClient,
  }) : _restClient = restClient;
  final SharedPreferencesWithCache sharedPreferences;
  final PackageInfo packageInfo;
  final AppSettingsDatasource appSettingsDatasource;
  final Config config;
  IRestClient? _restClient;
  bool _closed = false;
  @override
  IRestClient get restClient {
    if (_closed) throw StateError('RepositoryStorage is closed');
    return _restClient ??= RestClientDio(
      dioClient: DioClient(baseUrl: config.apiBaseUrl),
    );
  }

  @override
  late final ICharacterRemoteDS characterRemoteDS = CharacterRemoteDSImpl(
    restClient: restClient,
  );
  @override
  late final ICharacterRepository characterRepository = CharacterRepositoryImpl(
    remoteDS: characterRemoteDS,
  );
  @override
  void close() {
    if (_closed) return;
    _closed = true;
    _restClient?.close();
    _restClient = null;
  }
}
