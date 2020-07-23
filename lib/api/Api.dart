import 'dart:io';

import 'package:case_manager/config/Config.dart';
import 'package:dio/dio.dart';

class Api {
  static const String apiUrl = "/v1";
  static const String authApiUrl = "$apiUrl/auth";
  static const String dataApiUrl = "$apiUrl/data";

  static final _client = Dio(BaseOptions(baseUrl: Config.apiBaseUrl));
  static final _authClient = Dio(BaseOptions(baseUrl: Config.apiBaseUrl));

  static Future<Response> login(String email, String password) async {
    return await _client.post(
      "$authApiUrl/login-with-email",
      data: {"email": email, "password": password, "instanceId": Config.instanceId},
    );
  }

  static Future<Response> getAllStudies() async {
    return await _authClient.get(
      "$apiUrl/studies",
    );
  }

  static Future<Response> getResponseStatistics(String studyKey, {int startTimestamp, int endTimestamp}) async {
    return await _authClient.get(
      "$dataApiUrl/$studyKey/statistics",
      queryParameters: {
        if (startTimestamp != null) "from": (startTimestamp / 1000).round(),
        if (endTimestamp != null) "until": (endTimestamp / 1000).round(),
      },
    );
  }

  static Future<Response> getSurveyResponses(String studyKey,
      {int startTimeStamp, int endTimeStamp, String surveyKey}) async {
    return await _authClient.get(
      "$dataApiUrl/$studyKey/responses",
      queryParameters: {
        if (startTimeStamp != null) "from": (startTimeStamp / 1000).round(),
        if (endTimeStamp != null) "until": (endTimeStamp / 1000).round(),
        if (surveyKey != null) "surveyKey": surveyKey,
      },
    );
  }

  static updateAuthentication(String accessToken) {
    _authClient.options.headers[HttpHeaders.authorizationHeader] = "Bearer $accessToken";
  }
}
