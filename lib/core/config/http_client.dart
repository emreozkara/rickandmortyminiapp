import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:rickandmortyapp/core/config/api_options.dart';

class HttpClient {
  HttpClient._init() {
    _dio = Dio(ApiOptions.options)
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

  static final HttpClient _instance = HttpClient._init();
  static HttpClient get instance => _instance;

  late final Dio _dio;

  // GET Request
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    final response = await _dio.get(
      path,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
    );
    return response.data;
  }

  // POST Request
  Future<dynamic> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    final response = await _dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
    );
    return response.data;
  }
}
