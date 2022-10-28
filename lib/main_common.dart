import 'package:environment_with_ci_cd/app_widget.dart';
import 'package:environment_with_ci_cd/config_reader.dart';
import 'package:environment_with_ci_cd/environment.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> mainCommon({required String env}) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();

  MaterialColor primaryColor = Colors.blue;
  switch (env) {
    case Environment.dev:
      primaryColor = Colors.blue;
      break;

    case Environment.prod:
      primaryColor = Colors.pink;
      break;
  }
  runApp(Provider<MaterialColor>.value(value: primaryColor, child: MyApp()));
}
