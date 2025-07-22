import 'package:flutter/material.dart';

import 'app_text_styles.dart';

class AppTheme {
  AppTheme._();

  static ThemeData getLightTheme() => ThemeData(
    useMaterial3: true,
    fontFamily: AppTextStyles.fontFamily,
    colorScheme: _getColorScheme(Brightness.light),
    dividerTheme: _getDividerTheme(),
    datePickerTheme: _getDatePickerTheme(),
    progressIndicatorTheme: _getProgressIndicatorTheme(),
  );

  static ThemeData getDarkTheme() => ThemeData(
    useMaterial3: true,
    fontFamily: AppTextStyles.fontFamily,
    colorScheme: _getColorScheme(Brightness.dark),
    dividerTheme: _getDividerTheme(),
    datePickerTheme: _getDatePickerTheme(),
    progressIndicatorTheme: _getProgressIndicatorTheme(),
  );

  static ColorScheme _getColorScheme(Brightness brightness) =>
      ColorScheme.fromSeed(
        seedColor: Colors.blue,
        brightness: brightness,
      ).copyWith(primary: Colors.blue);

  static DividerThemeData _getDividerTheme() =>
      const DividerThemeData(thickness: 1, space: 1);

  static DatePickerThemeData _getDatePickerTheme() => DatePickerThemeData(
    cancelButtonStyle: OutlinedButton.styleFrom(),
    confirmButtonStyle: FilledButton.styleFrom(),
  );

  static ProgressIndicatorThemeData _getProgressIndicatorTheme() =>
      const ProgressIndicatorThemeData(year2023: false);
}

extension ThemeExtensionX on BuildContext {
  ThemeData get theme => Theme.of(this);
}
