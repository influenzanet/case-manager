import 'package:flutter/material.dart';

class Paragraph extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final double trailingSpacing;

  Paragraph(this.text, this.textStyle, this.trailingSpacing);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: trailingSpacing),
      child: Text(text, style: textStyle),
    );
  }
}
