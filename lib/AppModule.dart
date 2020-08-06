import 'package:case_manager/state/app/AppNotifier.dart';
import 'package:case_manager/ui/common/routes/AppRoutes.dart';
import 'package:case_manager/ui/pages/home/HomeModule.dart';
import 'package:case_manager/ui/pages/home/RedirectPage.dart';
import 'package:case_manager/ui/theme/AppTheme.dart';
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
      theme: AppTheme.themeData,
      navigatorKey: Modular.navigatorKey,
      initialRoute: AppRoutes.login,
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
