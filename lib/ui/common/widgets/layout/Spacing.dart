import 'package:case_manager/ui/common/widgets/layout/BreakPoint.dart';
import 'package:case_manager/ui/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class Spacing extends StatelessWidget {
  final double width;
  final double height;

  Spacing({this.width: AppTheme.spacing, this.height: AppTheme.spacing});

  factory Spacing.uniform(double size) {
    return Spacing(width: size, height: size);
  }

  factory Spacing.horizontal({width: AppTheme.spacing}) {
    return Spacing(
      width: width,
      height: 0,
    );
  }

  factory Spacing.vertical({height: AppTheme.spacing}) {
    return Spacing(
      width: 0,
      height: height,
    );
  }

  factory Spacing.responsive(BuildContext context) {
    return Spacing.uniform(noBackgroundBreakPoint(context) ? AppTheme.noBackgroundSpacing : AppTheme.spacing);
  }

  factory Spacing.scaled(double factor) {
    return Spacing(width: AppTheme.spacing * factor, height: AppTheme.spacing * factor);
  }

  factory Spacing.scaledHorizontal(double factor) {
    return Spacing(width: AppTheme.spacing * factor, height: 0);
  }

  factory Spacing.scaledVertical(double factor) {
    return Spacing(width: 0, height: AppTheme.spacing * factor);
  }

  factory Spacing.headline() {
    return Spacing.vertical(height: AppTheme.headlineSpacing);
  }

  factory Spacing.formElement() {
    return Spacing.vertical(height: AppTheme.formElementSpacing);
  }

  factory Spacing.label() {
    return Spacing.vertical(height: AppTheme.labelSpacing);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
    );
  }
}
