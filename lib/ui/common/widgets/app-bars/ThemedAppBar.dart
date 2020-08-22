import 'package:case_manager/ui/common/widgets/buttons/AppBarButton.dart';
import 'package:case_manager/ui/common/widgets/drawers/AngleDrawer.dart';
import 'package:case_manager/ui/common/widgets/layout/BreakPoint.dart';
import 'package:case_manager/ui/common/widgets/layout/Spacing.dart';
import 'package:case_manager/ui/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class ThemedAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<AppBarButton> _actions;
  final BuildContext context;

  double get _height =>
      noBackgroundBreakPoint(context) ? AppTheme.headerFooterNoBackgroundHeight : AppTheme.headerFooterHeight;

  ThemedAppBar(this.context, this._actions);

  Widget getDrawer() => AngleDrawer(_actions);

  Widget _actionWidgets(BuildContext context) {
    var theme = Theme.of(context);

    if (!drawerBreakPoint(context) && !Scaffold.of(context).isEndDrawerOpen) {
      var widgets = new List<Widget>();

      for (int i = 0; i < _actions.length; i++) {
        widgets.add(_actions[i]);
        if (i < _actions.length - 1) widgets.add(Spacing.scaledHorizontal(.5));
      }

      return Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [...widgets],
      );
    } else {
      return IconButton(
        padding: EdgeInsets.zero,
        icon: Icon(Icons.menu),
        color: theme.appBarTheme.iconTheme.color,
        iconSize: theme.appBarTheme.iconTheme.size,
        onPressed: Scaffold.of(context).openEndDrawer,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var noBackground = noBackgroundBreakPoint(context);
    var titleStyle = noBackground ? theme.appBarTheme.textTheme.headline6 : theme.appBarTheme.textTheme.headline5;
    var spacing = noBackground ? AppTheme.noBackgroundSpacing : AppTheme.spacing;

    return Container(
      color: theme.appBarTheme.color,
      height: _height,
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(
              left: spacing, right: noBackground ? spacing - AppTheme.noBackgroundSpacingMenuIconFix : spacing),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: AppTheme.maxWidth),
            child: Row(
              children: [
                Text("CASE ", style: titleStyle.apply(color: AppTheme.titleAccentColor)),
                Text("Manager", style: titleStyle),
                Spacer(),
                _actionWidgets(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(_height);
}
