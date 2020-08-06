import 'package:case_manager/ui/common/widgets/drawers/AppDrawer.dart';
import "package:flutter/material.dart";

import 'BackgroundScaffold.dart';

class DrawerScaffold extends StatelessWidget {
  final String title;
  final Widget body;

  DrawerScaffold(this.title, this.body);

  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline3,
          ),
          body,
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bool mobileLayout = MediaQuery.of(context).size.width < 600;
    return (mobileLayout)
        ? BackgroundScaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: theme.canvasColor,
              iconTheme: IconThemeData(color: theme.primaryColor),
            ),
            drawer: AppDrawer(),
            body: buildBody(context),
          )
        : BackgroundScaffold(
            body: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppDrawer(),
                Expanded(
                  child: buildBody(context),
                ),
              ],
            ),
          );
  }
}
