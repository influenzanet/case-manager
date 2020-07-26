import 'package:case_manager/api/Api.dart';
import 'package:case_manager/state/BaseProvider.dart';
import 'package:case_manager/state/Storage.dart';

import 'AppState.dart';

class AppProvider extends BaseProvider {
  AppState _state;

  String get userId => _state.userId;
  String get preferredLanguage => _state.preferredLanguage;
  String get accessToken => _state.accessToken;
  String get refreshToken => _state.refreshToken;
  int get expiresAt => _state.expiresAt;

  set preferredLanguage(String value) {
    _state.preferredLanguage = value;
    update();
  }

  AppProvider() {
    var savedState = Storage.getAppState();
    if (savedState == null) {
      _state = AppState("", "", "", "", 0);
    } else {
      _state = AppState.fromJson(savedState);
    }
    Api.updateAuthentication(accessToken);
  }

  @override
  save() {
    Storage.setAppState(_state.toJson());
  }

  setUser(String userId, String preferredLanguage) {
    _state.userId = userId;
    _state.preferredLanguage = preferredLanguage;
    update();
  }

  setTokens(String accessToken, String refreshToken, int expiresIn) {
    _state.accessToken = accessToken;
    _state.refreshToken = refreshToken;
    _state.expiresAt = DateTime.now().millisecondsSinceEpoch + expiresIn * 60000;
    Api.updateAuthentication(accessToken);
    update();
  }
}
