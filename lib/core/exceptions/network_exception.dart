import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import 'app_exception.dart';

class NetworkException extends AppException {
  const NetworkException();

  @override
  String getMessage(BuildContext context) =>
      S.of(context).exception_network_message;
}
