///
//  Generated code. Do not modify.
//  source: study_service/study-service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import '../google/protobuf/empty.pbjson.dart' as $0;
import '../shared/auth_info.pbjson.dart' as $2;
import 'study.pbjson.dart' as $9;
import 'survey.pbjson.dart' as $8;
import 'expression.pbjson.dart' as $7;
import 'survey-response.pbjson.dart' as $6;

const SurveyResponseQuery$json = const {
  '1': 'SurveyResponseQuery',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'study_key', '3': 2, '4': 1, '5': 9, '10': 'studyKey'},
    const {'1': 'survey_key', '3': 3, '4': 1, '5': 9, '10': 'surveyKey'},
    const {'1': 'from', '3': 4, '4': 1, '5': 3, '10': 'from'},
    const {'1': 'until', '3': 5, '4': 1, '5': 3, '10': 'until'},
    const {'1': 'context_query', '3': 6, '4': 3, '5': 11, '6': '.influenzanet.study_service.SurveyResponseQuery.ContextQueryEntry', '10': 'contextQuery'},
  ],
  '3': const [SurveyResponseQuery_ContextQueryEntry$json],
};

const SurveyResponseQuery_ContextQueryEntry$json = const {
  '1': 'ContextQueryEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const StudyResponseStatistics$json = const {
  '1': 'StudyResponseStatistics',
  '2': const [
    const {'1': 'study_key', '3': 1, '4': 1, '5': 9, '10': 'studyKey'},
    const {'1': 'survey_response_counts', '3': 6, '4': 3, '5': 11, '6': '.influenzanet.study_service.StudyResponseStatistics.SurveyResponseCountsEntry', '10': 'surveyResponseCounts'},
  ],
  '3': const [StudyResponseStatistics_SurveyResponseCountsEntry$json],
};

const StudyResponseStatistics_SurveyResponseCountsEntry$json = const {
  '1': 'SurveyResponseCountsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 3, '10': 'value'},
  ],
  '7': const {'7': true},
};

const ProfilesWithConditionReq$json = const {
  '1': 'ProfilesWithConditionReq',
  '2': const [
    const {'1': 'instance_id', '3': 1, '4': 1, '5': 9, '10': 'instanceId'},
    const {'1': 'studyKey', '3': 2, '4': 1, '5': 9, '10': 'studyKey'},
    const {'1': 'profile_ids', '3': 3, '4': 3, '5': 9, '10': 'profileIds'},
    const {'1': 'condition', '3': 4, '4': 1, '5': 11, '6': '.influenzanet.study_service.ExpressionArg', '10': 'condition'},
  ],
};

const ServiceStatus$json = const {
  '1': 'ServiceStatus',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.influenzanet.study_service.ServiceStatus.StatusValue', '10': 'status'},
    const {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
    const {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
  ],
  '4': const [ServiceStatus_StatusValue$json],
};

const ServiceStatus_StatusValue$json = const {
  '1': 'StatusValue',
  '2': const [
    const {'1': 'NORMAL', '2': 0},
    const {'1': 'PROBLEM', '2': 1},
  ],
};

const NewStudyRequest$json = const {
  '1': 'NewStudyRequest',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'study', '3': 2, '4': 1, '5': 11, '6': '.influenzanet.study_service.Study', '10': 'study'},
  ],
};

const SurveyAndContext$json = const {
  '1': 'SurveyAndContext',
  '2': const [
    const {'1': 'survey', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.study_service.Survey', '10': 'survey'},
    const {'1': 'context', '3': 2, '4': 1, '5': 11, '6': '.influenzanet.study_service.SurveyContext', '10': 'context'},
    const {'1': 'prefill', '3': 3, '4': 1, '5': 11, '6': '.influenzanet.study_service.SurveyResponse', '10': 'prefill'},
  ],
};

const StudyReferenceReq$json = const {
  '1': 'StudyReferenceReq',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'study_key', '3': 2, '4': 1, '5': 9, '10': 'studyKey'},
  ],
};

const SurveyInfoResp$json = const {
  '1': 'SurveyInfoResp',
  '2': const [
    const {'1': 'infos', '3': 1, '4': 3, '5': 11, '6': '.influenzanet.study_service.SurveyInfoResp.SurveyInfo', '10': 'infos'},
  ],
  '3': const [SurveyInfoResp_SurveyInfo$json],
};

