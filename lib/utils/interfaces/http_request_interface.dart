import 'package:dio/dio.dart';

abstract class HttpRequestInterFace {
  static const String baseUrl = "https://jsonplaceholder.typicode.com";

  Future<Response?> get({required String path, Options? headers, Map<String, dynamic>? queryParameters, ResponseType? responseType});
  Future<Response?> post<T>({required String path, Options? headers, T? payload, String? contentType, ResponseType? responseType});
  Future<Response?> update<T>({required String path, Options? headers, T? payload});
  Future<Response?> delete<T>({required String path, Options? headers, T? payload});
}