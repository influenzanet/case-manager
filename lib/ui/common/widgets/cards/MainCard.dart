import 'package:case_manager/ui/common/widgets/layout/BreakPoint.dart';
import 'package:case_manager/ui/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  final Widget child;

  MainCard({@required this.child});

  @override
  Widget build(BuildContext context) {
    var noBackground = noBackgroundBreakPoint(context);
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: noBackground ? AppTheme.noBackgroundSpacing : AppTheme.spacing),
        child: Container(
          color: AppTheme.themeData.cardColor,
          padding: EdgeInsets.all(noBackground ? AppTheme.noBackgroundSpacing : AppTheme.spacing),
          child: Container(
            constraints: BoxConstraints(maxWidth: AppTheme.cardWidth),
            child: child,
          ),
        ),
      ),
    );
  }
}
