///
//  Generated code. Do not modify.
//  source: study_service/study-service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import '../google/protobuf/empty.pb.dart' as $0;
import 'study-service.pb.dart' as $10;
import 'study.pb.dart' as $9;
import '../shared/auth_info.pb.dart' as $2;
import 'survey.pb.dart' as $8;
import 'survey-response.pb.dart' as $6;
import 'study-service.pbjson.dart';

export 'study-service.pb.dart';

abstract class StudyServiceApiServiceBase extends $pb.GeneratedService {
  $async.Future<$10.ServiceStatus> status($pb.ServerContext ctx, $0.Empty request);
  $async.Future<$9.AssignedSurveys> enterStudy($pb.ServerContext ctx, $10.EnterStudyRequest request);
  $async.Future<$9.AssignedSurveys> getAssignedSurveys($pb.ServerContext ctx, $2.TokenInfos request);
  $async.Future<$10.SurveyAndContext> getAssignedSurvey($pb.ServerContext ctx, $10.SurveyReferenceRequest request);
  $async.Future<$9.AssignedSurveys> postponeSurvey($pb.ServerContext ctx, $10.PostponeSurveyRequest request);
  $async.Future<$9.AssignedSurveys> submitStatusReport($pb.ServerContext ctx, $10.StatusReportRequest request);
  $async.Future<$9.AssignedSurveys> submitResponse($pb.ServerContext ctx, $10.SubmitResponseReq request);
  $async.Future<$9.AssignedSurveys> leaveStudy($pb.ServerContext ctx, $10.LeaveStudyMsg request);
  $async.Future<$10.ServiceStatus> deleteParticipantData($pb.ServerContext ctx, $2.TokenInfos request);
  $async.Future<$10.Studies> getStudiesForUser($pb.ServerContext ctx, $10.GetStudiesForUserReq request);
  $async.Future<$10.Studies> getActiveStudies($pb.ServerContext ctx, $2.TokenInfos request);
  $async.Future<$10.SurveyInfoResp> getStudySurveyInfos($pb.ServerContext ctx, $10.StudyReferenceReq request);
  $async.Future<$10.ServiceStatus> hasParticipantStateWithCondition($pb.ServerContext ctx, $10.ProfilesWithConditionReq request);
  $async.Future<$9.Study> createNewStudy($pb.ServerContext ctx, $10.NewStudyRequest request);
  $async.Future<$10.Studies> getAllStudies($pb.ServerContext ctx, $2.TokenInfos request);
  $async.Future<$9.Study> getStudy($pb.ServerContext ctx, $10.StudyReferenceReq request);
  $async.Future<$9.Study> saveStudyMember($pb.ServerContext ctx, $10.StudyMemberReq request);
  $async.Future<$9.Study> removeStudyMember($pb.ServerContext ctx, $10.StudyMemberReq request);
  $async.Future<$9.Study> saveStudyRules($pb.ServerContext ctx, $10.StudyRulesReq request);
  $async.Future<$9.Study> saveStudyStatus($pb.ServerContext ctx, $10.StudyStatusReq request);
  $async.Future<$9.Study> saveStudyProps($pb.ServerContext ctx, $10.StudyPropsReq request);
  $async.Future<$8.Survey> saveSurveyToStudy($pb.ServerContext ctx, $10.AddSurveyReq request);
  $async.Future<$8.Survey> getSurveyDefForStudy($pb.ServerContext ctx, $10.SurveyReferenceRequest request);
  $async.Future<$10.ServiceStatus> removeSurveyFromStudy($pb.ServerContext ctx, $10.SurveyReferenceRequest request);
  $async.Future<$10.ServiceStatus> deleteStudy($pb.ServerContext ctx, $10.StudyReferenceReq request);
  $async.Future<$10.StudyResponseStatistics> getStudyResponseStatistics($pb.ServerContext ctx, $10.SurveyResponseQuery request);
  $async.Future<$6.SurveyResponse> streamStudyResponses($pb.ServerContext ctx, $10.SurveyResponseQuery request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'Status': return $0.Empty();
      case 'EnterStudy': return $10.EnterStudyRequest();
      case 'GetAssignedSurveys': return $2.TokenInfos();
      case 'GetAssignedSurvey': return $10.SurveyReferenceRequest();
      case 'PostponeSurvey': return $10.PostponeSurveyRequest();
      case 'SubmitStatusReport': return $10.StatusReportRequest();
      case 'SubmitResponse': return $10.SubmitResponseReq();
      case 'LeaveStudy': return $10.LeaveStudyMsg();
      case 'DeleteParticipantData': return $2.TokenInfos();
      case 'GetStudiesForUser': return $10.GetStudiesForUserReq();
      case 'GetActiveStudies': return $2.TokenInfos();
      case 'GetStudySurveyInfos': return $10.StudyReferenceReq();
      case 'HasParticipantStateWithCondition': return $10.ProfilesWithConditionReq();
      case 'CreateNewStudy': return $10.NewStudyRequest();
      case 'GetAllStudies': return $2.TokenInfos();
      case 'GetStudy': return $10.StudyReferenceReq();
      case 'SaveStudyMember': return $10.StudyMemberReq();
      case 'RemoveStudyMember': return $10.StudyMemberReq();
      case 'SaveStudyRules': return $10.StudyRulesReq();
      case 'SaveStudyStatus': return $10.StudyStatusReq();
      case 'SaveStudyProps': return $10.StudyPropsReq();
      case 'SaveSurveyToStudy': return $10.AddSurveyReq();
      case 'GetSurveyDefForStudy': return $10.SurveyReferenceRequest();
      case 'RemoveSurveyFromStudy': return $10.SurveyReferenceRequest();
      case 'DeleteStudy': return $10.StudyReferenceReq();
      case 'GetStudyResponseStatistics': return $10.SurveyResponseQuery();
      case 'StreamStudyResponses': return $10.SurveyResponseQuery();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'Status': return this.status(ctx, request);
      case 'EnterStudy': return this.enterStudy(ctx, request);
      case 'GetAssignedSurveys': return this.getAssignedSurveys(ctx, request);
      case 'GetAssignedSurvey': return this.getAssignedSurvey(ctx, request);
      case 'PostponeSurvey': return this.postponeSurvey(ctx, request);
      case 'SubmitStatusReport': return this.submitStatusReport(ctx, request);
      case 'SubmitResponse': return this.submitResponse(ctx, request);
      case 'LeaveStudy': return this.leaveStudy(ctx, request);
      case 'DeleteParticipantData': return this.deleteParticipantData(ctx, request);
      case 'GetStudiesForUser': return this.getStudiesForUser(ctx, request);
      case 'GetActiveStudies': return this.getActiveStudies(ctx, request);
      case 'GetStudySurveyInfos': return this.getStudySurveyInfos(ctx, request);
      case 'HasParticipantStateWithCondition': return this.hasParticipantStateWithCondition(ctx, request);
      case 'CreateNewStudy': return this.createNewStudy(ctx, request);
      case 'GetAllStudies': return this.getAllStudies(ctx, request);
      case 'GetStudy': return this.getStudy(ctx, request);
      case 'SaveStudyMember': return this.saveStudyMember(ctx, request);
      case 'RemoveStudyMember': return this.removeStudyMember(ctx, request);
      case 'SaveStudyRules': return this.saveStudyRules(ctx, request);
      case 'SaveStudyStatus': return this.saveStudyStatus(ctx, request);
      case 'SaveStudyProps': return this.saveStudyProps(ctx, request);
      case 'SaveSurveyToStudy': return this.saveSurveyToStudy(ctx, request);
      case 'GetSurveyDefForStudy': return this.getSurveyDefForStudy(ctx, request);
      case 'RemoveSurveyFromStudy': return this.removeSurveyFromStudy(ctx, request);
      case 'DeleteStudy': return this.deleteStudy(ctx, request);
      case 'GetStudyResponseStatistics': return this.getStudyResponseStatistics(ctx, request);
      case 'StreamStudyResponses': return this.streamStudyResponses(ctx, request);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => StudyServiceApiServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => StudyServiceApiServiceBase$messageJson;
}

