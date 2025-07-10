import 'package:flutter/material.dart';

import '../../config/theme/app_text_styles.dart';
import '../utils/focus_utils.dart';

enum AppOutlinedButtonShape { rectangle, pill }

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.trailingIcon,
    this.shape = AppOutlinedButtonShape.rectangle,
  });

  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final IconData? trailingIcon;
  final AppOutlinedButtonShape shape;

  @override
  Widget build(BuildContext context) {
    if (icon == null) {
      return OutlinedButton(
        onPressed: onPressed == null ? null : () => _onPressed(context),
        style: _style(context),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(label),
            if (trailingIcon != null) ...{
              const SizedBox(width: 8),
              Icon(trailingIcon),
            },
          ],
        ),
      );
    }
    return OutlinedButton.icon(
      onPressed: onPressed == null ? null : () => _onPressed(context),
      style: _style(context),
      label: Text(label),
      icon: Icon(icon!),
    );
  }

  void _onPressed(BuildContext context) {
    context.unfocus();
    onPressed?.call();
  }

  ButtonStyle _style(BuildContext context) => OutlinedButton.styleFrom(
    textStyle: AppTextStyles.titleMedium(),
    shape:
        shape == AppOutlinedButtonShape.rectangle
            ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
            : null,
    maximumSize: const Size(double.maxFinite, 48),
    minimumSize: const Size(0, 48),
  );
}
