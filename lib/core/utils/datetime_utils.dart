import '../../config/environment/app_config.dart';

extension DateTimeUtils on DateTime? {
  String formatDate([String? newPattern]) {
    if (this == null) {
      return '';
    }
    try {
      final dateFormatter = AppConfig().dateTimeFormatter(newPattern);
      return dateFormatter.format(this!);
    } catch (_) {
      return '';
    }
  }

  String formatDateTime([String? newPattern]) {
    if (this == null) {
      return '';
    }
    try {
      final dateFormatter = AppConfig().dateTimeFormatter(newPattern);
      return dateFormatter.format(this!);
    } catch (_) {
      return '';
    }
  }

  bool isSameDayMonthYear(DateTime? other) {
    if (this == null || other == null) {
      return false;
    }

    return this!.year == other.year &&
        this!.month == other.month &&
        this!.day == other.day;
  }

  bool isEarlier(DateTime? other) {
    if (this == null || other == null) {
      return false;
    }
    return this!.isBefore(other);
  }

  bool isLater(DateTime? other) {
    if (this == null || other == null) {
      return false;
    }
    return this!.isAfter(other);
  }
}
