import 'package:case_manager/logic/LoginManager.dart';
import 'package:case_manager/ui/common/routes/HomeRoutes.dart';
import 'package:case_manager/ui/common/widgets/app-bars/ThemedAppBar.dart';
import 'package:case_manager/ui/common/widgets/buttons/AppBarButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthAppBar extends ThemedAppBar {
  AuthAppBar(
    BuildContext context,
  ) : super(
          context,
          [
            AppBarButton(
              "Home",
              onPressed: () => {Modular.to.pushNamed(HomeRoutes.navigationRoute(HomeRoutes.root))},
            ),
            AppBarButton(
              "Data",
              onPressed: () => {Modular.to.pushNamed(HomeRoutes.navigationRoute(HomeRoutes.data))},
            ),
            AppBarButton(
              "Studies",
              onPressed: null,
            ),
            AppBarButton(
              "Users",
              onPressed: null,
            ),
            AppBarButton(
              "Logout",
              onPressed: () => {LoginManager.logout()},
            )
          ],
        );
}
