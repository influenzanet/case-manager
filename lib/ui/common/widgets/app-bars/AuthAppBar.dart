import 'package:case_manager/logic/LoginManager.dart';
import 'package:case_manager/ui/common/widgets/app-bars/ThemedAppBar.dart';
import 'package:case_manager/ui/common/widgets/buttons/AppBarButton.dart';
import 'package:flutter/material.dart';

class AuthAppBar extends ThemedAppBar {
  AuthAppBar(
    BuildContext context,
  ) : super(
          context,
          [
            AppBarButton(
              "Home",
              onPressed: () => {},
            ),
            AppBarButton(
              "Submissions",
              onPressed: () => {},
            ),
            AppBarButton(
              "Studies",
              onPressed: () => {},
            ),
            AppBarButton(
              "Logout",
              onPressed: () => {LoginManager.logout()},
            )
          ],
        );
}
