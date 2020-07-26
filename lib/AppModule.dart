import 'package:case_manager/state/App/AppNotifier.dart';
import 'package:case_manager/ui/common/routes/AppRoutes.dart';
import 'package:case_manager/ui/pages/home/SubmissionsPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'ui/pages/LoginPage.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((_) => AppNotifier(), lazy: false),
      ];

  @override
  List<Router> get routers => [
        Router(AppRoutes.root, child: (_, __) => LoginPage()),
        Router(AppRoutes.login, child: (_, __) => LoginPage()),
        Router(AppRoutes.home, child: (_, __) => SubmissionsPage()),
      ];

  @override
  Widget get bootstrap => AppWidget();
}

class AppWidget extends StatelessWidget {
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
      navigatorKey: Modular.navigatorKey,
      initialRoute: AppRoutes.login,
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
