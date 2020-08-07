import 'package:case_manager/ui/common/widgets/buttons/FooterButton.dart';
import 'package:case_manager/ui/common/widgets/images/FooterImage.dart';
import 'package:case_manager/ui/common/widgets/images/SvgImage.dart';
import 'package:case_manager/ui/common/widgets/layout/BreakPoint.dart';
import 'package:case_manager/ui/common/widgets/layout/Spacing.dart';
import 'package:case_manager/ui/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var drawer = drawerBreakPoint(context);
    return Container(
      height: drawer ? AppTheme.headerFooterDrawerHeight : AppTheme.headerFooterHeight,
      color: theme.bottomAppBarColor,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppTheme.spacing),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: AppTheme.maxWidth),
            child: Row(
              children: [
                FooterButton(text: "Impressum", onPressed: () {}),
                Spacing.scaledHorizontal(drawer ? 0.5 : 1),
                FooterButton(text: "Privacy Policy", onPressed: () {}),
                Spacer(),
                drawer
                    ? svgImageAsset("images/logos/ConenoLogo.svg",
                        color: theme.appBarTheme.textTheme.bodyText2.color, height: AppTheme.footerImageDrawerHeight)
                    : Padding(
                        padding: const EdgeInsets.only(bottom: AppTheme.footerImageBottomPadding),
                        child: FooterImage(theme.appBarTheme.textTheme.bodyText1.color),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
