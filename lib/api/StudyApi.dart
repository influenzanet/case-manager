import 'package:case_manager/generated/api/study_service/study-service.pb.dart';
import 'package:dio/dio.dart';

import 'Api.dart';

class StudyApi {
  static Future<Response> getAllStudies() async {
    return await Api.authClient.get(
      "${Api.versionUrl}/studies",
    );
  }

  static Future<Response> getResponseStatistics(SurveyResponseQuery query) async {
    return await Api.authClient.get(
      "${Api.dataUrl}/${query.studyKey}/statistics",
      queryParameters: {
        if (query.hasFrom()) "from": (query.from.toInt() / 1000).round(),
        if (query.hasUntil()) "until": (query.until.toInt() / 1000).round(),
      },
    );
  }

  static Future<Response> getSurveyResponses(SurveyResponseQuery query) async {
    return await Api.authClient.get(
      "${Api.dataUrl}/${query.studyKey}/responses",
      queryParameters: {
        if (query.hasFrom()) "from": (query.from.toInt() / 1000).round(),
        if (query.hasUntil()) "until": (query.until.toInt() / 1000).round(),
        if (query.hasSurveyKey()) "surveyKey": query.surveyKey,
      },
    );
  }
}
