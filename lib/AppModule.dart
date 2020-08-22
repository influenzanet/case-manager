import 'package:case_manager/state/app/AppNotifier.dart';
import 'package:case_manager/ui/common/routes/AppRoutes.dart';
import 'package:case_manager/ui/pages/home/HomeModule.dart';
import 'package:case_manager/ui/pages/home/RedirectPage.dart';
import 'package:case_manager/ui/theme/AppTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'ui/pages/LoginPage.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((_) => AppNotifier(), lazy: false),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(AppRoutes.root, child: (_, __) => RedirectPage()),
        ModularRouter(AppRoutes.login, child: (_, __) => LoginPage()),
        ModularRouter(AppRoutes.home, module: HomeModule()),
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
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale("en", "US"),
        const Locale("de", "DE"),
      ],
      navigatorKey: Modular.navigatorKey,
      initialRoute: AppRoutes.login,
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
