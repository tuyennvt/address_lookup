import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';

import '../../config/theme/app_colors.dart';
import '../../config/theme/app_text_styles.dart';
import '../../generated/assets.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({super.key, this.message, this.child});

  final String? message;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(Assets.imagesEmpty, height: 196),
          if (message.isNotNullOrBlank) ...{
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: Text(
                message!,
                style: AppTextStyles.titleMedium(
                  color: context.colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          },
          if (child != null) ...{child!},
        ],
      ),
    );
  }
}
