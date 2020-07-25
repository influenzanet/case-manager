import 'dart:io';

import 'package:case_manager/config/Config.dart';
import 'package:dio/dio.dart';

typedef ApiFunctionWithParameter<T> = Future<Response> Function(T message);
typedef ApiFunctionWithoutParameter = Future<Response> Function();

class Api {
  static const String versionUrl = "/v1";
  static const String authUrl = "$versionUrl/auth";
  static const String dataUrl = "$versionUrl/data";

  static final client = Dio(BaseOptions(baseUrl: Config.apiBaseUrl));
  static final authClient = Dio(BaseOptions(baseUrl: Config.apiBaseUrl));

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

  static updateAuthentication(String accessToken) {
    authClient.options.headers[HttpHeaders.authorizationHeader] = "Bearer $accessToken";
  }
}
