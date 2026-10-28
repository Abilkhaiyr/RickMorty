import 'package:dio/dio.dart';
import 'interceptor/dio_interceptor.dart';

final class DioClient {
  DioClient({required String baseUrl})
    : dio = Dio(
        BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: const Duration(seconds: 15),
          receiveTimeout: const Duration(seconds: 20),
          headers: {'Accept': 'application/json'},
        ),
      ) {
    dio.interceptors.add(const DioInterceptor());
  }
  final Dio dio;
  void close() => dio.close(force: true);
}
