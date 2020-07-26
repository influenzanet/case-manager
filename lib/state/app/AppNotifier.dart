import 'package:case_manager/api/Api.dart';
import 'package:case_manager/state/Storage.dart';
import 'package:flutter/material.dart';

import 'AppState.dart';

class AppNotifier extends ChangeNotifier {
  AppState _state;

  String get userId => _state.userId;
  String get preferredLanguage => _state.preferredLanguage;
  bool get persistState => _state.persistState;

  String get accessToken => _state.accessToken;
  String get refreshToken => _state.refreshToken;
  int get expiresAt => _state.expiresAt;

  set preferredLanguage(String value) {
    _state.preferredLanguage = value;
    _update();
  }

  set persistState(bool value) {
    if (value == false) {
      _setEmptyStorage();
    }

    _state.persistState = value;
    _update();
  }

  AppNotifier() {
    var savedState = Storage.getState(Storage.APP_STATE_KEY);
    if (savedState == null) {
      _setEmptyState();
    } else {
      _state = AppState.fromJson(savedState);
    }
    Api.updateAuthentication(accessToken);
  }

  reset() {
    _setEmptyState();
    _setEmptyStorage();
  }

  _update() {
    notifyListeners();
    if (persistState) {
      _save();
    }
  }

  _save() {
    Storage.setState(Storage.APP_STATE_KEY, _state.toJson());
  }

  _setEmptyState() {
    _state = AppState.fromJson({});
  }

  _setEmptyStorage() {
    Storage.setState(Storage.APP_STATE_KEY, {});
  }

  setUser(String userId, String preferredLanguage) {
    _state.userId = userId;
    _state.preferredLanguage = preferredLanguage;
    _update();
  }

  setTokens(String accessToken, String refreshToken, int expiresIn) {
    _state.accessToken = accessToken;
    _state.refreshToken = refreshToken;
    _state.expiresAt = DateTime.now().millisecondsSinceEpoch + expiresIn * 60000;
    Api.updateAuthentication(accessToken);
    _update();
  }
}
