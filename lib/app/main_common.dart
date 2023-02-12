import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_scorecard/app/env.dart';
import 'package:flutter_scorecard/core/di/app_injector.dart';

Future<void> mainCommon({required Flavor flavor}) async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Forcing only portrait orientation
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await AppInjector().configure(flavor);
}
