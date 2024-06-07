import 'dart:developer';

import 'package:dio/dio.dart';

class DioClient {
  /// singleton
  static DioClient? _instance;

  factory DioClient() => _instance ??= DioClient._internal();
  late final Dio dio;

  DioClient._internal() {
    _init();
  }

  Future<void> _init() async {
    final header = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'X-UCARE-APP-VERSION': '',
    };

    dio = Dio(BaseOptions(headers: header));
    dio.interceptors.add(CustomLogInterceptor());
    dio.interceptors.add(CustomAPIInterceptors());
  }
}

class CustomAPIInterceptors extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // onRequest
    if (true) {
      const accessToken = '';
      options.headers['Authorization'] = accessToken;
      super.onRequest(options, handler);
    } else {
      handler.reject(
        DioException(
          type: DioExceptionType.badResponse,
          message: 'message',
          requestOptions: options,
          error: Error(),
        ),
      );
    }
  }

  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    // onResponse
    super.onResponse(response, handler);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    // onError
    final response = err.response;
    final statusCode = response?.statusCode;
    final requestOptions = err.requestOptions;

    super.onError(err, handler);
  }
}

class CustomLogInterceptor extends Interceptor {
  CustomLogInterceptor();

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    log('on request');
    super.onRequest(options, handler);
  }

  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    log('on response');
    super.onResponse(response, handler);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    log('on error');
    super.onError(err, handler);
  }
}
