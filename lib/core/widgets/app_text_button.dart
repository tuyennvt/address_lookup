import 'package:flutter/material.dart';

import '../utils/focus_utils.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.label,
    this.labelStyle,
    this.foregroundColor,
    this.iconColor,
    required this.onPressed,
    this.icon,
  });

  final String label;
  final TextStyle? labelStyle;
  final Color? foregroundColor;
  final Color? iconColor;
  final VoidCallback? onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    if (icon == null) {
      return TextButton(
        onPressed: onPressed == null ? null : () => _onPressed(context),
        style: _style,
        child: Text(label),
      );
    }
    return TextButton.icon(
      onPressed: onPressed == null ? null : () => _onPressed(context),
      label: Text(label),
      icon: Icon(icon),
      style: _style,
    );
  }

  void _onPressed(BuildContext context) {
    context.unfocus();
    onPressed?.call();
  }

  ButtonStyle get _style => TextButton.styleFrom(
    textStyle: labelStyle,
    foregroundColor: foregroundColor,
    iconColor: iconColor,
  );
}
