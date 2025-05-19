// ignore_for_file: constant_identifier_names

import 'package:dio/dio.dart';
import 'package:movie_app/env/env.dart'; // from env.dart
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'network_imports.dart';

/// Provider of [DioClient]
final dioClientProvider = Provider<DioClient>((ref) {
  return DioClient();
});

final _key = Env.themovieappapi_key;

class DioClient {
  late final Dio _dio;
  DioClient()
      : _dio = Dio(
          BaseOptions(
              baseUrl: Endpoints.url,
              queryParameters: {'api_key': _key},
              connectTimeout: Endpoints.connectTimeout,
              receiveTimeout: Endpoints.receiveTimeout,
              headers: {'Content-Type': 'application/json; charset=UTF-8'},
              responseType: ResponseType.json),
        )..interceptors
            .addAll([AuthorizationInterceptor(), LoggerInterceptor()]);

  // GET METHOD
  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on DioException {
      rethrow;
    }
  }

  // POST METHOD
  Future<Response> post(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.post(
        url,
        data: data,
        options: options,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // PUT METHOD
  Future<Response> put(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.put(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // DELETE METHOD
  Future<dynamic> delete(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final Response response = await _dio.delete(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
