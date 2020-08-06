import 'package:case_manager/ui/common/widgets/text/Paragraph.dart';
import 'package:case_manager/ui/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class Headline extends Paragraph {
  Headline(String text)
      : super(
          text,
          TextStyle(fontSize: 34, fontWeight: FontWeight.w900),
          AppTheme.headlineSpacing,
        );
}
