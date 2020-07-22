///
//  Generated code. Do not modify.
//  source: messaging_service/message-service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import '../google/protobuf/empty.pbjson.dart' as $0;
import '../shared/auth_info.pbjson.dart' as $2;

const ServiceStatus$json = const {
  '1': 'ServiceStatus',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.influenzanet.message_service.ServiceStatus.StatusValue', '10': 'status'},
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

const SendMessageToAllUsersReq$json = const {
  '1': 'SendMessageToAllUsersReq',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'template', '3': 2, '4': 1, '5': 11, '6': '.influenzanet.message_service.EmailTemplate', '10': 'template'},
  ],
};

const SendMessageToStudyParticipantsReq$json = const {
  '1': 'SendMessageToStudyParticipantsReq',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'template', '3': 2, '4': 1, '5': 11, '6': '.influenzanet.message_service.EmailTemplate', '10': 'template'},
    const {'1': 'study_key', '3': 3, '4': 1, '5': 9, '10': 'studyKey'},
    const {'1': 'condition', '3': 4, '4': 1, '5': 11, '6': '.influenzanet.message_service.ExpressionArg', '10': 'condition'},
  ],
};

const SendEmailReq$json = const {
  '1': 'SendEmailReq',
  '2': const [
    const {'1': 'instance_id', '3': 1, '4': 1, '5': 9, '10': 'instanceId'},
    const {'1': 'to', '3': 2, '4': 3, '5': 9, '10': 'to'},
    const {'1': 'message_type', '3': 3, '4': 1, '5': 9, '10': 'messageType'},
    const {'1': 'study_key', '3': 4, '4': 1, '5': 9, '10': 'studyKey'},
    const {'1': 'preferred_language', '3': 5, '4': 1, '5': 9, '10': 'preferredLanguage'},
    const {'1': 'content_infos', '3': 6, '4': 3, '5': 11, '6': '.influenzanet.message_service.SendEmailReq.ContentInfosEntry', '10': 'contentInfos'},
  ],
  '3': const [SendEmailReq_ContentInfosEntry$json],
};

const SendEmailReq_ContentInfosEntry$json = const {
  '1': 'ContentInfosEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const AutoMessage$json = const {
  '1': 'AutoMessage',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'template', '3': 2, '4': 1, '5': 11, '6': '.influenzanet.message_service.EmailTemplate', '10': 'template'},
    const {'1': 'type', '3': 3, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'study_key', '3': 4, '4': 1, '5': 9, '10': 'studyKey'},
    const {'1': 'condition', '3': 5, '4': 1, '5': 11, '6': '.influenzanet.message_service.ExpressionArg', '10': 'condition'},
    const {'1': 'next_time', '3': 6, '4': 1, '5': 3, '10': 'nextTime'},
    const {'1': 'period', '3': 7, '4': 1, '5': 3, '10': 'period'},
  ],
};

const AutoMessages$json = const {
  '1': 'AutoMessages',
  '2': const [
    const {'1': 'auto_messages', '3': 1, '4': 3, '5': 11, '6': '.influenzanet.message_service.AutoMessage', '10': 'autoMessages'},
  ],
};

const GetAutoMessagesReq$json = const {
  '1': 'GetAutoMessagesReq',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
  ],
};

const SaveAutoMessageReq$json = const {
  '1': 'SaveAutoMessageReq',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'auto_message', '3': 2, '4': 1, '5': 11, '6': '.influenzanet.message_service.AutoMessage', '10': 'autoMessage'},
  ],
};

const DeleteAutoMessageReq$json = const {
  '1': 'DeleteAutoMessageReq',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'auto_message_id', '3': 2, '4': 1, '5': 9, '10': 'autoMessageId'},
  ],
};

const EmailTemplate$json = const {
  '1': 'EmailTemplate',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'message_type', '3': 2, '4': 1, '5': 9, '10': 'messageType'},
    const {'1': 'study_key', '3': 3, '4': 1, '5': 9, '10': 'studyKey'},
    const {'1': 'default_language', '3': 4, '4': 1, '5': 9, '10': 'defaultLanguage'},
    const {'1': 'translations', '3': 5, '4': 3, '5': 11, '6': '.influenzanet.message_service.LocalizedTemplate', '10': 'translations'},
    const {'1': 'header_overrides', '3': 6, '4': 1, '5': 11, '6': '.influenzanet.message_service.HeaderOverrides', '10': 'headerOverrides'},
  ],
};

const HeaderOverrides$json = const {
  '1': 'HeaderOverrides',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 9, '10': 'from'},
    const {'1': 'sender', '3': 2, '4': 1, '5': 9, '10': 'sender'},
    const {'1': 'reply_to', '3': 3, '4': 3, '5': 9, '10': 'replyTo'},
    const {'1': 'no_reply_to', '3': 4, '4': 1, '5': 8, '10': 'noReplyTo'},
  ],
};

const LocalizedTemplate$json = const {
  '1': 'LocalizedTemplate',
  '2': const [
    const {'1': 'lang', '3': 1, '4': 1, '5': 9, '10': 'lang'},
    const {'1': 'template_def', '3': 2, '4': 1, '5': 9, '10': 'templateDef'},
    const {'1': 'subject', '3': 3, '4': 1, '5': 9, '10': 'subject'},
  ],
};

const EmailTemplates$json = const {
  '1': 'EmailTemplates',
  '2': const [
    const {'1': 'templates', '3': 1, '4': 3, '5': 11, '6': '.influenzanet.message_service.EmailTemplate', '10': 'templates'},
  ],
};

const GetEmailTemplatesReq$json = const {
  '1': 'GetEmailTemplatesReq',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
  ],
};

