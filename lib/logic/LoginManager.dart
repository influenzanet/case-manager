import 'package:case_manager/api/Api.dart';
import 'package:case_manager/generated/api/user_management/user-management-service.pb.dart';
import 'package:case_manager/state/AppState.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginManager {
  static Future<bool> login(BuildContext context, String email, String password) async {
    try {
      final state = Provider.of<AppState>(context, listen: false);
      var response = await Api.login(email, password);
      if (response.statusCode != 200) return false;
      var loginResponse = LoginResponse()..mergeFromProto3Json(response.data);
      var tokens = loginResponse.token;
      var user = loginResponse.user;

      state.setTokens(tokens.accessToken, tokens.refreshToken, tokens.expiresIn);
      state.setUser(user.id, user.account.preferredLanguage);

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  static Future<bool> logout(BuildContext context) async {
    return false;
  }

  static bool hasAccessToken(BuildContext context) {
    final state = Provider.of<AppState>(context, listen: false);
    return state.accessToken != null && state.accessToken.length > 0;
  }
}
