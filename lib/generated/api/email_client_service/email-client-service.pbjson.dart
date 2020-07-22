///
//  Generated code. Do not modify.
//  source: email_client_service/email-client-service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import '../google/protobuf/empty.pbjson.dart' as $0;

const ServiceStatus$json = const {
  '1': 'ServiceStatus',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.influenzanet.email_client_service.ServiceStatus.StatusValue', '10': 'status'},
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

const SendEmailReq$json = const {
  '1': 'SendEmailReq',
  '2': const [
    const {'1': 'to', '3': 1, '4': 3, '5': 9, '10': 'to'},
    const {'1': 'subject', '3': 2, '4': 1, '5': 9, '10': 'subject'},
    const {'1': 'content', '3': 3, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'header_overrides', '3': 4, '4': 1, '5': 11, '6': '.influenzanet.email_client_service.HeaderOverrides', '10': 'headerOverrides'},
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

const EmailClientServiceApiServiceBase$json = const {
  '1': 'EmailClientServiceApi',
  '2': const [
    const {'1': 'Status', '2': '.google.protobuf.Empty', '3': '.influenzanet.email_client_service.ServiceStatus'},
    const {'1': 'SendEmail', '2': '.influenzanet.email_client_service.SendEmailReq', '3': '.influenzanet.email_client_service.ServiceStatus'},
  ],
};

const EmailClientServiceApiServiceBase$messageJson = const {
  '.google.protobuf.Empty': $0.Empty$json,
  '.influenzanet.email_client_service.ServiceStatus': ServiceStatus$json,
  '.influenzanet.email_client_service.SendEmailReq': SendEmailReq$json,
  '.influenzanet.email_client_service.HeaderOverrides': HeaderOverrides$json,
};

