import 'package:case_manager/api/Api.dart';
import 'package:case_manager/state/BaseNotifier.dart';
import 'package:case_manager/state/Storage.dart';

import 'AppState.dart';

class AppNotifier extends BaseNotifier {
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

  AppNotifier() {
    var savedState = Storage.getAppState();
    if (savedState == null) {
      _setEmptyState();
    } else {
      _state = AppState.fromJson(savedState);
    }
    Api.updateAuthentication(accessToken);
  }

  @override
  save() {
    Storage.setAppState(_state.toJson());
  }

  @override
  reset() {
    _setEmptyState();
    Storage.setAppState({});
  }

  _setEmptyState() {
    _state = AppState("", "", "", "", 0);
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
