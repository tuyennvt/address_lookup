import 'dart:developer' as dev;

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

import '../../config/environment/app_config.dart';
import '../../config/environment/app_env.dart';

class CrashlyticsWrapper {
  CrashlyticsWrapper._();

  static Future<void> config() async {
    FlutterError.onError = (errorDetails) {
      logFlutter(errorDetails);
    };

    PlatformDispatcher.instance.onError = (error, stack) {
      log(error, stack: stack);
      return false;
    };
  }

  static Future<void> log(dynamic error, {StackTrace? stack}) async {
    switch (AppConfig().env) {
      case AppEnv.dev:
        dev.log(
          'Error:',
          name: 'CrashlyticsUtils.log',
          error: error,
          stackTrace: stack,
        );
      case AppEnv.prod:
        await FirebaseCrashlytics.instance.recordError(error, stack);
    }
  }

  static Future<void> logFlutter(
    FlutterErrorDetails flutterErrorDetails,
  ) async {
    switch (AppConfig().env) {
      case AppEnv.dev:
        dev.log(
          'Error:',
          name: 'CrashlyticsUtils.logFlutter',
          error: flutterErrorDetails.exception,
          stackTrace: flutterErrorDetails.stack,
        );
      case AppEnv.prod:
        await FirebaseCrashlytics.instance.recordFlutterError(
          flutterErrorDetails,
        );
    }
  }
}
