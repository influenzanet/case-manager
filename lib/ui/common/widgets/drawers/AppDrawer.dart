import 'package:case_manager/logic/LoginManager.dart';
import "package:flutter/material.dart";

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            FlatButton(
              child: Text("Logout"),
              onPressed: () {
                LoginManager.logout();
              },
            ),
          ],
        ),
      ),
    );
  }
}
