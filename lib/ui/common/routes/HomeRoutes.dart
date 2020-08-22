import 'package:case_manager/ui/common/routes/AppRoutes.dart';

class HomeRoutes {
  static const String root = "/";
  static const String data = "/data";

  static String navigationRoute(String route) => "${AppRoutes.home}$route";
}
