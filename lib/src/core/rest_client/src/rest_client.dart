abstract interface class IRestClient {
  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, Object?>? queryParams,
  });
  void close();
}