const SurveyInfoResp_SurveyInfo$json = const {
  '1': 'SurveyInfo',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'name', '3': 2, '4': 3, '5': 11, '6': '.influenzanet.study_service.LocalisedObject', '10': 'name'},
    const {'1': 'description', '3': 3, '4': 3, '5': 11, '6': '.influenzanet.study_service.LocalisedObject', '10': 'description'},
  ],
};

const AddSurveyReq$json = const {
  '1': 'AddSurveyReq',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'study_key', '3': 2, '4': 1, '5': 9, '10': 'studyKey'},
    const {'1': 'survey', '3': 3, '4': 1, '5': 11, '6': '.influenzanet.study_service.Survey', '10': 'survey'},
  ],
};

const SubmitResponseReq$json = const {
  '1': 'SubmitResponseReq',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'study_key', '3': 2, '4': 1, '5': 9, '10': 'studyKey'},
    const {'1': 'response', '3': 3, '4': 1, '5': 11, '6': '.influenzanet.study_service.SurveyResponse', '10': 'response'},
  ],
};

const EnterStudyRequest$json = const {
  '1': 'EnterStudyRequest',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'study_key', '3': 2, '4': 1, '5': 9, '10': 'studyKey'},
  ],
};

const LeaveStudyMsg$json = const {
  '1': 'LeaveStudyMsg',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'study_key', '3': 2, '4': 1, '5': 9, '10': 'studyKey'},
  ],
};

const SurveyReferenceRequest$json = const {
  '1': 'SurveyReferenceRequest',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'study_key', '3': 2, '4': 1, '5': 9, '10': 'studyKey'},
    const {'1': 'survey_key', '3': 3, '4': 1, '5': 9, '10': 'surveyKey'},
  ],
};

const PostponeSurveyRequest$json = const {
  '1': 'PostponeSurveyRequest',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'study_key', '3': 2, '4': 1, '5': 9, '10': 'studyKey'},
    const {'1': 'survey_key', '3': 3, '4': 1, '5': 9, '10': 'surveyKey'},
    const {'1': 'delay', '3': 4, '4': 1, '5': 3, '10': 'delay'},
  ],
};

const StatusReportRequest$json = const {
  '1': 'StatusReportRequest',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'status_survey', '3': 2, '4': 1, '5': 11, '6': '.influenzanet.study_service.SurveyResponse', '10': 'statusSurvey'},
  ],
};

const GetStudiesForUserReq$json = const {
  '1': 'GetStudiesForUserReq',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
  ],
};

const Studies$json = const {
  '1': 'Studies',
  '2': const [
    const {'1': 'studies', '3': 1, '4': 3, '5': 11, '6': '.influenzanet.study_service.Study', '10': 'studies'},
  ],
};

const StudyMemberReq$json = const {
  '1': 'StudyMemberReq',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'study_key', '3': 2, '4': 1, '5': 9, '10': 'studyKey'},
    const {'1': 'member', '3': 3, '4': 1, '5': 11, '6': '.influenzanet.study_service.Study.Member', '10': 'member'},
  ],
};

const StudyRulesReq$json = const {
  '1': 'StudyRulesReq',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'study_key', '3': 2, '4': 1, '5': 9, '10': 'studyKey'},
    const {'1': 'rules', '3': 3, '4': 3, '5': 11, '6': '.influenzanet.study_service.Expression', '10': 'rules'},
  ],
};

const StudyStatusReq$json = const {
  '1': 'StudyStatusReq',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'study_key', '3': 2, '4': 1, '5': 9, '10': 'studyKey'},
    const {'1': 'new_status', '3': 3, '4': 1, '5': 9, '10': 'newStatus'},
  ],
};

const StudyPropsReq$json = const {
  '1': 'StudyPropsReq',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'study_key', '3': 2, '4': 1, '5': 9, '10': 'studyKey'},
    const {'1': 'props', '3': 3, '4': 1, '5': 11, '6': '.influenzanet.study_service.Study.Props', '10': 'props'},
  ],
};

