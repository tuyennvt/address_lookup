import 'package:flutter/material.dart';

import '../exceptions/app_exception.dart';
import '../exceptions/network_exception.dart';
import '../exceptions/remote_exception.dart';
import '../exceptions/session_expired_exception.dart';
import 'error_view.dart' as error_view;
import 'network_unavailable_view.dart';
import 'session_expiration_view.dart';

class ExceptionView extends StatelessWidget {
  const ExceptionView({
    super.key,
    required this.exception,
    required this.onRetryPressed,
  });

  final AppException? exception;
  final VoidCallback? onRetryPressed;

  @override
  Widget build(BuildContext context) {
    if (exception == null) {
      return const SizedBox.shrink();
    }
    switch (exception) {
      case NetworkException():
        return NetworkUnavailableView(
          exception: exception as NetworkException,
          onRetryPressed: onRetryPressed,
        );
      case SessionExpiredException():
        return SessionExpirationView(
          exception: exception as SessionExpiredException,
        );
      case RemoteException():
        final child = error_view.ErrorView(
          message: exception!.getMessage(context),
          onRetryPressed: onRetryPressed,
        );
        return switch (exception as RemoteException) {
          Cancel() => const SizedBox.shrink(),
          ConnectionTimeout() => child,
          ReceiveTimeout() => child,
          SendTimeout() => child,
          BadResponse() => child,
          Unknown() => child,
        };
      default:
        return error_view.ErrorView(
          message: exception!.getMessage(context),
          onRetryPressed: onRetryPressed,
        );
    }
  }
}

class ExceptionWidget extends StatelessWidget {
  const ExceptionWidget({
    super.key,
    required this.exception,
    required this.onRetryPressed,
  });

  final AppException? exception;
  final VoidCallback? onRetryPressed;

  @override
  Widget build(BuildContext context) {
    if (exception == null) {
      return const SizedBox.shrink();
    }
    switch (exception) {
      case NetworkException():
        return NetworkUnavailableWidget(
          exception: exception as NetworkException,
        );
      case SessionExpiredException():
        return SessionExpirationWidget(
          exception: exception as SessionExpiredException,
        );
      case RemoteException():
        final child = error_view.ErrorWidget(
          message: exception!.getMessage(context),
          onRetryPressed: onRetryPressed,
        );
        return switch (exception as RemoteException) {
          Cancel() => const SizedBox.shrink(),
          ConnectionTimeout() => child,
          ReceiveTimeout() => child,
          SendTimeout() => child,
          BadResponse() => child,
          Unknown() => child,
        };
      default:
        return error_view.ErrorWidget(
          message: exception!.getMessage(context),
          onRetryPressed: onRetryPressed,
        );
    }
  }
}
