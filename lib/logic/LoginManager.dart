import 'package:case_manager/api/Api.dart';
import 'package:case_manager/state/AppState.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginManager {
  static Future<bool> login(BuildContext context, String email, String password) async {
    try {
      final state = Provider.of<AppState>(context, listen: false);
      var loginResponse = await Api.login(email, password);
      if (loginResponse == null) return false;
      var data = loginResponse.data;
      var tokens = data["token"];
      var user = data["user"];

      state.setTokens(tokens["accessToken"], tokens["refreshToken"], tokens["expiresIn"]);
      state.setUser(user["id"], user["account"]["preferredLanguage"]);

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  static Future<bool> logout(BuildContext context) async {
    return false;
  }
}
