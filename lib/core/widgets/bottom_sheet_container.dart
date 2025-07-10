import 'package:flutter/material.dart';

import '../../config/theme/app_text_styles.dart';
import 'app_bar_widget.dart';
import 'navigation_button.dart';

class BottomSheetContainer extends StatelessWidget {
  const BottomSheetContainer({
    super.key,
    required this.title,
    this.centerTitle = false,
    required this.content,
  });

  final String title;
  final bool centerTitle;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
      constraints: const BoxConstraints(minHeight: 256),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          AppBarWidget(
            title: Padding(
              padding:
                  centerTitle
                      ? EdgeInsets.zero
                      : const EdgeInsets.only(left: 16),
              child: Text(
                title,
                style: AppTextStyles.titleLarge(),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            centerTitle: centerTitle,
            actions: [
              NavigationButton.close(onPressed: () => Navigator.pop(context)),
            ],
          ),
          Flexible(child: content),
        ],
      ),
    );
  }
}
