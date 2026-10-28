import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rick_morty/src/core/rest_client/rest_client.dart';

final class _Adapter implements HttpClientAdapter {
  int status = 200;
  bool closed = false;
  RequestOptions? request;
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    request = options;
    if (status == 0) {
      throw DioException(
        requestOptions: options,
        type: DioExceptionType.connectionError,
      );
    }
    return ResponseBody.fromString(
      '{"results":[]}',
      status,
      headers: {
        Headers.contentTypeHeader: ['application/json'],
      },
    );
  }

  @override
  void close({bool force = false}) {
    closed = true;
  }
}

void main() {
  test(
    'Dio adapter preserves queries, HTTP status and connection errors',
    () async {
      final adapter = _Adapter();
      final dio = DioClient(baseUrl: 'https://example.com/api/');
      dio.dio.httpClientAdapter = adapter;
      final client = RestClientDio(dioClient: dio);
      addTearDown(client.close);
      expect(
        await client.get('character', queryParams: {'page': 2, 'name': 'Rick'}),
        {'results': []},
      );
      expect(adapter.request!.uri.path, '/api/character');
      expect(adapter.request!.uri.queryParameters, {
        'page': '2',
        'name': 'Rick',
      });
      for (final status in [404, 500]) {
        adapter.status = status;
        await expectLater(
          client.get('character'),
          throwsA(
            isA<RestClientException>().having(
              (error) => error.statusCode,
              'status',
              status,
            ),
          ),
        );
      }
      adapter.status = 0;
      await expectLater(
        client.get('character'),
        throwsA(
          isA<RestClientException>().having(
            (error) => error.message,
            'message',
            'Check your internet connection and try again.',
          ),
        ),
      );
      client.close();
      expect(adapter.closed, isTrue);
    },
  );
}
