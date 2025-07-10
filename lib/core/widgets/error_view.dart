import 'package:flutter/material.dart';

import '../../config/theme/app_text_styles.dart';
import '../../generated/assets.dart';
import '../../generated/l10n.dart';
import 'app_text_button.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key, required this.message, this.onRetryPressed});

  final String message;
  final VoidCallback? onRetryPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(Assets.imagesError, width: 196),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Text(
              message,
              style: AppTextStyles.bodyLarge(),
              textAlign: TextAlign.center,
            ),
          ),
          if (onRetryPressed != null) ...{
            AppTextButton(
              onPressed: onRetryPressed,
              label: S.of(context).common_retry,
              icon: Icons.refresh_rounded,
            ),
          },
        ],
      ),
    );
  }
}

class ErrorWidget extends StatelessWidget {
  const ErrorWidget({super.key, required this.message, this.onRetryPressed});

  final String message;
  final VoidCallback? onRetryPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onRetryPressed,
      child: SizedBox(
        height: 36,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(message, style: AppTextStyles.bodyLarge()),
            const SizedBox(width: 4),
            const Icon(Icons.refresh_rounded),
          ],
        ),
      ),
    );
  }
}
