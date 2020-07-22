///
//  Generated code. Do not modify.
//  source: study_service/survey.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const SurveyContext$json = const {
  '1': 'SurveyContext',
  '2': const [
    const {'1': 'mode', '3': 1, '4': 1, '5': 9, '10': 'mode'},
    const {'1': 'previous_responses', '3': 2, '4': 3, '5': 11, '6': '.influenzanet.study_service.SurveyResponse', '10': 'previousResponses'},
  ],
};

const SurveyContextDef$json = const {
  '1': 'SurveyContextDef',
  '2': const [
    const {'1': 'mode', '3': 3, '4': 1, '5': 11, '6': '.influenzanet.study_service.ExpressionArg', '10': 'mode'},
    const {'1': 'previous_responses', '3': 4, '4': 3, '5': 11, '6': '.influenzanet.study_service.Expression', '10': 'previousResponses'},
  ],
};

const Survey$json = const {
  '1': 'Survey',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 3, '5': 11, '6': '.influenzanet.study_service.LocalisedObject', '10': 'name'},
    const {'1': 'current', '3': 3, '4': 1, '5': 11, '6': '.influenzanet.study_service.SurveyVersion', '10': 'current'},
    const {'1': 'history', '3': 4, '4': 3, '5': 11, '6': '.influenzanet.study_service.SurveyVersion', '10': 'history'},
    const {'1': 'description', '3': 5, '4': 3, '5': 11, '6': '.influenzanet.study_service.LocalisedObject', '10': 'description'},
    const {'1': 'prefill_rules', '3': 6, '4': 3, '5': 11, '6': '.influenzanet.study_service.Expression', '10': 'prefillRules'},
    const {'1': 'context_rules', '3': 7, '4': 1, '5': 11, '6': '.influenzanet.study_service.SurveyContextDef', '10': 'contextRules'},
    const {'1': 'max_items_per_page', '3': 8, '4': 1, '5': 11, '6': '.influenzanet.study_service.MaxItemsPerPage', '10': 'maxItemsPerPage'},
  ],
};

const MaxItemsPerPage$json = const {
  '1': 'MaxItemsPerPage',
  '2': const [
    const {'1': 'large', '3': 1, '4': 1, '5': 5, '10': 'large'},
    const {'1': 'small', '3': 2, '4': 1, '5': 5, '10': 'small'},
  ],
};

const SurveyVersion$json = const {
  '1': 'SurveyVersion',
  '2': const [
    const {'1': 'published', '3': 1, '4': 1, '5': 3, '10': 'published'},
    const {'1': 'unpublished', '3': 2, '4': 1, '5': 3, '10': 'unpublished'},
    const {'1': 'survey_definition', '3': 3, '4': 1, '5': 11, '6': '.influenzanet.study_service.SurveyItem', '10': 'surveyDefinition'},
  ],
};

const SurveyItem$json = const {
  '1': 'SurveyItem',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'follows', '3': 3, '4': 3, '5': 9, '10': 'follows'},
    const {'1': 'condition', '3': 4, '4': 1, '5': 11, '6': '.influenzanet.study_service.Expression', '10': 'condition'},
    const {'1': 'priority', '3': 5, '4': 1, '5': 2, '10': 'priority'},
    const {'1': 'version', '3': 6, '4': 1, '5': 5, '10': 'version'},
    const {'1': 'version_tags', '3': 7, '4': 3, '5': 9, '10': 'versionTags'},
    const {'1': 'items', '3': 8, '4': 3, '5': 11, '6': '.influenzanet.study_service.SurveyItem', '10': 'items'},
    const {'1': 'selection_method', '3': 9, '4': 1, '5': 11, '6': '.influenzanet.study_service.Expression', '10': 'selectionMethod'},
    const {'1': 'type', '3': 10, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'components', '3': 11, '4': 1, '5': 11, '6': '.influenzanet.study_service.ItemComponent', '10': 'components'},
    const {'1': 'validations', '3': 12, '4': 3, '5': 11, '6': '.influenzanet.study_service.Validation', '10': 'validations'},
  ],
};

const Validation$json = const {
  '1': 'Validation',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'rule', '3': 3, '4': 1, '5': 11, '6': '.influenzanet.study_service.Expression', '10': 'rule'},
  ],
};

const ItemComponent$json = const {
  '1': 'ItemComponent',
  '2': const [
    const {'1': 'role', '3': 1, '4': 1, '5': 9, '10': 'role'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'content', '3': 3, '4': 3, '5': 11, '6': '.influenzanet.study_service.LocalisedObject', '10': 'content'},
    const {'1': 'display_condition', '3': 4, '4': 1, '5': 11, '6': '.influenzanet.study_service.Expression', '10': 'displayCondition'},
    const {'1': 'disabled', '3': 5, '4': 1, '5': 11, '6': '.influenzanet.study_service.Expression', '10': 'disabled'},
    const {'1': 'items', '3': 6, '4': 3, '5': 11, '6': '.influenzanet.study_service.ItemComponent', '10': 'items'},
    const {'1': 'order', '3': 7, '4': 1, '5': 11, '6': '.influenzanet.study_service.Expression', '10': 'order'},
    const {'1': 'dtype', '3': 8, '4': 1, '5': 9, '10': 'dtype'},
    const {'1': 'style', '3': 9, '4': 3, '5': 11, '6': '.influenzanet.study_service.ItemComponent.Style', '10': 'style'},
    const {'1': 'description', '3': 10, '4': 3, '5': 11, '6': '.influenzanet.study_service.LocalisedObject', '10': 'description'},
    const {'1': 'properties', '3': 11, '4': 1, '5': 11, '6': '.influenzanet.study_service.ItemComponent.Properties', '10': 'properties'},
  ],
  '3': const [ItemComponent_Style$json, ItemComponent_Properties$json],
};

const ItemComponent_Style$json = const {
  '1': 'Style',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

const ItemComponent_Properties$json = const {
  '1': 'Properties',
  '2': const [
    const {'1': 'min', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.study_service.ExpressionArg', '10': 'min'},
    const {'1': 'max', '3': 2, '4': 1, '5': 11, '6': '.influenzanet.study_service.ExpressionArg', '10': 'max'},
    const {'1': 'stepSize', '3': 3, '4': 1, '5': 11, '6': '.influenzanet.study_service.ExpressionArg', '10': 'stepSize'},
    const {'1': 'dateInputMode', '3': 4, '4': 1, '5': 11, '6': '.influenzanet.study_service.ExpressionArg', '10': 'dateInputMode'},
  ],
};

const LocalisedObject$json = const {
  '1': 'LocalisedObject',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    const {'1': 'parts', '3': 2, '4': 3, '5': 11, '6': '.influenzanet.study_service.ExpressionArg', '10': 'parts'},
  ],
};

