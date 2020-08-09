import 'package:case_manager/state/Storage.dart';
import 'package:case_manager/AppModule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl_browser.dart';

import 'api/Api.dart';
import 'config/Config.dart';

void main() async {
  await initialize();
  runApp(ModularApp(module: AppModule()));
}

Future initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  await findSystemLocale();
  await Config.initialize();
  await Storage.initialize();
  await Api.initialize();
}
