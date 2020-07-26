import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  static const String APP_STATE_KEY = "AppState";

  static SharedPreferences _instance;

  static initialize() async {
    _instance = await SharedPreferences.getInstance();
  }

  static Map<String, dynamic> getState(String key) {
    return json.decode(_instance.getString(key) ?? "{}");
  }

  static void setState(String key, Map<String, dynamic> state) {
    _instance.setString(key, json.encode(state));
  }
}