const StudyServiceApiServiceBase$json = const {
  '1': 'StudyServiceApi',
  '2': const [
    const {'1': 'Status', '2': '.google.protobuf.Empty', '3': '.influenzanet.study_service.ServiceStatus'},
    const {'1': 'EnterStudy', '2': '.influenzanet.study_service.EnterStudyRequest', '3': '.influenzanet.study_service.AssignedSurveys'},
    const {'1': 'GetAssignedSurveys', '2': '.influenzanet.shared.TokenInfos', '3': '.influenzanet.study_service.AssignedSurveys'},
    const {'1': 'GetAssignedSurvey', '2': '.influenzanet.study_service.SurveyReferenceRequest', '3': '.influenzanet.study_service.SurveyAndContext'},
    const {'1': 'PostponeSurvey', '2': '.influenzanet.study_service.PostponeSurveyRequest', '3': '.influenzanet.study_service.AssignedSurveys'},
    const {'1': 'SubmitStatusReport', '2': '.influenzanet.study_service.StatusReportRequest', '3': '.influenzanet.study_service.AssignedSurveys'},
    const {'1': 'SubmitResponse', '2': '.influenzanet.study_service.SubmitResponseReq', '3': '.influenzanet.study_service.AssignedSurveys'},
    const {'1': 'LeaveStudy', '2': '.influenzanet.study_service.LeaveStudyMsg', '3': '.influenzanet.study_service.AssignedSurveys'},
    const {'1': 'DeleteParticipantData', '2': '.influenzanet.shared.TokenInfos', '3': '.influenzanet.study_service.ServiceStatus'},
    const {'1': 'GetStudiesForUser', '2': '.influenzanet.study_service.GetStudiesForUserReq', '3': '.influenzanet.study_service.Studies'},
    const {'1': 'GetActiveStudies', '2': '.influenzanet.shared.TokenInfos', '3': '.influenzanet.study_service.Studies'},
    const {'1': 'GetStudySurveyInfos', '2': '.influenzanet.study_service.StudyReferenceReq', '3': '.influenzanet.study_service.SurveyInfoResp'},
    const {'1': 'HasParticipantStateWithCondition', '2': '.influenzanet.study_service.ProfilesWithConditionReq', '3': '.influenzanet.study_service.ServiceStatus'},
    const {'1': 'CreateNewStudy', '2': '.influenzanet.study_service.NewStudyRequest', '3': '.influenzanet.study_service.Study'},
    const {'1': 'GetAllStudies', '2': '.influenzanet.shared.TokenInfos', '3': '.influenzanet.study_service.Studies'},
    const {'1': 'GetStudy', '2': '.influenzanet.study_service.StudyReferenceReq', '3': '.influenzanet.study_service.Study'},
    const {'1': 'SaveStudyMember', '2': '.influenzanet.study_service.StudyMemberReq', '3': '.influenzanet.study_service.Study'},
    const {'1': 'RemoveStudyMember', '2': '.influenzanet.study_service.StudyMemberReq', '3': '.influenzanet.study_service.Study'},
    const {'1': 'SaveStudyRules', '2': '.influenzanet.study_service.StudyRulesReq', '3': '.influenzanet.study_service.Study'},
    const {'1': 'SaveStudyStatus', '2': '.influenzanet.study_service.StudyStatusReq', '3': '.influenzanet.study_service.Study'},
    const {'1': 'SaveStudyProps', '2': '.influenzanet.study_service.StudyPropsReq', '3': '.influenzanet.study_service.Study'},
    const {'1': 'SaveSurveyToStudy', '2': '.influenzanet.study_service.AddSurveyReq', '3': '.influenzanet.study_service.Survey'},
    const {'1': 'GetSurveyDefForStudy', '2': '.influenzanet.study_service.SurveyReferenceRequest', '3': '.influenzanet.study_service.Survey'},
    const {'1': 'RemoveSurveyFromStudy', '2': '.influenzanet.study_service.SurveyReferenceRequest', '3': '.influenzanet.study_service.ServiceStatus'},
    const {'1': 'DeleteStudy', '2': '.influenzanet.study_service.StudyReferenceReq', '3': '.influenzanet.study_service.ServiceStatus'},
    const {'1': 'GetStudyResponseStatistics', '2': '.influenzanet.study_service.SurveyResponseQuery', '3': '.influenzanet.study_service.StudyResponseStatistics'},
    const {'1': 'StreamStudyResponses', '2': '.influenzanet.study_service.SurveyResponseQuery', '3': '.influenzanet.study_service.SurveyResponse', '6': true},
  ],
};

