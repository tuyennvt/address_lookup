import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import 'app_exception.dart';

class FormatDataException extends AppException {
  const FormatDataException();

  @override
  String getMessage(BuildContext context) =>
      S.of(context).exception_formatData_message;
}
