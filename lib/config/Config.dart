import 'package:global_configuration/global_configuration.dart';

class Config {
  static String get managementApiBaseUrl => GlobalConfiguration().getString("MANAGEMENT_API_BASE_URL");
  static String get participantApiBaseUrl => GlobalConfiguration().getString("PARTICIPANT_API_BASE_URL");
  static String get instanceId => GlobalConfiguration().getString("INSTANCE_ID");

  static initialize() async {
    await GlobalConfiguration().loadFromAsset("config");
  }
}
