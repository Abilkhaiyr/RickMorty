import 'package:dio/dio.dart';

class DioInterceptor extends Interceptor {
  const DioInterceptor();
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final message = switch (err.type) {
      DioExceptionType.connectionError ||
      DioExceptionType.connectionTimeout ||
      DioExceptionType.receiveTimeout ||
      DioExceptionType.sendTimeout =>
        'Check your internet connection and try again.',
      _ => 'Unable to load characters. Please try again.',
    };
    handler.next(err.copyWith(message: message));
  }
}
