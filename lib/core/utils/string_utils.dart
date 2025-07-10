import '../../config/environment/app_config.dart';

extension StringUtils on String? {
  static final _regexAllSpace = RegExp(r'[^\S\n]+');

  bool get isNullOrBlank {
    if (this == null) {
      return true;
    }
    return this!.isEmpty;
  }

  String standardize() {
    if (isNullOrBlank) {
      return '';
    }
    return this!.replaceAll(_regexAllSpace, ' ').trim();
  }

  String capitalize() {
    if (isNullOrBlank) {
      return '';
    }
    return '${this![0].toUpperCase()}${this!.substring(1)}';
  }

  DateTime? toDateTime([String? newPattern]) {
    if (isNullOrBlank) {
      return null;
    }
    try {
      return AppConfig().dateTimeFormatter(newPattern).parse(this!);
    } catch (_) {
      return DateTime.tryParse(this!);
    }
  }

  num? toNumber() {
    if (isNullOrBlank) {
      return null;
    }
    return num.tryParse(this!);
  }

  bool toBool({bool defaultValue = false}) {
    if (isNullOrBlank) {
      return defaultValue;
    }
    return bool.tryParse(this!, caseSensitive: false) ?? defaultValue;
  }
}
