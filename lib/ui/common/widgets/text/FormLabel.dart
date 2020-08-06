import 'package:case_manager/ui/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class FormLabel extends StatelessWidget {
  final String text;

  FormLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppTheme.labelSpacing),
      child: Text(text, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
    );
  }
}
