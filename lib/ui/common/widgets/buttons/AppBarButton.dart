import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  AppBarButton(this.title, {this.onPressed});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return FlatButton(
      child: Text(title, style: theme.appBarTheme.textTheme.button),
      onPressed: onPressed,
    );
  }
}
