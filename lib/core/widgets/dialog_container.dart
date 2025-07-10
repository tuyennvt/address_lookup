import 'package:flutter/material.dart';

import '../../config/theme/app_text_styles.dart';

class DialogContainer extends StatelessWidget {
  const DialogContainer({
    super.key,
    required this.title,
    this.centerTitle = true,
    required this.content,
    this.action,
  });

  final String title;
  final bool centerTitle;
  final Widget content;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SingleChildScrollView(
        child: IntrinsicWidth(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                _DialogTitleWidget(title: title, centerTitle: centerTitle),
                const SizedBox(height: 16),
                content,
                if (action != null) ...{
                  const SizedBox(height: 24),
                  FractionallySizedBox(widthFactor: 1, child: action!),
                },
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _DialogTitleWidget extends StatelessWidget {
  const _DialogTitleWidget({required this.title, required this.centerTitle});

  final String title;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.headlineSmall(),
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      textAlign: centerTitle ? TextAlign.center : TextAlign.left,
    );
  }
}
