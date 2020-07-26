import 'package:case_manager/state/AppProvider.dart';
import 'package:case_manager/state/Storage.dart';
import 'package:case_manager/ui/pages/LoginPage.dart';
import 'package:case_manager/ui/common/routes/AppRoutes.dart';
import 'package:case_manager/ui/pages/home/HomeNavigator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'config/Config.dart';

void main() async {
  await initialize();
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: MyApp(),
    ),
  );
}

Future initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Config.initialize();
  await Storage.initialize();
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey();

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
      navigatorKey: navigatorKey,
      initialRoute: AppRoutes.login,
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;

        switch (settings.name) {
          case AppRoutes.home:
            builder = (BuildContext _) => HomeNavigator();
            break;
          case AppRoutes.login:
            builder = (BuildContext _) => LoginPage();
            break;
          default:
            builder = (BuildContext _) => LoginPage();
        }

        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
