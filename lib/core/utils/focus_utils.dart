import 'package:flutter/material.dart';

extension FocusUtils on BuildContext {
  void unfocus() {
    final currentFocus = FocusScope.of(this);
    if (!currentFocus.hasPrimaryFocus && currentFocus.hasFocus) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }

  void focus(FocusNode focusNode) {
    FocusScope.of(this).requestFocus(focusNode);
  }
}
