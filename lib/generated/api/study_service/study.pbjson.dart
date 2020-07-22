///
//  Generated code. Do not modify.
//  source: study_service/study.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Study$json = const {
  '1': 'Study',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'secret_key', '3': 3, '4': 1, '5': 9, '10': 'secretKey'},
    const {'1': 'status', '3': 4, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'props', '3': 5, '4': 1, '5': 11, '6': '.influenzanet.study_service.Study.Props', '10': 'props'},
    const {'1': 'rules', '3': 6, '4': 3, '5': 11, '6': '.influenzanet.study_service.Expression', '10': 'rules'},
    const {'1': 'members', '3': 7, '4': 3, '5': 11, '6': '.influenzanet.study_service.Study.Member', '10': 'members'},
  ],
  '3': const [Study_Props$json, Study_Member$json],
};

const Study_Props$json = const {
  '1': 'Props',
  '2': const [
    const {'1': 'name', '3': 1, '4': 3, '5': 11, '6': '.influenzanet.study_service.LocalisedObject', '10': 'name'},
    const {'1': 'description', '3': 2, '4': 3, '5': 11, '6': '.influenzanet.study_service.LocalisedObject', '10': 'description'},
    const {'1': 'tags', '3': 3, '4': 3, '5': 11, '6': '.influenzanet.study_service.Tag', '10': 'tags'},
    const {'1': 'start_date', '3': 4, '4': 1, '5': 3, '10': 'startDate'},
    const {'1': 'end_date', '3': 5, '4': 1, '5': 3, '10': 'endDate'},
    const {'1': 'system_default_study', '3': 6, '4': 1, '5': 8, '10': 'systemDefaultStudy'},
  ],
};

const Study_Member$json = const {
  '1': 'Member',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'role', '3': 2, '4': 1, '5': 9, '10': 'role'},
    const {'1': 'username', '3': 3, '4': 1, '5': 9, '10': 'username'},
  ],
};

const Tag$json = const {
  '1': 'Tag',
  '2': const [
    const {'1': 'label', '3': 1, '4': 3, '5': 11, '6': '.influenzanet.study_service.LocalisedObject', '10': 'label'},
  ],
};

const AssignedSurvey$json = const {
  '1': 'AssignedSurvey',
  '2': const [
    const {'1': 'survey_key', '3': 1, '4': 1, '5': 9, '10': 'surveyKey'},
    const {'1': 'valid_from', '3': 2, '4': 1, '5': 3, '10': 'validFrom'},
    const {'1': 'valid_until', '3': 3, '4': 1, '5': 3, '10': 'validUntil'},
    const {'1': 'study_key', '3': 4, '4': 1, '5': 9, '10': 'studyKey'},
    const {'1': 'category', '3': 5, '4': 1, '5': 9, '10': 'category'},
  ],
};

const AssignedSurveys$json = const {
  '1': 'AssignedSurveys',
  '2': const [
    const {'1': 'surveys', '3': 1, '4': 3, '5': 11, '6': '.influenzanet.study_service.AssignedSurvey', '10': 'surveys'},
  ],
};

