import 'package:case_manager/ui/common/widgets/buttons/FooterButton.dart';
import 'package:case_manager/ui/common/widgets/images/SvgImage.dart';
import 'package:case_manager/ui/common/widgets/layout/Spacing.dart';
import 'package:case_manager/ui/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      height: 100,
      color: theme.bottomAppBarColor,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppTheme.spacing),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1366),
            child: Row(
              children: [
                FooterButton(text: "Impressum", onPressed: () {}),
                Spacing.horizontal(),
                FooterButton(text: "Privacy Policy", onPressed: () {}),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: svgImageAsset(
                    "assets/images/logos/Coneno.svg",
                    color: theme.appBarTheme.textTheme.caption.color,
                    height: 36,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
