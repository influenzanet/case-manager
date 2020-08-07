import 'package:case_manager/ui/common/widgets/buttons/AppBarButton.dart';
import 'package:case_manager/ui/common/widgets/drawers/AngleDrawer.dart';
import 'package:case_manager/ui/common/widgets/layout/BreakPoint.dart';
import 'package:case_manager/ui/common/widgets/layout/Spacing.dart';
import 'package:case_manager/ui/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class ThemedAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double _height = 100;
  final List<AppBarButton> _actions;

  ThemedAppBar(this._actions);

  Widget getDrawer() => AngleDrawer(_actions);

  // double getPlannedHeight() => _height;

  Widget _actionWidgets(BuildContext context) {
    var theme = Theme.of(context);

    if (!drawerBreakPoint(context) && !Scaffold.of(context).isEndDrawerOpen) {
      var widgets = new List<Widget>();

      for (int i = 0; i < _actions.length; i++) {
        widgets.add(_actions[i]);
        if (i < _actions.length - 1) widgets.add(Spacing.horizontal());
      }

      return Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [...widgets],
      );
    } else {
      return IconButton(
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
    return Container(
      color: theme.appBarTheme.color,
      height: _height,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppTheme.spacing),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1366),
            child: Row(
              children: [
                Text("CASE ", style: theme.appBarTheme.textTheme.headline6.apply(color: Color(0xff00C1E5))),
                Text("Manager", style: theme.appBarTheme.textTheme.headline6),
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
