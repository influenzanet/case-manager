import 'package:case_manager/ui/theme/AppTheme.dart';
import 'package:flutter/material.dart';

import 'SvgImage.dart';

class FooterImage extends StatelessWidget {
  final Color color;

  FooterImage(this.color);

  @override
  Widget build(BuildContext context) {
    return svgImageAsset(
      "assets/images/logos/Coneno.svg",
      color: color,
      height: AppTheme.footerImageHeight,
    );
  }
}