const StudyServiceApiServiceBase$messageJson = const {
  '.google.protobuf.Empty': $0.Empty$json,
  '.influenzanet.study_service.ServiceStatus': ServiceStatus$json,
  '.influenzanet.study_service.EnterStudyRequest': EnterStudyRequest$json,
  '.influenzanet.shared.TokenInfos': $2.TokenInfos$json,
  '.influenzanet.shared.TokenInfos.PayloadEntry': $2.TokenInfos_PayloadEntry$json,
  '.influenzanet.shared.TempTokenInfo': $2.TempTokenInfo$json,
  '.influenzanet.shared.TempTokenInfo.InfoEntry': $2.TempTokenInfo_InfoEntry$json,
  '.influenzanet.study_service.AssignedSurveys': $9.AssignedSurveys$json,
  '.influenzanet.study_service.AssignedSurvey': $9.AssignedSurvey$json,
  '.influenzanet.study_service.SurveyReferenceRequest': SurveyReferenceRequest$json,
  '.influenzanet.study_service.SurveyAndContext': SurveyAndContext$json,
  '.influenzanet.study_service.Survey': $8.Survey$json,
  '.influenzanet.study_service.LocalisedObject': $8.LocalisedObject$json,
  '.influenzanet.study_service.ExpressionArg': $7.ExpressionArg$json,
  '.influenzanet.study_service.Expression': $7.Expression$json,
  '.influenzanet.study_service.SurveyVersion': $8.SurveyVersion$json,
  '.influenzanet.study_service.SurveyItem': $8.SurveyItem$json,
  '.influenzanet.study_service.ItemComponent': $8.ItemComponent$json,
  '.influenzanet.study_service.ItemComponent.Style': $8.ItemComponent_Style$json,
  '.influenzanet.study_service.ItemComponent.Properties': $8.ItemComponent_Properties$json,
  '.influenzanet.study_service.Validation': $8.Validation$json,
  '.influenzanet.study_service.SurveyContextDef': $8.SurveyContextDef$json,
  '.influenzanet.study_service.MaxItemsPerPage': $8.MaxItemsPerPage$json,
  '.influenzanet.study_service.SurveyContext': $8.SurveyContext$json,
  '.influenzanet.study_service.SurveyResponse': $6.SurveyResponse$json,
  '.influenzanet.study_service.SurveyItemResponse': $6.SurveyItemResponse$json,
  '.influenzanet.study_service.ResponseMeta': $6.ResponseMeta$json,
  '.influenzanet.study_service.ResponseItem': $6.ResponseItem$json,
  '.influenzanet.study_service.SurveyResponse.ContextEntry': $6.SurveyResponse_ContextEntry$json,
  '.influenzanet.study_service.PostponeSurveyRequest': PostponeSurveyRequest$json,
  '.influenzanet.study_service.StatusReportRequest': StatusReportRequest$json,
  '.influenzanet.study_service.SubmitResponseReq': SubmitResponseReq$json,
  '.influenzanet.study_service.LeaveStudyMsg': LeaveStudyMsg$json,
  '.influenzanet.study_service.GetStudiesForUserReq': GetStudiesForUserReq$json,
  '.influenzanet.study_service.Studies': Studies$json,
  '.influenzanet.study_service.Study': $9.Study$json,
  '.influenzanet.study_service.Study.Props': $9.Study_Props$json,
  '.influenzanet.study_service.Tag': $9.Tag$json,
  '.influenzanet.study_service.Study.Member': $9.Study_Member$json,
  '.influenzanet.study_service.StudyReferenceReq': StudyReferenceReq$json,
  '.influenzanet.study_service.SurveyInfoResp': SurveyInfoResp$json,
  '.influenzanet.study_service.SurveyInfoResp.SurveyInfo': SurveyInfoResp_SurveyInfo$json,
  '.influenzanet.study_service.ProfilesWithConditionReq': ProfilesWithConditionReq$json,
  '.influenzanet.study_service.NewStudyRequest': NewStudyRequest$json,
  '.influenzanet.study_service.StudyMemberReq': StudyMemberReq$json,
  '.influenzanet.study_service.StudyRulesReq': StudyRulesReq$json,
  '.influenzanet.study_service.StudyStatusReq': StudyStatusReq$json,
  '.influenzanet.study_service.StudyPropsReq': StudyPropsReq$json,
  '.influenzanet.study_service.AddSurveyReq': AddSurveyReq$json,
  '.influenzanet.study_service.SurveyResponseQuery': SurveyResponseQuery$json,
  '.influenzanet.study_service.SurveyResponseQuery.ContextQueryEntry': SurveyResponseQuery_ContextQueryEntry$json,
  '.influenzanet.study_service.StudyResponseStatistics': StudyResponseStatistics$json,
  '.influenzanet.study_service.StudyResponseStatistics.SurveyResponseCountsEntry': StudyResponseStatistics_SurveyResponseCountsEntry$json,
};

