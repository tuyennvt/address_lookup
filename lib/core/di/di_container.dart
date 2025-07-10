import 'package:get_it/get_it.dart';

import '../utils/crashlytics_wrapper.dart';

GetIt getIt = GetIt.I;

Future<void> resetLazySingleton<T extends Object>() async {
  try {
    if (getIt.isRegistered<T>()) {
      await getIt.resetLazySingleton<T>();
    }
  } catch (error, stack) {
    CrashlyticsWrapper.log(error, stack: stack);
  }
}
