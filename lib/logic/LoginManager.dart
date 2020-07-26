import 'package:case_manager/api/Api.dart';
import 'package:case_manager/api/functions/AuthApi.dart';
import 'package:case_manager/config/Config.dart';
import 'package:case_manager/generated/api/user_management/user-management-service.pb.dart';
import 'package:case_manager/state/app/AppNotifier.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginManager {
  static Future<bool> login(String email, String password) async {
    final state = Modular.get<AppNotifier>();
    var loginMessage = LoginWithEmailMsg()
      ..email = email
      ..password = password
      ..instanceId = Config.instanceId;

    bool success = false;

    await Api.callWithParameter<LoginWithEmailMsg>(
      AuthApi.login,
      loginMessage,
      onSuccess: (response) {
        var loginResponse = LoginResponse()..mergeFromProto3Json(response.data);
        var tokens = loginResponse.token;
        var user = loginResponse.user;

        state.setTokens(tokens.accessToken, tokens.refreshToken, tokens.expiresIn);
        state.setUser(user.id, user.account.preferredLanguage);

        success = true;
      },
    );
    return success;
  }

  static Future<bool> logout() async {
    return false;
  }

  static bool hasAccessToken() {
    final state = Modular.get<AppNotifier>();
    return state.accessToken != null && state.accessToken.length > 0;
  }
}
