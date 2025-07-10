import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import 'app_filled_button.dart';
import 'app_outlined_button.dart';

class PositiveNegativeButton extends StatelessWidget {
  const PositiveNegativeButton({
    super.key,
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
    return Row(
      children: [
        Expanded(
          child: AppOutlinedButton(
            onPressed: onNegativePressed,
            label: negativeLabel ?? S.of(context).common_cancel,
            shape: AppOutlinedButtonShape.pill,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: AppFilledButton(
            onPressed: onPositivePressed,
            label: S.of(context).common_agree,
            shape: AppFilledButtonShape.pill,
          ),
        ),
      ],
    );
  }
}
