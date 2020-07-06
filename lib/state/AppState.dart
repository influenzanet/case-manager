import 'package:case_manager/api/Api.dart';
import 'package:case_manager/state/BaseState.dart';

class AppState extends BaseState {
  String _userId;
  String _preferredLanguage;

  String _accessToken;
  String _refreshToken;
  int _expiresAt;

  String get userId => _userId;
  String get preferredLanguage => _preferredLanguage;
  String get accessToken => _accessToken;
  String get refreshToken => _refreshToken;
  int get expiresAt => _expiresAt;

  set preferredLanguage(String value) {
    _preferredLanguage = value;
    update();
  }

  setUser(String userId, String preferredLanguage) {
    _userId = userId;
    _preferredLanguage = preferredLanguage;
    update();
  }

  setTokens(String accessToken, String refreshToken, int expiresIn) {
    _accessToken = accessToken;
    _refreshToken = refreshToken;
    _expiresAt = DateTime.now().millisecondsSinceEpoch + expiresIn * 60000;
    Api.updateAuthentication(accessToken);
    update();
  }
}