const SaveEmailTemplateReq$json = const {
  '1': 'SaveEmailTemplateReq',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'template', '3': 2, '4': 1, '5': 11, '6': '.influenzanet.message_service.EmailTemplate', '10': 'template'},
  ],
};

const DeleteEmailTemplateReq$json = const {
  '1': 'DeleteEmailTemplateReq',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'study_key', '3': 2, '4': 1, '5': 9, '10': 'studyKey'},
    const {'1': 'message_type', '3': 3, '4': 1, '5': 9, '10': 'messageType'},
  ],
};

const Expression$json = const {
  '1': 'Expression',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'returnType', '3': 2, '4': 1, '5': 9, '10': 'returnType'},
    const {'1': 'data', '3': 3, '4': 3, '5': 11, '6': '.influenzanet.message_service.ExpressionArg', '10': 'data'},
  ],
};

const ExpressionArg$json = const {
  '1': 'ExpressionArg',
  '2': const [
    const {'1': 'dtype', '3': 1, '4': 1, '5': 9, '10': 'dtype'},
    const {'1': 'exp', '3': 2, '4': 1, '5': 11, '6': '.influenzanet.message_service.Expression', '9': 0, '10': 'exp'},
    const {'1': 'str', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'str'},
    const {'1': 'num', '3': 4, '4': 1, '5': 1, '9': 0, '10': 'num'},
  ],
  '8': const [
    const {'1': 'data'},
  ],
};

const MessagingServiceApiServiceBase$json = const {
  '1': 'MessagingServiceApi',
  '2': const [
    const {'1': 'Status', '2': '.google.protobuf.Empty', '3': '.influenzanet.message_service.ServiceStatus'},
    const {'1': 'SendInstantEmail', '2': '.influenzanet.message_service.SendEmailReq', '3': '.influenzanet.message_service.ServiceStatus'},
    const {'1': 'SendMessageToAllUsers', '2': '.influenzanet.message_service.SendMessageToAllUsersReq', '3': '.influenzanet.message_service.ServiceStatus'},
    const {'1': 'SendMessageToStudyParticipants', '2': '.influenzanet.message_service.SendMessageToStudyParticipantsReq', '3': '.influenzanet.message_service.ServiceStatus'},
    const {'1': 'GetAutoMessages', '2': '.influenzanet.message_service.GetAutoMessagesReq', '3': '.influenzanet.message_service.AutoMessages'},
    const {'1': 'SaveAutoMessage', '2': '.influenzanet.message_service.SaveAutoMessageReq', '3': '.influenzanet.message_service.AutoMessage'},
    const {'1': 'DeleteAutoMessage', '2': '.influenzanet.message_service.DeleteAutoMessageReq', '3': '.influenzanet.message_service.ServiceStatus'},
    const {'1': 'GetEmailTemplates', '2': '.influenzanet.message_service.GetEmailTemplatesReq', '3': '.influenzanet.message_service.EmailTemplates'},
    const {'1': 'SaveEmailTemplate', '2': '.influenzanet.message_service.SaveEmailTemplateReq', '3': '.influenzanet.message_service.EmailTemplate'},
    const {'1': 'DeleteEmailTemplate', '2': '.influenzanet.message_service.DeleteEmailTemplateReq', '3': '.influenzanet.message_service.ServiceStatus'},
  ],
};

const MessagingServiceApiServiceBase$messageJson = const {
  '.google.protobuf.Empty': $0.Empty$json,
  '.influenzanet.message_service.ServiceStatus': ServiceStatus$json,
  '.influenzanet.message_service.SendEmailReq': SendEmailReq$json,
  '.influenzanet.message_service.SendEmailReq.ContentInfosEntry': SendEmailReq_ContentInfosEntry$json,
  '.influenzanet.message_service.SendMessageToAllUsersReq': SendMessageToAllUsersReq$json,
  '.influenzanet.shared.TokenInfos': $2.TokenInfos$json,
  '.influenzanet.shared.TokenInfos.PayloadEntry': $2.TokenInfos_PayloadEntry$json,
  '.influenzanet.shared.TempTokenInfo': $2.TempTokenInfo$json,
  '.influenzanet.shared.TempTokenInfo.InfoEntry': $2.TempTokenInfo_InfoEntry$json,
  '.influenzanet.message_service.EmailTemplate': EmailTemplate$json,
  '.influenzanet.message_service.LocalizedTemplate': LocalizedTemplate$json,
  '.influenzanet.message_service.HeaderOverrides': HeaderOverrides$json,
  '.influenzanet.message_service.SendMessageToStudyParticipantsReq': SendMessageToStudyParticipantsReq$json,
  '.influenzanet.message_service.ExpressionArg': ExpressionArg$json,
  '.influenzanet.message_service.Expression': Expression$json,
  '.influenzanet.message_service.GetAutoMessagesReq': GetAutoMessagesReq$json,
  '.influenzanet.message_service.AutoMessages': AutoMessages$json,
  '.influenzanet.message_service.AutoMessage': AutoMessage$json,
  '.influenzanet.message_service.SaveAutoMessageReq': SaveAutoMessageReq$json,
  '.influenzanet.message_service.DeleteAutoMessageReq': DeleteAutoMessageReq$json,
  '.influenzanet.message_service.GetEmailTemplatesReq': GetEmailTemplatesReq$json,
  '.influenzanet.message_service.EmailTemplates': EmailTemplates$json,
  '.influenzanet.message_service.SaveEmailTemplateReq': SaveEmailTemplateReq$json,
  '.influenzanet.message_service.DeleteEmailTemplateReq': DeleteEmailTemplateReq$json,
};

