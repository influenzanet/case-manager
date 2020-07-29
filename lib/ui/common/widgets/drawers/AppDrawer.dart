import 'package:case_manager/logic/LoginManager.dart';
import "package:flutter/material.dart";

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Drawer(
      elevation: 0,
      child: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlineButton(
                borderSide: BorderSide(color: theme.accentTextTheme.button.color, width: 2),
                padding: EdgeInsets.all(16),
                child: Text("Logout", style: theme.accentTextTheme.button),
                onPressed: () {
                  LoginManager.logout();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
