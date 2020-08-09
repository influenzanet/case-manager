import 'package:case_manager/ui/common/routes/AppRoutes.dart';
import 'package:case_manager/ui/common/widgets/app-bars/ThemedAppBar.dart';
import 'package:case_manager/ui/common/widgets/buttons/AppBarButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class UnauthAppBar extends ThemedAppBar {
  UnauthAppBar(
    BuildContext context,
  ) : super(
          context,
          [
            AppBarButton(
              "Home",
              onPressed: null,
            ),
            AppBarButton(
              "Login",
              onPressed: () => {Modular.to.pushNamed(AppRoutes.navigationRoute(AppRoutes.login))},
            ),
            AppBarButton(
              "About",
              onPressed: null,
            )
          ],
        );
}
