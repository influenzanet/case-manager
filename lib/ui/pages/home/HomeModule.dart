import 'package:case_manager/ui/common/route-guards/AuthGuard.dart';
import 'package:case_manager/ui/common/routes/HomeRoutes.dart';
import 'package:case_manager/ui/pages/home/data/SubmissionsPage.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router(HomeRoutes.root, child: (_, __) => authGuard(SubmissionsPage())),
        Router(HomeRoutes.data, child: (_, __) => authGuard(SubmissionsPage())),
      ];
}
