import 'dart:io';

import 'package:case_manager/api/functions/AuthApi.dart';
import 'package:case_manager/config/Config.dart';
import 'package:case_manager/generated/api/user_management/user-management-service.pbserver.dart';
import 'package:case_manager/state/app/AppNotifier.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

typedef ApiFunctionWithParameter<T> = Future<Response> Function(T message);
typedef ApiFunctionWithoutParameter = Future<Response> Function();

class Api {
  static const String VERSION_URL = "/v1";
  static const String AUTH_URL = "$VERSION_URL/auth";
  static const String DATA_URL = "$VERSION_URL/data";

  static const int TOKEN_RENEW_THRESHOLD = 60000;

  static final managementClient = Dio(BaseOptions(baseUrl: Config.managementApiBaseUrl));
  static final managementAuthClient = Dio(BaseOptions(baseUrl: Config.managementApiBaseUrl));

  static final participantClient = Dio(BaseOptions(baseUrl: Config.participantApiBaseUrl));
  static final participantAuthClient = Dio(BaseOptions(baseUrl: Config.participantApiBaseUrl));

  static Future callWithoutParameter(
    ApiFunctionWithoutParameter apiFunction, {
    Function(Response) onSuccess,
    Function(Response) onServerError,
    Function(dynamic) onException,
  }) async {
    return _call<dynamic>(
      apiFunctionWithoutParameter: apiFunction,
      onSuccess: onSuccess,
      onServerError: onServerError,
      onException: onException,
    );
  }

  static Future callWithParameter<T>(
    ApiFunctionWithParameter<T> apiFunction,
    T message, {
    Function(Response) onSuccess,
    Function(Response) onServerError,
    Function(dynamic) onException,
  }) async {
    return _call<T>(
      apiFunctionWithParameter: apiFunction,
      message: message,
      onSuccess: onSuccess,
      onServerError: onServerError,
      onException: onException,
    );
  }

  static Future _call<T>({
    ApiFunctionWithoutParameter apiFunctionWithoutParameter,
    ApiFunctionWithParameter<T> apiFunctionWithParameter,
    T message,
    Function(Response) onSuccess,
    Function(Response) onServerError,
    Function(dynamic) onException,
  }) async {
    try {
      Response response;

      if (apiFunctionWithParameter != null && message != null) {
        response = await apiFunctionWithParameter(message);
      } else if (apiFunctionWithoutParameter != null) {
        response = await apiFunctionWithoutParameter();
      } else {
        return;
      }

      if (response.statusCode == 200) {
        if (onSuccess != null) onSuccess(response);
      } else {
        print("${response.statusCode}: ${response.statusMessage}");
        if (onServerError != null) onServerError(response);
      }
    } catch (e) {
      print(e);
      if (onException != null) onException(e);
    }
  }

  static Future<String> getNewAccessToken() async {
    var state = Modular.get<AppNotifier>();

    if (state.refreshToken != null && state.refreshToken.length > 0) {
      if (state.expiresAt < DateTime.now().millisecondsSinceEpoch + TOKEN_RENEW_THRESHOLD) {
        var request = RefreshJWTRequest()..refreshToken = state.refreshToken;
        var response = await AuthApi.renewAccessToken(request);
        if (response.statusCode == 200) {
          var tokenResponse = TokenResponse()..mergeFromProto3Json(response.data);
          state.setTokens(tokenResponse.accessToken, tokenResponse.refreshToken, tokenResponse.expiresIn);
          return tokenResponse.accessToken;
        }
      }
    } else if (state.expiresAt < DateTime.now().millisecondsSinceEpoch) {
      throw Exception("No valid tokens.");
    }

    return null;
  }

  static updateAuthentication(String accessToken) {
    managementAuthClient.options.headers[HttpHeaders.authorizationHeader] = "Bearer $accessToken";
    participantAuthClient.options.headers[HttpHeaders.authorizationHeader] = "Bearer $accessToken";
  }

  static resetAuthentication() {
    updateAuthentication("");
    Modular.get<AppNotifier>().reset();
  }
}
