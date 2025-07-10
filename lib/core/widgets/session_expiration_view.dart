import 'package:flutter/material.dart';

import '../../config/theme/app_text_styles.dart';
import '../../generated/assets.dart';
import '../exceptions/session_expired_exception.dart';

class SessionExpirationView extends StatelessWidget {
  const SessionExpirationView({super.key, required this.exception});

  final SessionExpiredException exception;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(Assets.imagesError, width: 128),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              exception.getMessage(context),
              style: AppTextStyles.titleLarge(),
              textAlign: TextAlign.center,
            ),
          ),
          // const SizedBox(height: 4),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 16),
          //   child: Text(
          //     'Vui lòng đăng nhập lại để tiếp tục sử dụng',
          //     style: AppTextStyles.bodyLarge(),
          //     textAlign: TextAlign.center,
          //   ),
          // ),
          // const SizedBox(height: 8),
          // AppFilledButton(onPressed: () {}, label: 'Đăng nhập lại'),
        ],
      ),
    );
  }
}

class SessionExpirationWidget extends StatelessWidget {
  const SessionExpirationWidget({super.key, required this.exception});

  final SessionExpiredException exception;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: 36,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              exception.getMessage(context),
              style: AppTextStyles.bodyLarge(),
            ),
            const SizedBox(width: 4),
            const Icon(Icons.login_rounded),
          ],
        ),
      ),
    );
  }
}
