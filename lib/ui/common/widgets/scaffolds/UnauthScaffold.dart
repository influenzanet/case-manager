import 'package:case_manager/ui/common/widgets/app-bars/UnauthAppBar.dart';
import 'package:case_manager/ui/common/widgets/scaffolds/BackgroundFooterScaffold.dart';
import 'package:flutter/material.dart';

class UnauthScaffold extends BackgroundFooterScaffold {
  UnauthScaffold(BuildContext context, Widget content) : super(UnauthAppBar(context), content);
}
