import 'package:case_manager/ui/common/widgets/layout/Spacing.dart';
import 'package:case_manager/ui/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class ThemedAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double _height = 100;
  final List<Widget> _actions;

  ThemedAppBar(this._actions);

  // double getPlannedHeight() => _height;

  Widget _actionWidgets() {
    var widgets = new List<Widget>();

    for (int i = 0; i < _actions.length; i++) {
      widgets.add(_actions[i]);
      if (i < _actions.length - 1) widgets.add(Spacing.horizontal());
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [...widgets],
    );
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
                _actionWidgets(),
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
