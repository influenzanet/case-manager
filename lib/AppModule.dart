import 'package:case_manager/state/app/AppNotifier.dart';
import 'package:case_manager/ui/common/routes/AppRoutes.dart';
import 'package:case_manager/ui/pages/home/HomeModule.dart';
import 'package:case_manager/ui/pages/home/RedirectPage.dart';
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
        Router(AppRoutes.root, child: (_, __) => RedirectPage()),
        Router(AppRoutes.login, child: (_, __) => LoginPage()),
        Router(AppRoutes.home, module: HomeModule()),
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
        fontFamily: "Lato",
        primarySwatch: Colors.blue,
        canvasColor: Color(0xff646464),
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: Color(0xFF0091AC),
          textTheme: TextTheme(
              headline6: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
              button: TextStyle(fontSize: 24, color: Colors.white),
              caption: TextStyle(fontSize: 18, color: Color(0xffCBCBCB))),
        ),
        cardColor: Colors.white,
        bottomAppBarColor: Color(0xff505050),
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
