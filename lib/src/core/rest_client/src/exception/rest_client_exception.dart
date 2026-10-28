final class RestClientException implements Exception {
  const RestClientException(this.message, {this.statusCode});
  final String message;
  final int? statusCode;
  @override
  String toString() => message;
}
