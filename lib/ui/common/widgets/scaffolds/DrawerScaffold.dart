import 'package:case_manager/ui/common/widgets/drawers/AppDrawer.dart';
import "package:flutter/material.dart";

import 'ThemedScaffold.dart';

class DrawerScaffold extends StatelessWidget {
  final Widget body;

  DrawerScaffold({this.body});

  Widget buildBody() {
    return SingleChildScrollView(child: body);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bool mobileLayout = MediaQuery.of(context).size.width < 600;
    return (mobileLayout)
        ? ThemedScaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: theme.canvasColor,
              iconTheme: IconThemeData(color: theme.primaryColor),
            ),
            drawer: AppDrawer(),
            body: buildBody(),
          )
        : ThemedScaffold(
            body: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppDrawer(),
                Expanded(
                  child: buildBody(),
                ),
              ],
            ),
          );
  }
}
