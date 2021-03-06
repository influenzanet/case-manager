import 'dart:io';

import 'package:case_manager/api/functions/AuthApi.dart';
import 'package:case_manager/config/Config.dart';
import 'package:case_manager/generated/api/user_management/user-management-service.pbserver.dart';
import 'package:case_manager/state/app/AppNotifier.dart';
import 'package:case_manager/ui/common/routes/AppRoutes.dart';
import 'package:case_manager/ui/common/widgets/dialogs/ErrorDialog.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

typedef ApiFunctionWithParameter<T> = Future<Response> Function(T message);
typedef ApiFunctionWithoutParameter = Future<Response> Function();

class Api {
  static const String VERSION_URL = "/v1";
  static const String AUTH_URL = "$VERSION_URL/auth";
  static const String STUDY_URL = "$VERSION_URL/study";
  static const String DATA_URL = "$VERSION_URL/data";

  static const int TOKEN_RENEW_THRESHOLD = 60000;

  static final managementClient = Dio(BaseOptions(baseUrl: Config.managementApiBaseUrl));
  static final managementAuthClient = Dio(BaseOptions(baseUrl: Config.managementApiBaseUrl));

  static final participantClient = Dio(BaseOptions(baseUrl: Config.participantApiBaseUrl));
  static final participantAuthClient = Dio(BaseOptions(baseUrl: Config.participantApiBaseUrl));
  static final tokenClient = Dio(BaseOptions(baseUrl: Config.participantApiBaseUrl));

  static initialize() {
    managementAuthClient.interceptors.add(_createRenewTokensInterceptors(managementAuthClient));
    participantAuthClient.interceptors.add(_createRenewTokensInterceptors(participantAuthClient));
  }

  static InterceptorsWrapper _createRenewTokensInterceptors(Dio dioInstance) {
    return InterceptorsWrapper(
      onRequest: (RequestOptions options) async {
        if (options.path == AuthApi.RENEW_TOKEN_URL) {
          return options;
        }

        _lockAuthInstances();

        try {
          var newAccessToken = await _getNewAccessToken();
          if (newAccessToken != null) {
            options.headers[HttpHeaders.authorizationHeader] = "Bearer $newAccessToken";
          }
        } catch (e) {
          print(e.toString());
          resetAuthentication();
          _unlockAuthInstances();
          return dioInstance.reject("Error during token refresh.");
        }

        _unlockAuthInstances();
        return options;
      },
      onError: (DioError error) {
        if (error.response?.statusCode == 401) {
          resetAuthentication();
        }

        return error;
      },
    );
  }

  static _lockAuthInstances() {
    managementAuthClient.lock();
    participantAuthClient.lock();
  }

  static _unlockAuthInstances() {
    managementAuthClient.unlock();
    participantAuthClient.unlock();
  }

  static Future<String> _getNewAccessToken() async {
    final _appState = Modular.get<AppNotifier>();

    if (_appState.refreshToken != null && _appState.refreshToken.length > 0) {
      if (_appState.expiresAt < DateTime.now().millisecondsSinceEpoch + TOKEN_RENEW_THRESHOLD) {
        var request = RefreshJWTRequest()..refreshToken = _appState.refreshToken;
        var response = await AuthApi.renewAccessToken(request);
        if (response.statusCode == 200) {
          var tokenResponse = TokenResponse()..mergeFromProto3Json(response.data);
          _appState.setTokens(tokenResponse.accessToken, tokenResponse.refreshToken, tokenResponse.expiresIn);
          return tokenResponse.accessToken;
        } else {
          throw Exception("${response.statusCode}: ${response.statusMessage}");
        }
      }
    } else if (_appState.expiresAt < DateTime.now().millisecondsSinceEpoch ||
        _appState.accessToken == null ||
        _appState.accessToken.length < 1) {
      throw Exception("No valid tokens.");
    }

    return null;
  }

  static Future callWithoutParameter(
    BuildContext context,
    ApiFunctionWithoutParameter apiFunction, {
    Function(Response) onSuccess,
    Function(Response) onServerError,
    Function(dynamic) onException,
  }) async {
    return _call<dynamic>(
      context,
      apiFunctionWithoutParameter: apiFunction,
      onSuccess: onSuccess,
      onServerError: onServerError,
      onException: onException,
    );
  }

  static Future callWithParameter<T>(
    BuildContext context,
    ApiFunctionWithParameter<T> apiFunction,
    T message, {
    Function(Response) onSuccess,
    Function(Response) onServerError,
    Function(dynamic) onException,
  }) async {
    return _call<T>(
      context,
      apiFunctionWithParameter: apiFunction,
      message: message,
      onSuccess: onSuccess,
      onServerError: onServerError,
      onException: onException,
    );
  }

  static Future _call<T>(
    BuildContext context, {
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
        onResponseError(context, response, onServerError);
      }
    } on DioError catch (e) {
      if (e.type == DioErrorType.RESPONSE) {
        onResponseError(context, e.response, onServerError);
      } else {
        onExceptionError(context, e, onException);
      }
    } catch (e) {
      onExceptionError(context, e, onException);
    }
  }

  static onResponseError(BuildContext context, Response response, Function(Response) onServerError) {
    var errorMessage = "${response.statusCode}: ${response.statusMessage}\n ${response.data}";
    print(errorMessage);
    if (response.statusCode != 401) ErrorDialog.display(context, errorMessage);
    if (onServerError != null) onServerError(response);
  }

  static onExceptionError(BuildContext context, Exception e, Function(dynamic) onException) {
    print(e.toString());
    ErrorDialog.display(context, e.toString());
    if (onException != null) onException(e);
  }

  static updateAuthentication(String accessToken) {
    managementAuthClient.options.headers[HttpHeaders.authorizationHeader] = "Bearer $accessToken";
    participantAuthClient.options.headers[HttpHeaders.authorizationHeader] = "Bearer $accessToken";
    tokenClient.options.headers[HttpHeaders.authorizationHeader] = "Bearer $accessToken";
  }

  static resetAuthentication() {
    updateAuthentication("");
    Modular.get<AppNotifier>().reset();
    Modular.to.pushReplacementNamed(AppRoutes.login);
  }
}
