import 'package:flutter/material.dart';

abstract class AppException implements Exception {
  const AppException();

  String getMessage(BuildContext context);
}
