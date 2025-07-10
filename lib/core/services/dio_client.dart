import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../exceptions/app_exception.dart';
import '../exceptions/network_exception.dart';
import '../exceptions/remote_exception.dart';
import '../exceptions/session_expired_exception.dart';
import '../exceptions/unknown_exception.dart';
import '../models/result.dart';
import '../utils/crashlytics_wrapper.dart';
import 'auth_interceptor.dart';
import 'logger_interceptor.dart';

enum BaseUrlType { app, other }

enum DioMethod {
  get('GET'),
  post('POST'),
  put('PUT'),
  patch('PATCH'),
  delete('DELETE');

  const DioMethod(this.value);

  final String value;
}

@singleton
class DioClient {
  DioClient(
    AuthInterceptor authInterceptor,
    LoggerInterceptor loggerInterceptor,
  ) : _dio = Dio(
        BaseOptions(
          connectTimeout: _dioTimeout,
          receiveTimeout: _dioTimeout,
          sendTimeout: _dioTimeout,
          validateStatus: (status) {
            final statusCode = status ?? 0;
            return statusCode >= 200 && statusCode <= 299;
          },
        ),
      ) {
    _dio.interceptors.addAll([authInterceptor, loggerInterceptor]);
  }

  static const Duration _dioTimeout = Duration(seconds: 5);

  final Dio _dio;

  Future<Result<AppException, dynamic>> request({
    required DioMethod method,
    BaseUrlType baseUrlType = BaseUrlType.app,
    required String path,
    Object? data,
    Map<String, dynamic>? queryParams,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.request(
        _getUrlRequest(baseUrlType, path),
        data: data,
        queryParameters: queryParams,
        options: _mergeOptions(method.value, options),
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return Result.success(response.data);
    } on DioException catch (dioException, stack) {
      CrashlyticsWrapper.log(dioException, stack: stack);
      return Result.error(dioException.asAppException);
    } catch (error, stack) {
      CrashlyticsWrapper.log(error, stack: stack);
      return const Result.error(UnknownException());
    }
  }

  Options _mergeOptions(String method, Options? options) {
    options ??= Options();
    options.method = method;
    return options;
  }

  String _getUrlRequest(BaseUrlType baseUrlType, String path) {
    String baseUrl = '';
    switch (baseUrlType) {
      case BaseUrlType.app:

        /// Currently, no base url for app.
        baseUrl = '';

      // final env = AppConfig().env;
      // switch (env) {
      //   case AppEnv.dev:
      //   case AppEnv.prod:
      // }
      case BaseUrlType.other:
        baseUrl = '';
    }
    assert(
      baseUrl.isNotEmpty &&
          path.isNotEmpty &&
          !path.contains('http') &&
          path.startsWith('/'),
    );
    return '$baseUrl$path';
  }
}

extension _DioExceptionExt on DioException {
  AppException get asAppException {
    switch (type) {
      case DioExceptionType.cancel:
        return const RemoteException.cancel();
      case DioExceptionType.connectionTimeout:
        return const RemoteException.connectionTimeout();
      case DioExceptionType.connectionError:
        return const NetworkException();
      case DioExceptionType.receiveTimeout:
        return const RemoteException.receiveTimeout();
      case DioExceptionType.sendTimeout:
        return const RemoteException.sendTimeout();
      case DioExceptionType.badResponse:
        if (response?.statusCode == 401) {
          return const SessionExpiredException();
        }
        return RemoteException.badResponse(
          statusCode: response?.statusCode ?? 0,
          message: '${response?.data}',
        );
      default:
        return const UnknownException();
    }
  }
}
