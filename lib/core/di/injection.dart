import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

@InjectableInit(initializerName: 'initialize')
Future<void> configureDependencies() async => await GetIt.I.initialize();
