import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class HttpClient {
  HttpClient._();

  static final Dio instance =
      Dio(
          BaseOptions(
            baseUrl: 'https://rickandmortyapi.com/api',
            connectTimeout: const Duration(seconds: 10),
            receiveTimeout: const Duration(seconds: 10),
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
          ),
        )
        ..interceptors.addAll([
          LogInterceptor(
            requestBody: true,
            responseBody: true,
            logPrint: (object) => debugPrint('🌐 $object'),
          ),
          InterceptorsWrapper(
            onError: (DioException error, ErrorInterceptorHandler handler) {
              debugPrint('❌ API Error: ${error.type}');
              debugPrint('❌ Message: ${error.message}');
              debugPrint('❌ URL: ${error.requestOptions.uri}');

              if (error.response != null) {
                debugPrint('❌ Status Code: ${error.response?.statusCode}');
                debugPrint('❌ Response Data: ${error.response?.data}');
              }
              handler.next(error);
            },
          ),
        ]);
}
