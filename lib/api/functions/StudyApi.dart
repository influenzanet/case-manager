import 'package:case_manager/generated/api/study_service/study-service.pb.dart';
import 'package:dio/dio.dart';

import '../Api.dart';

class StudyApi {
  static Future<Response> getAllStudies() {
    return Api.managementAuthClient.get(
      "${Api.VERSION_URL}/studies",
    );
  }

  static Future<Response> getResponseStatistics(SurveyResponseQuery query) {
    return Api.managementAuthClient.get(
      "${Api.DATA_URL}/${query.studyKey}/statistics",
      queryParameters: {
        if (query.hasFrom()) "from": (query.from.toInt() / 1000).round(),
        if (query.hasUntil()) "until": (query.until.toInt() / 1000).round(),
      },
    );
  }

  static Future<Response> getSurveyResponses(SurveyResponseQuery query) {
    return Api.managementAuthClient.get(
      "${Api.DATA_URL}/${query.studyKey}/responses",
      queryParameters: {
        if (query.hasFrom()) "from": (query.from.toInt() / 1000).round(),
        if (query.hasUntil()) "until": (query.until.toInt() / 1000).round(),
        if (query.hasSurveyKey()) "surveyKey": query.surveyKey,
      },
    );
  }
}
