import 'package:flutter/material.dart';

import '../../config/theme/app_text_styles.dart';
import '../utils/focus_utils.dart';

enum AppFilledButtonShape { rectangle, pill }

enum AppFilledButtonSize { small, medium, large }

enum AppFilledButtonType { normal, tonal }

class AppFilledButton extends StatelessWidget {
  const AppFilledButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.shape = AppFilledButtonShape.rectangle,
    this.size = AppFilledButtonSize.large,
    this.type = AppFilledButtonType.normal,
  });

  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final AppFilledButtonShape shape;
  final AppFilledButtonSize size;
  final AppFilledButtonType type;

  @override
  Widget build(BuildContext context) {
    return switch (type) {
      AppFilledButtonType.normal => FilledButton.icon(
        onPressed: onPressed == null ? null : () => _onPressed(context),
        style: _style,
        label: Text(label),
        icon: icon != null ? Icon(icon!) : null,
      ),
      AppFilledButtonType.tonal => FilledButton.tonalIcon(
        onPressed: onPressed == null ? null : () => _onPressed(context),
        style: _style,
        label: Text(label),
        icon: icon != null ? Icon(icon!) : null,
      ),
    };
  }

  void _onPressed(BuildContext context) {
    context.unfocus();
    onPressed?.call();
  }

  ButtonStyle get _style => FilledButton.styleFrom(
    textStyle: _textStyle,
    shape: _shape,
    maximumSize: _maximumSize,
    minimumSize: _minimumSize,
  );

  Size get _maximumSize => switch (size) {
    AppFilledButtonSize.small => const Size(double.maxFinite, 32),
    AppFilledButtonSize.medium => const Size(double.maxFinite, 40),
    AppFilledButtonSize.large => const Size(double.maxFinite, 48),
  };

  Size get _minimumSize => switch (size) {
    AppFilledButtonSize.small => const Size(0, 32),
    AppFilledButtonSize.medium => const Size(0, 40),
    AppFilledButtonSize.large => const Size(0, 48),
  };

  OutlinedBorder? get _shape => switch (shape) {
    AppFilledButtonShape.rectangle => RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    AppFilledButtonShape.pill => null,
  };

  TextStyle get _textStyle => switch (size) {
    AppFilledButtonSize.small => AppTextStyles.labelMedium(),
    AppFilledButtonSize.medium => AppTextStyles.titleMedium(),
    AppFilledButtonSize.large => AppTextStyles.titleMedium(),
  };
}
