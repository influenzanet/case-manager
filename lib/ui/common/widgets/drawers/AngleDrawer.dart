import 'package:case_manager/ui/common/widgets/buttons/AppBarButton.dart';
import 'package:case_manager/ui/common/widgets/images/FooterImage.dart';
import 'package:case_manager/ui/common/widgets/layout/Spacing.dart';
import 'package:case_manager/ui/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class AngleDrawer extends StatelessWidget {
  final List<AppBarButton> _actions;

  AngleDrawer(this._actions);

  double _drawerBottomCut(double screenHeight) {
    var cutFactor = screenHeight / 1080;
    var cutAmount = 100 * cutFactor;
    return cutAmount;
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Theme(
      data: theme.copyWith(canvasColor: theme.appBarTheme.color),
      child: ClipPath(
        clipper: AngleClipper(_drawerBottomCut),
        child: SizedBox(
          width: AppTheme.drawerWidth,
          child: Drawer(
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: AppTheme.spacing),
              child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                ..._actions,
                Spacer(),
                Row(
                  children: [
                    Spacing.horizontal(width: _drawerBottomCut(MediaQuery.of(context).size.height - AppTheme.spacing)),
                    Expanded(child: FooterImage(theme.appBarTheme.actionsIconTheme.color)),
                  ],
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

class AngleClipper extends CustomClipper<Path> {
  final double Function(double height) _getBottomCut;

  AngleClipper(this._getBottomCut);

  @override
  Path getClip(Size size) {
    var path = Path();

    path.addPolygon([
      Offset(0, 0),
      Offset(_getBottomCut(size.height), size.height),
      Offset(size.width, size.height),
      Offset(size.width, 0),
    ], true);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
