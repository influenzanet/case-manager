///
//  Generated code. Do not modify.
//  source: study_service/survey-response.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const SurveyResponse$json = const {
  '1': 'SurveyResponse',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'participant_id', '3': 2, '4': 1, '5': 9, '10': 'participantId'},
    const {'1': 'submitted_at', '3': 3, '4': 1, '5': 3, '10': 'submittedAt'},
    const {'1': 'responses', '3': 4, '4': 3, '5': 11, '6': '.influenzanet.study_service.SurveyItemResponse', '10': 'responses'},
    const {'1': 'context', '3': 5, '4': 3, '5': 11, '6': '.influenzanet.study_service.SurveyResponse.ContextEntry', '10': 'context'},
  ],
  '3': const [SurveyResponse_ContextEntry$json],
};

const SurveyResponse_ContextEntry$json = const {
  '1': 'ContextEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const SurveyResponses$json = const {
  '1': 'SurveyResponses',
  '2': const [
    const {'1': 'responses', '3': 1, '4': 3, '5': 11, '6': '.influenzanet.study_service.SurveyResponse', '10': 'responses'},
  ],
};

const SurveyItemResponse$json = const {
  '1': 'SurveyItemResponse',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'meta', '3': 2, '4': 1, '5': 11, '6': '.influenzanet.study_service.ResponseMeta', '10': 'meta'},
    const {'1': 'items', '3': 3, '4': 3, '5': 11, '6': '.influenzanet.study_service.SurveyItemResponse', '10': 'items'},
    const {'1': 'response', '3': 4, '4': 1, '5': 11, '6': '.influenzanet.study_service.ResponseItem', '10': 'response'},
  ],
};

const ResponseItem$json = const {
  '1': 'ResponseItem',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
    const {'1': 'dtype', '3': 3, '4': 1, '5': 9, '10': 'dtype'},
    const {'1': 'items', '3': 4, '4': 3, '5': 11, '6': '.influenzanet.study_service.ResponseItem', '10': 'items'},
  ],
};

const ResponseMeta$json = const {
  '1': 'ResponseMeta',
  '2': const [
    const {'1': 'position', '3': 1, '4': 1, '5': 5, '10': 'position'},
    const {'1': 'locale_code', '3': 2, '4': 1, '5': 9, '10': 'localeCode'},
    const {'1': 'version', '3': 3, '4': 1, '5': 5, '10': 'version'},
    const {'1': 'rendered', '3': 4, '4': 3, '5': 3, '10': 'rendered'},
    const {'1': 'displayed', '3': 5, '4': 3, '5': 3, '10': 'displayed'},
    const {'1': 'responded', '3': 6, '4': 3, '5': 3, '10': 'responded'},
  ],
};

