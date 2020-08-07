import 'dart:math';

import 'package:case_manager/ui/common/widgets/app-bars/ThemedAppBar.dart';
import 'package:case_manager/ui/common/widgets/images/SvgImage.dart';
import 'package:case_manager/ui/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class BackgroundScaffold extends Scaffold {
  BackgroundScaffold({PreferredSizeWidget appBar, Widget drawer, Widget endDrawer, Widget body})
      : super(
            appBar: appBar,
            drawer: drawer,
            endDrawer: endDrawer,
            body: SafeArea(
              child: body,
            ));

  BackgroundScaffold.scrollable(BuildContext context,
      {ThemedAppBar appBar, Widget drawer, Widget endDrawer, Widget body})
      : super(
            appBar: appBar,
            drawer: drawer,
            endDrawer: endDrawer,
            body: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints viewportConstraints) {
                final screen = MediaQuery.of(context).size;

                final appBarHeight = screen.height - viewportConstraints.maxHeight;

                final screenFactor = min(screen.height, screen.width);

                final imageHeight = screenFactor * 2.15;
                final imageWidth = imageHeight;

                final excessHeight = imageHeight - screen.height;
                final excessWidth = imageWidth - screen.width;

                return Stack(
                  fit: StackFit.expand,
                  children: [
                    Positioned.fromRect(
                      rect: Rect.fromLTWH(Alignment.topLeft.x - excessWidth / 2,
                          Alignment.topLeft.y - appBarHeight - excessHeight / 2, imageWidth, imageHeight),
                      child: svgImageAsset(
                        "images/logos/ConenoLogo.svg",
                        color: AppTheme.backgroundWaterMarkColor,
                        fit: BoxFit.fill,
                        width: imageWidth,
                        height: imageHeight,
                      ),
                    ),
                    SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(minHeight: viewportConstraints.maxHeight),
                        child: body,
                      ),
                    ),
                  ],
                );
              },
            ));
}
