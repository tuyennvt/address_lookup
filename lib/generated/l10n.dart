// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `vi`
  String get _locale {
    return Intl.message('vi', name: '_locale', desc: '', args: []);
  }

  /// `My Flutter`
  String get app_name {
    return Intl.message('My Flutter', name: 'app_name', desc: '', args: []);
  }

  /// `Đồng ý`
  String get common_agree {
    return Intl.message('Đồng ý', name: 'common_agree', desc: '', args: []);
  }

  /// `Xác nhận`
  String get common_confirm {
    return Intl.message('Xác nhận', name: 'common_confirm', desc: '', args: []);
  }

  /// `Lưu`
  String get common_save {
    return Intl.message('Lưu', name: 'common_save', desc: '', args: []);
  }

  /// `Huỷ`
  String get common_cancel {
    return Intl.message('Huỷ', name: 'common_cancel', desc: '', args: []);
  }

  /// `Bỏ qua`
  String get common_skip {
    return Intl.message('Bỏ qua', name: 'common_skip', desc: '', args: []);
  }

  /// `Thông báo`
  String get common_notify {
    return Intl.message('Thông báo', name: 'common_notify', desc: '', args: []);
  }

  /// `Đóng`
  String get common_close {
    return Intl.message('Đóng', name: 'common_close', desc: '', args: []);
  }

  /// `Thử lại`
  String get common_retry {
    return Intl.message('Thử lại', name: 'common_retry', desc: '', args: []);
  }

  /// `Đang xử lý`
  String get commonDialog_processing_title {
    return Intl.message(
      'Đang xử lý',
      name: 'commonDialog_processing_title',
      desc: '',
      args: [],
    );
  }

  /// `Phiên làm việc đã hết hạn`
  String get exception_sessionExpired_message {
    return Intl.message(
      'Phiên làm việc đã hết hạn',
      name: 'exception_sessionExpired_message',
      desc: '',
      args: [],
    );
  }

  /// `Dữ liệu không đúng định dạng`
  String get exception_formatData_message {
    return Intl.message(
      'Dữ liệu không đúng định dạng',
      name: 'exception_formatData_message',
      desc: '',
      args: [],
    );
  }

  /// `Lỗi kết nối mạng`
  String get exception_network_message {
    return Intl.message(
      'Lỗi kết nối mạng',
      name: 'exception_network_message',
      desc: '',
      args: [],
    );
  }

  /// `Kết nối mạng đã hết thời gian`
  String get exception_connectionTimeout_message {
    return Intl.message(
      'Kết nối mạng đã hết thời gian',
      name: 'exception_connectionTimeout_message',
      desc: '',
      args: [],
    );
  }

  /// `Không nhận được dữ liệu từ máy chủ`
  String get exception_receiveTimeout_message {
    return Intl.message(
      'Không nhận được dữ liệu từ máy chủ',
      name: 'exception_receiveTimeout_message',
      desc: '',
      args: [],
    );
  }

  /// `Không gửi được dữ liệu đến máy chủ`
  String get exception_sendTimeout_message {
    return Intl.message(
      'Không gửi được dữ liệu đến máy chủ',
      name: 'exception_sendTimeout_message',
      desc: '',
      args: [],
    );
  }

  /// `Dữ liệu trả về không đúng`
  String get exception_badResponse_message {
    return Intl.message(
      'Dữ liệu trả về không đúng',
      name: 'exception_badResponse_message',
      desc: '',
      args: [],
    );
  }

  /// `Đã xảy ra lỗi`
  String get exception_unknown_message {
    return Intl.message(
      'Đã xảy ra lỗi',
      name: 'exception_unknown_message',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'vi'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
