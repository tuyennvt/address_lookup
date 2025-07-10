import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

import '../../../generated/l10n.dart';
import 'app_env.dart';

class AppConfig {
  factory AppConfig() => _instance;

  AppConfig._();

  static final _instance = AppConfig._();

  void config({required AppEnv env}) {
    _env = env;
    Intl.defaultLocale = deviceLocale.toString();
  }

  late final AppEnv _env;

  AppEnv get env => _env;

  Locale get deviceLocale => PlatformDispatcher.instance.locale;

  NumberFormat get currencyFormatter =>
      NumberFormat.simpleCurrency(locale: deviceLocale.toString());

  NumberFormat get decimalFormatter =>
      NumberFormat.decimalPattern(deviceLocale.toString());

  DateFormat dateTimeFormatter([String? newPattern]) =>
      DateFormat(newPattern, deviceLocale.toString());

  List<Locale> get supportedLocales => [const Locale('en'), const Locale('vi')];

  Iterable<LocalizationsDelegate<dynamic>> get localizationsDelegates => [
    S.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];
}
