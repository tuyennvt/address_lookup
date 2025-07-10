import 'package:flutter/material.dart';

import '../../config/theme/app_text_styles.dart';

extension SnackbarUtils on BuildContext {
  void hideCurrentSnackBar() {
    ScaffoldMessenger.of(this).hideCurrentSnackBar();
  }

  void showSnackbar(String message) {
    final snackBar = SnackBar(
      content: Text(message, style: AppTextStyles.bodyLarge()),
      showCloseIcon: true,
    );
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }

  void showSuccessSnackbar(String message) {
    final snackBar = SnackBar(
      content: Text(message, style: AppTextStyles.bodyLarge()),
      showCloseIcon: true,

      backgroundColor: Colors.green,
    );
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }
}
