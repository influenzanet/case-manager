import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  static const String APP_STATE_KEY = "AppState";

  static SharedPreferences _instance;

  static initialize() async {
    _instance = await SharedPreferences.getInstance();
  }

  static Map<String, dynamic> getAppState() {
    return json.decode(_instance.getString(APP_STATE_KEY) ?? "{}");
  }

  static void setAppState(Map<String, dynamic> state) {
    _instance.setString(APP_STATE_KEY, json.encode(state));
  }
}
