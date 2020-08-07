import 'package:case_manager/ui/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  final Widget child;

  MainCard({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: AppTheme.themeData.cardColor,
        padding: EdgeInsets.all(AppTheme.spacing),
        child: Container(
          constraints: BoxConstraints(maxWidth: AppTheme.cardWidth),
          child: child,
        ),
      ),
    );
  }
}
