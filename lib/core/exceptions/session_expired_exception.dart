import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import 'app_exception.dart';

class SessionExpiredException implements AppException {
  const SessionExpiredException();

  @override
  String getMessage(BuildContext context) =>
      S.of(context).exception_sessionExpired_message;
}
