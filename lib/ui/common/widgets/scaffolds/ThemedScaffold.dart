import 'package:case_manager/ui/common/widgets/app-bars/ThemedAppBar.dart';
import 'package:flutter/material.dart';

class ThemedScaffold extends Scaffold {
  ThemedScaffold({PreferredSizeWidget appBar, Widget drawer, Widget body})
      : super(
            appBar: appBar,
            drawer: drawer,
            body: SafeArea(
              child: body,
            ));

  ThemedScaffold.scrollable(BuildContext context, {ThemedAppBar appBar, Widget drawer, Widget body})
      : super(
            appBar: appBar,
            drawer: drawer,
            body: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints viewportConstraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minHeight: viewportConstraints.maxHeight),
                    child: body,
                  ),
                );
              },
            ));
}
