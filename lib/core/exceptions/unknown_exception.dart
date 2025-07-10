import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import 'app_exception.dart';

class UnknownException implements AppException {
  const UnknownException();

  @override
  String getMessage(BuildContext context) =>
      S.of(context).exception_unknown_message;
}
