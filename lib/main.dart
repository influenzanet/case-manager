import 'package:case_manager/state/AppState.dart';
import 'package:case_manager/ui/pages/LoginPage.dart';
import 'package:case_manager/ui/pages/common/routes/AppRoutes.dart';
import 'package:case_manager/ui/pages/home/SubmissionsPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'config/Config.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MyApp(),
    ),
  );

  initialize();
}

void initialize() async {
  await Config.initialize();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CASE Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryTextTheme: TextTheme(
          headline1: TextStyle(color: Colors.white),
          headline2: TextStyle(color: Colors.white),
          headline3: TextStyle(color: Colors.white),
          headline4: TextStyle(color: Colors.white),
          headline5: TextStyle(color: Colors.white),
          headline6: TextStyle(color: Colors.white),
          button: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
        ),
        bottomAppBarColor: Colors.grey[200],
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
      routes: {
        AppRoutes.login: (BuildContext context) => LoginPage(),
        AppRoutes.submissions: (BuildContext context) => SubmissionsPage(),
      },
    );
  }
}
