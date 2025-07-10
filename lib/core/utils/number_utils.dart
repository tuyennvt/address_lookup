import 'dart:math' as math;

import '../../config/environment/app_config.dart';

extension NumberUtils on num? {
  String formatCurrency() {
    if (this == null) {
      return '';
    }
    final currencyFormatter = AppConfig().currencyFormatter;
    return currencyFormatter.format(this!);
  }

  String formatDecimal() {
    if (this == null) {
      return '';
    }
    final decimalFormatter = AppConfig().decimalFormatter;
    return decimalFormatter.format(this!);
  }

  num? roundHalfUp([int decimalDigits = 3]) {
    if (this == null) {
      return this;
    }
    final factor = math.pow(10, decimalDigits).toDouble();
    return (this! * factor).round().toDouble() / factor;
  }
}
