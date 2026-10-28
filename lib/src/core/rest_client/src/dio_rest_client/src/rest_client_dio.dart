import 'package:dio/dio.dart';
import '../../../rest_client.dart';

final class RestClientDio extends RestClientBase {
  const RestClientDio({required this.dioClient});
  final DioClient dioClient;
  @override
  Future<Map<String, dynamic>> send({
    required String path,
    required String method,
    Map<String, Object?>? queryParams,
  }) async {
    try {
      final response = await dioClient.dio.request<Object?>(
        path,
        queryParameters: queryParams,
        options: Options(method: method),
      );
      if (response.data case final Map<String, dynamic> data) return data;
      throw const RestClientException('Unexpected response from server.');
    } on DioException catch (error) {
      throw RestClientException(
        error.message ?? 'Unable to load characters. Please try again.',
        statusCode: error.response?.statusCode,
      );
    }
  }

  @override
  void close() => dioClient.close();
}
