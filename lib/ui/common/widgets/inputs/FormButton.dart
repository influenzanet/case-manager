import 'package:case_manager/ui/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  final Widget child;

  FormButton({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AppTheme.spacing - AppTheme.formElementSpacing),
      child: child,
    );
  }
}
