import 'package:case_manager/state/Storage.dart';
import 'package:case_manager/AppModule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'config/Config.dart';

void main() async {
  await initialize();
  runApp(ModularApp(module: AppModule()));
}

Future initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Config.initialize();
  await Storage.initialize();
}
