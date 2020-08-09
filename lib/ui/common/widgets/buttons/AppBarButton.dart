import 'package:case_manager/ui/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  AppBarButton(this.title, {this.onPressed});

  Widget _text(BuildContext context, TextAlign textAlign) {
    var textTheme = Theme.of(context).appBarTheme.textTheme.button;
    return Text(
      title,
      style: onPressed == null ? textTheme.apply(color: AppTheme.disabledAppBarButtonColor) : textTheme,
      textAlign: textAlign,
    );
  }

  @override
  Widget build(BuildContext context) {
    var drawer = Scaffold.of(context).isEndDrawerOpen;

    var padding = drawer
        ? EdgeInsets.only(
            left: AppTheme.drawerLeftPadding, top: AppTheme.actionButtonPadding, bottom: AppTheme.actionButtonPadding)
        : EdgeInsets.zero;
    var textAlign = drawer ? TextAlign.left : TextAlign.center;

    return FlatButton(
      child: drawer
          ? Padding(
              padding: padding,
              child: Row(
                children: [
                  Expanded(child: _text(context, textAlign)),
                ],
              ),
            )
          : _text(context, textAlign),
      onPressed: onPressed,
    );
  }
}
