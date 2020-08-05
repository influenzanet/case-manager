import 'package:case_manager/ui/common/route-guards/AuthGuard.dart';
import 'package:case_manager/ui/common/routes/HomeRoutes.dart';
import 'package:case_manager/ui/pages/home/SubmissionsPage.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router(HomeRoutes.root, child: (_, __) => authGuard(SubmissionsPage())),
        Router(HomeRoutes.submissions, child: (_, __) => authGuard(SubmissionsPage())),
      ];
}
