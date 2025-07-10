import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';

import '../../config/theme/app_text_styles.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({super.key, this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircularProgressIndicator(),
          if (message.isNotNullOrEmpty) ...{
            const SizedBox(height: 12),
            Text(message!, style: AppTextStyles.bodyLarge()),
          },
        ],
      ),
    );
  }
}

class LoadingLoadMoreWidget extends StatelessWidget {
  const LoadingLoadMoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const LinearProgressIndicator();
  }
}
