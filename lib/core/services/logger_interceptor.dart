import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoggerInterceptor extends Interceptor {
  static const _logName = 'DioLogger';

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    _log('*** *** *** *** *** DioException *** *** *** *** ***');
    _log('uri: ${err.requestOptions.uri}');
    _log('$err');
    if (err.response != null) {
      _log('${err.response!}');
    }
    return super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _log('*** *** *** *** *** Response *** *** *** *** ***');
    _log('uri: ${response.requestOptions.uri}');
    _log('statusCode ${response.statusCode}');
    try {
      _log('responseData ${jsonEncode(response.data)}');
    } catch (_) {
      _log('responseData ${response.data}');
    }
    return super.onResponse(response, handler);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _log('*** *** *** *** *** Request *** *** *** *** ***');
    _log('uri: ${options.uri}');

    try {
      _log('headers ${jsonEncode(options.headers)}');
    } catch (_) {
      _log('headers ${options.headers}');
    }

    try {
      _log('data ${jsonEncode(options.data)}');
    } catch (_) {
      _log('data ${options.data}');
    }
    super.onRequest(options, handler);
  }

  void _log(String message) {
    log(message, name: _logName);
  }
}
