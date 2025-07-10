import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import 'crashlytics_wrapper.dart';

class AppUtils {
  AppUtils._();

  static Future<bool> makePhoneCall(String phoneNumber) async {
    final uri = Uri(scheme: 'tel', path: phoneNumber);
    try {
      await launchUrl(uri);
      return true;
    } catch (error, stackTrace) {
      CrashlyticsWrapper.log(error, stack: stackTrace);
      return false;
    }
  }

  static Future<bool> copyText(String text) async {
    try {
      await Clipboard.setData(ClipboardData(text: text));
      return true;
    } catch (error, stackTrace) {
      CrashlyticsWrapper.log(error, stack: stackTrace);
      return false;
    }
  }
}
