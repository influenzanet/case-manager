import 'package:case_manager/ui/common/widgets/images/SvgImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      height: 100,
      color: theme.bottomAppBarColor,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 42),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1366),
            child: Row(
              children: [
                FlatButton(
                  child: Text("Impressum", style: theme.appBarTheme.textTheme.caption),
                  onPressed: () {},
                ),
                Container(width: 42),
                FlatButton(
                  child: Text("Privacy Policy", style: theme.appBarTheme.textTheme.caption),
                  onPressed: () {},
                ),
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
