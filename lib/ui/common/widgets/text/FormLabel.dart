import 'package:case_manager/ui/common/widgets/text/Paragraph.dart';
import 'package:case_manager/ui/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class FormLabel extends Paragraph {
  FormLabel(String text)
      : super(
          text,
          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          AppTheme.labelSpacing,
        );
}
