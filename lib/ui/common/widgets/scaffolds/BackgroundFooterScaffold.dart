import 'package:case_manager/ui/common/widgets/app-bars/ThemedAppBar.dart';
import 'package:case_manager/ui/common/widgets/footers/Footer.dart';
import 'package:flutter/material.dart';

import 'BackgroundScaffold.dart';

class BackgroundFooterScaffold extends StatelessWidget {
  final ThemedAppBar appBar;
  final Widget content;

  BackgroundFooterScaffold(this.appBar, this.content);

  @override
  Widget build(BuildContext context) {
    return BackgroundScaffold.scrollable(
      context,
      appBar: appBar,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(),
          content,
          Footer(),
        ],
      ),
    );
  }
}
