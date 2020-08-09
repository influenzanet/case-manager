import 'package:case_manager/ui/common/widgets/app-bars/AuthAppBar.dart';
import 'package:case_manager/ui/common/widgets/scaffolds/BackgroundFooterScaffold.dart';
import 'package:flutter/material.dart';

class AuthScaffold extends BackgroundFooterScaffold {
  AuthScaffold(BuildContext context, Widget content) : super(AuthAppBar(context), content);
}
