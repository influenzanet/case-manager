import 'package:case_manager/ui/common/widgets/buttons/AppBarButton.dart';
import 'package:case_manager/ui/common/widgets/images/FooterImage.dart';
import 'package:case_manager/ui/common/widgets/layout/Spacing.dart';
import 'package:case_manager/ui/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class AngleDrawer extends StatelessWidget {
  final List<AppBarButton> _actions;

  AngleDrawer(this._actions);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Theme(
      data: theme.copyWith(canvasColor: theme.appBarTheme.color),
      child: ClipPath(
        clipper: AngleClipper(),
        child: Drawer(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: AppTheme.spacing),
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              ..._actions,
              Spacer(),
              Row(
                children: [
                  Spacer(),
                  FooterImage(theme.appBarTheme.actionsIconTheme.color),
                  Spacing.horizontal(),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class AngleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var cutFactor = size.height / 1080;

    path.addPolygon([
      Offset(0, 0),
      Offset(size.width * 0.3 * cutFactor, size.height),
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
