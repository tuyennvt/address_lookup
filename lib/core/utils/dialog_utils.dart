import 'package:flutter/material.dart';

import '../../config/theme/app_text_styles.dart';
import '../../generated/l10n.dart';
import '../exceptions/app_exception.dart';
import '../exceptions/network_exception.dart';
import '../exceptions/remote_exception.dart';
import '../exceptions/session_expired_exception.dart';
import '../widgets/dialog_action.dart';
import '../widgets/dialog_container.dart';
import '../widgets/processing_dialog.dart';

extension DialogUtils on BuildContext {
  Future<T?> showAppDialog<T>({
    required String title,
    required Widget content,
    bool centerTitle = false,
    Widget? action,
  }) async => await showDialog<T?>(
    context: this,
    builder:
        (_) => DialogContainer(
          title: title,
          content: content,
          centerTitle: centerTitle,
          action: action,
        ),
    barrierDismissible: false,
  );

  void hideDialog() => Navigator.pop(this);

  Future<void> showProcessingDialog({String? message}) async {
    return await showGeneralDialog<void>(
      context: this,
      pageBuilder:
          (_, __, ___) => ProcessingDialog(
            message: message ?? S.of(this).commonDialog_processing_title,
          ),
      barrierColor: Colors.black38,
    );
  }

  void hideProcessingDialog() => hideDialog();

  Future<void> showErrorDialog(String error) async => await showAppDialog(
    title: S.of(this).common_notify,
    content: Text(error, style: AppTextStyles.bodyLarge()),
    action: DialogAction.single(
      label: S.of(this).common_close,
      onPressed: hideDialog,
    ),
  );

  Future<void> showNetworkUnavailableDialog(NetworkException exception) async =>
      await showAppDialog(
        title: S.of(this).common_notify,
        content: Text(
          exception.getMessage(this),
          style: AppTextStyles.bodyLarge(),
        ),
        action: DialogAction.single(
          label: S.of(this).common_close,
          onPressed: hideDialog,
        ),
      );

  Future<void> showSessionExpiredDialog(
    SessionExpiredException exception,
  ) async => await showAppDialog(
    title: S.of(this).common_notify,
    content: Text(exception.getMessage(this), style: AppTextStyles.bodyLarge()),
    action: DialogAction.single(
      label: S.of(this).common_notify,
      onPressed: () {
        hideDialog();
        // Navigator.pushAndRemoveUntil(this, SignInPage.route(), (_) => false);
      },
    ),
  );

  Future<void> showExceptionDialog(AppException? exception) async {
    if (exception == null) {
      return;
    }
    switch (exception) {
      case NetworkException():
        showNetworkUnavailableDialog(exception);
      case SessionExpiredException():
        showSessionExpiredDialog(exception);
      case RemoteException():
        switch (exception) {
          case Cancel():
            break;
          default:
            showErrorDialog(exception.getMessage(this));
        }
      default:
        showErrorDialog(exception.getMessage(this));
    }
  }
}
