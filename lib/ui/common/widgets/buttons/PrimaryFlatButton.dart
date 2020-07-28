import 'package:flutter/material.dart';

class PrimaryFlatButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;

  PrimaryFlatButton({@required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FlatButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text, style: theme.primaryTextTheme.button),
      ),
      color: theme.primaryColor,
    );
  }
}
