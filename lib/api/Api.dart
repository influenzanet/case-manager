import 'dart:io';

import 'package:case_manager/config/Config.dart';
import 'package:case_manager/generated/api/study_service/study-service.pb.dart';
import 'package:case_manager/generated/api/user_management/user-management-service.pbserver.dart';
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

  static Future<Response> login(LoginWithEmailMsg loginMessage) async {
    return await client.post("$authUrl/login-with-email", data: loginMessage.toProto3Json());
  }

  static Future<Response> getAllStudies() async {
    return await authClient.get(
      "$versionUrl/studies",
    );
  }

  static Future<Response> getResponseStatistics(SurveyResponseQuery query) async {
    return await authClient.get(
      "$dataUrl/${query.studyKey}/statistics",
      queryParameters: {
        if (query.hasFrom()) "from": (query.from.toInt() / 1000).round(),
        if (query.hasUntil()) "until": (query.until.toInt() / 1000).round(),
      },
    );
  }

  static Future<Response> getSurveyResponses(SurveyResponseQuery query) async {
    return await authClient.get(
      "$dataUrl/${query.studyKey}/responses",
      queryParameters: {
        if (query.hasFrom()) "from": (query.from.toInt() / 1000).round(),
        if (query.hasUntil()) "until": (query.until.toInt() / 1000).round(),
        if (query.hasSurveyKey()) "surveyKey": query.surveyKey,
      },
    );
  }

  static updateAuthentication(String accessToken) {
    authClient.options.headers[HttpHeaders.authorizationHeader] = "Bearer $accessToken";
  }
}
