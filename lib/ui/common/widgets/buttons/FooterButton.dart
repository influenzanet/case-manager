import 'package:case_manager/ui/common/widgets/layout/BreakPoint.dart';
import 'package:flutter/material.dart';

class FooterButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;

  FooterButton({@required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FlatButton(
      child: Text(
        text,
        style: noBackgroundBreakPoint(context)
            ? theme.appBarTheme.textTheme.bodyText2
            : theme.appBarTheme.textTheme.bodyText1,
      ),
      onPressed: onPressed,
    );
  }
}
