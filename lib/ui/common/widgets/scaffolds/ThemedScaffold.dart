import 'dart:math';

import 'package:case_manager/ui/common/widgets/app-bars/ThemedAppBar.dart';
import 'package:case_manager/ui/common/widgets/images/SvgImage.dart';
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
                final appBarHeight = appBar.getPlannedHeight();
                final screenHeight = viewportConstraints.maxHeight + appBarHeight;
                final screenWidth = viewportConstraints.maxWidth;

                final screenFactor = min(screenHeight, screenWidth);

                final imageHeight = screenFactor * 2.1;
                final imageWidth = imageHeight;

                final excessHeight = imageHeight - screenHeight;
                final excessWidth = imageWidth - screenWidth;

                return Stack(
                  fit: StackFit.expand,
                  children: [
                    Positioned.fromRect(
                      rect: Rect.fromLTWH(Alignment.topLeft.x - excessWidth / 2,
                          Alignment.topLeft.y - appBarHeight - excessHeight / 2, imageWidth, imageHeight),
                      child: svgImageAsset(
                        "images/logos/ConenoLogo.svg",
                        color: Color(0xff606060),
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
