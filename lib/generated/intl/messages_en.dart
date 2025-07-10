// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "_locale": MessageLookupByLibrary.simpleMessage("en"),
    "app_name": MessageLookupByLibrary.simpleMessage("My Flutter"),
    "commonDialog_processing_title": MessageLookupByLibrary.simpleMessage(
      "Processing",
    ),
    "common_agree": MessageLookupByLibrary.simpleMessage("Agree"),
    "common_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "common_close": MessageLookupByLibrary.simpleMessage("Close"),
    "common_confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
    "common_notify": MessageLookupByLibrary.simpleMessage("Notification"),
    "common_retry": MessageLookupByLibrary.simpleMessage("Retry"),
    "common_save": MessageLookupByLibrary.simpleMessage("Save"),
    "common_skip": MessageLookupByLibrary.simpleMessage("Skip"),
    "exception_badResponse_message": MessageLookupByLibrary.simpleMessage(
      "Invalid response data",
    ),
    "exception_connectionTimeout_message": MessageLookupByLibrary.simpleMessage(
      "Network connection timed out",
    ),
    "exception_formatData_message": MessageLookupByLibrary.simpleMessage(
      "Invalid data format",
    ),
    "exception_network_message": MessageLookupByLibrary.simpleMessage(
      "Network error",
    ),
    "exception_receiveTimeout_message": MessageLookupByLibrary.simpleMessage(
      "No response received from the server",
    ),
    "exception_sendTimeout_message": MessageLookupByLibrary.simpleMessage(
      "Failed to send data to the server",
    ),
    "exception_sessionExpired_message": MessageLookupByLibrary.simpleMessage(
      "Session has expired",
    ),
    "exception_unknown_message": MessageLookupByLibrary.simpleMessage(
      "An error has occurred",
    ),
  };
}
