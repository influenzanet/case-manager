import 'package:case_manager/logic/LoginManager.dart';
import 'package:case_manager/ui/common/routes/AppRoutes.dart';
import 'package:case_manager/ui/common/routes/HomeRoutes.dart';
import 'package:case_manager/ui/common/widgets/pages/LoadingPage.dart';
import 'package:case_manager/ui/common/widgets/pages/NavigatorPage.dart';
import 'package:flutter/material.dart';
import 'SubmissionsPage.dart';

class HomeNavigator extends StatefulWidget {
  @override
  _HomeNavigatorState createState() => _HomeNavigatorState();
}

class _HomeNavigatorState extends State<HomeNavigator> {
  bool returnToLoginPage = false;

  bool _checkAuthentication(BuildContext context) {
    bool hasAccessToken = LoginManager.hasAccessToken(context);
    returnToLoginPage = !hasAccessToken;
    return hasAccessToken;
  }

  @override
  void initState() {
    super.initState();
    if (returnToLoginPage) {
      Navigator.of(context).pushReplacementNamed(AppRoutes.login);
    }
  }

  @override
  Widget build(BuildContext context) {
    return _checkAuthentication(context)
        ? NavigatorPage(
            initialRoute: HomeRoutes.submissions,
            onGenerateRoute: (RouteSettings settings) {
              WidgetBuilder builder;

              switch (settings.name) {
                case HomeRoutes.submissions:
                  builder = (BuildContext _) => SubmissionsPage();
                  break;
                default:
                  builder = (BuildContext _) => SubmissionsPage();
              }

              return MaterialPageRoute(builder: builder, settings: settings);
            },
          )
        : LoadingPage();
  }
}
