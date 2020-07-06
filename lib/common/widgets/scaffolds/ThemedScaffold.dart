import 'package:flutter/material.dart';

class ThemedScaffold extends Scaffold {
  ThemedScaffold({PreferredSizeWidget appBar, Widget drawer, Widget body})
      : super(
            appBar: appBar,
            drawer: drawer,
            body: SafeArea(
              child: body,
            ));

  ThemedScaffold.scrollable(BuildContext context, {PreferredSizeWidget appBar, Widget drawer, Widget body})
      : super(
            appBar: appBar,
            drawer: drawer,
            body: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints viewportConstraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(minHeight: viewportConstraints.maxHeight - _toolbarHeight(appBar != null)),
                    child: body,
                  ),
                );
              },
            ));

  static double _toolbarHeight(bool toolbarExits) {
    return (toolbarExits) ? kToolbarHeight : 0;
  }
}
