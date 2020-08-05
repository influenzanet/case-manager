import 'package:case_manager/ui/common/widgets/app-bars/ThemedAppBar.dart';
import 'package:case_manager/ui/common/widgets/buttons/AppBarButton.dart';

class UnauthAppBar extends ThemedAppBar {
  UnauthAppBar()
      : super([
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
        ]);
}
