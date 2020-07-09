import 'package:flutter/material.dart';

class NavigatorPage extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey();

  final String initialRoute;
  final RouteFactory onGenerateRoute;

  NavigatorPage({this.initialRoute, this.onGenerateRoute});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        await navigatorKey.currentState.maybePop();
        return false;
      },
      child: Navigator(
        key: navigatorKey,
        initialRoute: initialRoute,
        onGenerateRoute: onGenerateRoute,
      ),
    );
  }
}
