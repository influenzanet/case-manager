import 'package:global_configuration/global_configuration.dart';

class Api {
  static String _apiBaseUrl = "";

  static initialize() {
    _apiBaseUrl = GlobalConfiguration().getString("API_BASE_URL");
  }
}
