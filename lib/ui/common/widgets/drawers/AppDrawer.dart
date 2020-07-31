import 'package:case_manager/logic/LoginManager.dart';
import 'package:case_manager/ui/common/routes/HomeRoutes.dart';
import "package:flutter/material.dart";
import 'package:flutter_modular/flutter_modular.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  Widget _drawerItem(BuildContext context, String title, {Color color = Colors.white, String route}) {
    bool enabled = route != null;

    if (!enabled) {
      color = Theme.of(context).disabledColor;
    }

    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyText1.apply(color: color, fontSizeFactor: 1.2, fontWeightDelta: -1),
        textAlign: TextAlign.start,
      ),
      enabled: enabled,
      dense: true,
      onTap: (enabled)
          ? () {
              Modular.to.pushNamed(route);
            }
          : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Drawer(
      elevation: 0,
      child: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 16),
        color: Theme.of(context).primaryColor,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 32, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CASE Manager",
                    style: theme.textTheme.headline5.apply(color: Colors.white),
                  ),
                  Container(height: 16),
                  _drawerItem(context, "SUBMISSIONS", route: HomeRoutes.navigationRoute(HomeRoutes.submissions)),
                ],
              ),
            ),
            Container(height: 16),
            Column(
              children: [
                OutlineButton(
                  borderSide: BorderSide(color: theme.accentTextTheme.button.color, width: 2),
                  padding: EdgeInsets.all(16),
                  child: Text("Logout", style: theme.accentTextTheme.button),
                  onPressed: () {
                    LoginManager.logout();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
