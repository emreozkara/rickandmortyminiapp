import 'package:dio/dio.dart';

class ApiOptions {
  ApiOptions._();

  static const String baseUrl = 'https://rickandmortyapi.com/api';
  static const Duration connectTimeout = Duration(seconds: 10);
  static const Duration receiveTimeout = Duration(seconds: 10);
  static const String contentType = 'application/json';
  static const String accept = 'application/json';

  static BaseOptions get options => BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: connectTimeout,
    receiveTimeout: receiveTimeout,
    headers: {'Content-Type': contentType, 'Accept': accept},
  );
}
