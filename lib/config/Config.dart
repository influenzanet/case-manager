import 'package:global_configuration/global_configuration.dart';

class Config {
  static String get apiBaseUrl => GlobalConfiguration().getString("API_BASE_URL");
  static String get instanceId => GlobalConfiguration().getString("INSTANCE_ID");

  static initialize() async {
    await GlobalConfiguration().loadFromAsset("config");
  }
}
