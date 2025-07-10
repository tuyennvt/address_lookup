import 'package:flutter/material.dart';

extension NavigatorUtils on BuildContext {
  Future<T?> push<T extends Object?>(Route<T> route) {
    return Navigator.of(this).push(route);
  }

  Future<T?> pushReplacement<T extends Object?>(Route<T> route) {
    return Navigator.of(this).pushReplacement(route);
  }

  void pop<T extends Object?>([T? result]) {
    return Navigator.of(this).pop(result);
  }

  Future<T?> pushAndRemoveUntil<T extends Object?>(
    Route<T> newRoute,
    RoutePredicate predicate,
  ) {
    return Navigator.of(this).pushAndRemoveUntil(newRoute, predicate);
  }
}
