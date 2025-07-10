import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../generated/l10n.dart';
import 'app_exception.dart';

part 'remote_exception.freezed.dart';

@freezed
sealed class RemoteException extends AppException with _$RemoteException {
  const factory RemoteException.cancel() = Cancel;

  const factory RemoteException.connectionTimeout() = ConnectionTimeout;

  const factory RemoteException.receiveTimeout() = ReceiveTimeout;

  const factory RemoteException.sendTimeout() = SendTimeout;

  const factory RemoteException.badResponse({
    required int statusCode,
    required String message,
  }) = BadResponse;

  const factory RemoteException.unknown() = Unknown;

  const RemoteException._();

  @override
  String getMessage(BuildContext context) => switch (this) {
    Cancel() => '',
    ConnectionTimeout() => S.of(context).exception_connectionTimeout_message,
    ReceiveTimeout() => S.of(context).exception_receiveTimeout_message,
    SendTimeout() => S.of(context).exception_sendTimeout_message,
    BadResponse() => S.of(context).exception_badResponse_message,
    Unknown() => S.of(context).exception_unknown_message,
  };
}
