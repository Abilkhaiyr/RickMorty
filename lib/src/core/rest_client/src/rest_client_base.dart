import 'rest_client.dart';

/// Shared request entry point. The catalogue currently uses GET only.
abstract base class RestClientBase implements IRestClient {
  const RestClientBase();
  Future<Map<String, dynamic>> send({
    required String path,
    required String method,
    Map<String, Object?>? queryParams,
  });

  @override
  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, Object?>? queryParams,
  }) => send(path: path, method: 'GET', queryParams: queryParams);
}
