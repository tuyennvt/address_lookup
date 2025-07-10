import 'dart:async';

import 'package:flutter/widgets.dart';

import 'config/environment/app_config.dart';
import 'config/environment/app_env.dart';
import 'core/di/di_container.dart';
import 'core/di/injection.dart';
import 'core/services/local_database_service.dart';
import 'core/utils/crashlytics_wrapper.dart';
import 'my_app.dart';

Future<void> bootstrap({required AppEnv env}) async {
  WidgetsFlutterBinding.ensureInitialized();

  AppConfig().config(env: env);

  CrashlyticsWrapper.config();

  await configureDependencies();

  await getIt<LocalDatabaseService>().init();

  runApp(const MyApp());
}
