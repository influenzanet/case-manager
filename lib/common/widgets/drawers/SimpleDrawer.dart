import "package:flutter/material.dart";

class SimpleDrawer extends StatefulWidget {
  @override
  _SimpleDrawerState createState() => _SimpleDrawerState();
}

class _SimpleDrawerState extends State<SimpleDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
