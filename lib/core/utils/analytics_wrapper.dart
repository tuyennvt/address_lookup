import 'package:firebase_analytics/firebase_analytics.dart';

import 'crashlytics_wrapper.dart';

enum AnalyticsEvent { viewPage }

class AnalyticsWrapper {
  const AnalyticsWrapper._();

  static Future<void> log({
    required AnalyticsEvent event,
    Map<String, Object>? parameters,
  }) async {
    try {
      FirebaseAnalytics.instance.logEvent(
        name: event.name,
        parameters: parameters,
      );
    } catch (error, stackTrace) {
      CrashlyticsWrapper.log(error, stack: stackTrace);
    }
  }
}
