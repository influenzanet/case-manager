import 'package:case_manager/ui/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  final String text;

  Headline(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppTheme.headlineSpacing),
      child: Text(text, style: TextStyle(fontSize: 34, fontWeight: FontWeight.w900)),
    );
  }
}
