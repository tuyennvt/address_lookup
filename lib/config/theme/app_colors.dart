import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
}

extension ColorSchemeExt on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
