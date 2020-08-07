import 'package:case_manager/ui/common/widgets/text/FormLabel.dart';
import 'package:case_manager/ui/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class FormInput extends StatelessWidget {
  final String label;
  final Widget formElement;

  FormInput(this.label, this.formElement);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FormLabel(label),
        Padding(
          padding: const EdgeInsets.only(bottom: AppTheme.formElementSpacing),
          child: formElement,
        ),
      ],
    );
  }
}
