import 'package:case_manager/ui/common/widgets/app-bars/ThemedAppBar.dart';
import 'package:case_manager/ui/common/widgets/buttons/AppBarButton.dart';
import 'package:flutter/material.dart';

class UnauthAppBar extends ThemedAppBar {
  UnauthAppBar(
    BuildContext context,
  ) : super(
          context,
          [
            AppBarButton(
              "Home",
              onPressed: () => {},
            ),
            AppBarButton(
              "Login",
              onPressed: () => {},
            ),
            AppBarButton(
              "About",
              onPressed: () => {},
            )
          ],
        );
}
