import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';

import 'app_filled_button.dart';
import 'positive_negative_button.dart';

class DialogAction extends StatelessWidget {
  factory DialogAction.single({
    required String label,
    required VoidCallback onPressed,
  }) => DialogAction._(positiveLabel: label, onPositivePressed: onPressed);

  factory DialogAction.positiveNegative({
    required String positiveLabel,
    required VoidCallback onPositivePressed,
    required String negativeLabel,
    required VoidCallback onNegativePressed,
  }) => DialogAction._(
    positiveLabel: positiveLabel,
    onPositivePressed: onPositivePressed,
    negativeLabel: negativeLabel,
    onNegativePressed: onNegativePressed,
  );

  const DialogAction._({
    this.positiveLabel,
    this.onPositivePressed,
    this.negativeLabel,
    this.onNegativePressed,
  });

  final String? positiveLabel;
  final VoidCallback? onPositivePressed;
  final String? negativeLabel;
  final VoidCallback? onNegativePressed;

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (negativeLabel.isNotNullOrEmpty && onNegativePressed != null) {
      child = PositiveNegativeButton(
        positiveLabel: positiveLabel!,
        onPositivePressed: onPositivePressed,
        negativeLabel: negativeLabel!,
        onNegativePressed: onNegativePressed,
      );
    } else {
      child = Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AppFilledButton(
            onPressed: onPositivePressed,
            label: positiveLabel!,
            shape: AppFilledButtonShape.pill,
          ),
        ],
      );
    }
    return child;
  }
}
