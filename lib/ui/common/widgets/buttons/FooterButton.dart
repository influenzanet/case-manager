import 'package:flutter/material.dart';

class FooterButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;

  FooterButton({@required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FlatButton(
      child: Text(text, style: theme.appBarTheme.textTheme.caption),
      onPressed: onPressed,
    );
  }
}
