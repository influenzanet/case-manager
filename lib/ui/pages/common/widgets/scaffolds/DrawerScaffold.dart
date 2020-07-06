import 'package:case_manager/ui/pages/common/widgets/drawers/SimpleDrawer.dart';
import "package:flutter/material.dart";

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
        ? Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: theme.canvasColor,
              iconTheme: IconThemeData(color: theme.primaryColor),
            ),
            drawer: SimpleDrawer(),
            body: buildBody(),
          )
        : Scaffold(
            body: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SimpleDrawer(),
                Expanded(
                  child: buildBody(),
                ),
              ],
            ),
          );
  }
}
