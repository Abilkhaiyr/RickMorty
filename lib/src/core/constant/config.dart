final class Config {
  const Config();
  String get appName => 'Rick and Morty';
  String get apiBaseUrl => const String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'https://rickandmortyapi.com/api/',
  );
}
