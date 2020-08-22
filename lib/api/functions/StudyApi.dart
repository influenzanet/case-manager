import 'package:case_manager/generated/api/study_service/study-service.pb.dart';
import 'package:dio/dio.dart';

import '../Api.dart';

class StudyApi {
  static Future<Response> createNewStudy(NewStudyRequest request) {
    return Api.managementAuthClient.post("${Api.VERSION_URL}/studies", data: request.toProto3Json());
  }

  static Future<Response> getAllStudies() {
    return Api.managementAuthClient.get("${Api.VERSION_URL}/studies");
  }

  static Future<Response> updateStudyStatus(StudyStatusReq request) {
    return Api.managementAuthClient.post("${Api.STUDY_URL}/${request.studyKey}/status", data: request.toProto3Json());
  }

  static Future<Response> updateStudyProps(StudyPropsReq request) {
    return Api.managementAuthClient.post("${Api.STUDY_URL}/${request.studyKey}/props", data: request.toProto3Json());
  }

  static Future<Response> updateStudyRules(StudyRulesReq request) {
    return Api.managementAuthClient.post("${Api.STUDY_URL}/${request.studyKey}/rules", data: request.toProto3Json());
  }

  static Future<Response> deleteStudy(String studyKey) {
    return Api.managementAuthClient.delete("${Api.STUDY_URL}/$studyKey");
  }

  static Future<Response> saveSurveyToStudy(AddSurveyReq request) {
    return Api.managementAuthClient.post("${Api.STUDY_URL}/${request.studyKey}/surveys", data: request.toProto3Json());
  }

  static Future<Response> getSurveysForStudy(String studyKey) {
    return Api.managementAuthClient.get("${Api.STUDY_URL}/$studyKey/surveys");
  }

  static Future<Response> removeSurveyFromStudy(String studyKey, String surveyKey) {
    return Api.managementAuthClient.delete("${Api.STUDY_URL}/$studyKey/survey/$surveyKey");
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
