import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'prefs.dart';

@injectable
class AuthInterceptor extends Interceptor {
  AuthInterceptor(this._prefs);

  final Prefs _prefs;
}
