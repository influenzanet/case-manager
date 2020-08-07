import 'package:case_manager/ui/theme/AppTheme.dart';
import 'package:flutter/material.dart';

bool breakPoint(BuildContext context, double breakValue) {
  return MediaQuery.of(context).size.width < breakValue;
}

bool drawerBreakPoint(BuildContext context) {
  return breakPoint(context, AppTheme.drawerBreakPoint);
}

bool noBackgroundBreakPoint(BuildContext context) {
  return breakPoint(context, AppTheme.noBackgroundBreakPoint);
}
