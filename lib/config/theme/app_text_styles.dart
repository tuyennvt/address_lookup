import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._();

  static const fontFamily = 'Roboto';

  static TextStyle headlineLarge({Color? color}) => TextStyle(
    color: color,
    fontFamily: fontFamily,
    fontSize: 32,
    height: 40 / 32,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static TextStyle headlineMedium({Color? color}) => TextStyle(
    color: color,
    fontFamily: fontFamily,
    fontSize: 28,
    height: 36 / 28,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static TextStyle headlineSmall({Color? color}) => TextStyle(
    color: color,
    fontFamily: fontFamily,
    fontSize: 24,
    height: 32 / 24,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static TextStyle titleLarge({Color? color}) => TextStyle(
    color: color,
    fontFamily: fontFamily,
    fontSize: 22,
    height: 28 / 22,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static TextStyle titleMedium({Color? color}) => TextStyle(
    color: color,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 24 / 16,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: 0.15,
  );

  static TextStyle titleSmall({Color? color}) => TextStyle(
    color: color,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 20 / 14,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: 0.1,
  );

  static TextStyle labelLarge({Color? color}) => TextStyle(
    color: color,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 20 / 14,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: 0.1,
  );

  static TextStyle labelMedium({Color? color}) => TextStyle(
    color: color,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 12,
    height: 16 / 12,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: 0.5,
  );

  static TextStyle labelSmall({Color? color}) => TextStyle(
    color: color,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 11,
    height: 16 / 11,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: 0.5,
  );

  static TextStyle bodyLarge({Color? color}) => TextStyle(
    color: color,
    fontFamily: fontFamily,
    fontSize: 16,
    height: 24 / 16,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: 0.5,
  );

  static TextStyle bodyMedium({Color? color}) => TextStyle(
    color: color,
    fontFamily: fontFamily,
    fontSize: 14,
    height: 20 / 14,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: 0.25,
  );

  static TextStyle bodySmall({Color? color}) => TextStyle(
    color: color,
    fontFamily: fontFamily,
    fontSize: 12,
    height: 16 / 12,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: 0.4,
  );
}
