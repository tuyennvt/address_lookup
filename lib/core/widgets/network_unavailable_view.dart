import 'package:flutter/material.dart';

import '../../config/theme/app_text_styles.dart';
import '../../generated/assets.dart';
import '../../generated/l10n.dart';
import '../exceptions/network_exception.dart';
import 'app_text_button.dart';

class NetworkUnavailableView extends StatelessWidget {
  const NetworkUnavailableView({
    super.key,
    required this.exception,
    this.onRetryPressed,
  });

  final NetworkException exception;
  final VoidCallback? onRetryPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(Assets.imagesNetworkUnavailable, height: 196),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Text(
              exception.getMessage(context),
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

class NetworkUnavailableWidget extends StatelessWidget {
  const NetworkUnavailableWidget({
    super.key,
    required this.exception,
    this.onRetryPressed,
  });

  final NetworkException exception;
  final VoidCallback? onRetryPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(exception.getMessage(context), style: AppTextStyles.bodyLarge()),

          const SizedBox(width: 4),
          const Icon(Icons.refresh_rounded),
        ],
      ),
    );
  }
}
