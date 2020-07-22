///
//  Generated code. Do not modify.
//  source: shared/auth_info.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const TokenInfos$json = const {
  '1': 'TokenInfos',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'instance_id', '3': 2, '4': 1, '5': 9, '10': 'instanceId'},
    const {'1': 'issued_at', '3': 3, '4': 1, '5': 3, '10': 'issuedAt'},
    const {'1': 'payload', '3': 4, '4': 3, '5': 11, '6': '.influenzanet.shared.TokenInfos.PayloadEntry', '10': 'payload'},
    const {'1': 'profil_id', '3': 5, '4': 1, '5': 9, '10': 'profilId'},
    const {'1': 'account_confirmed', '3': 6, '4': 1, '5': 8, '10': 'accountConfirmed'},
    const {'1': 'temp_token', '3': 7, '4': 1, '5': 11, '6': '.influenzanet.shared.TempTokenInfo', '10': 'tempToken'},
    const {'1': 'other_profile_ids', '3': 8, '4': 3, '5': 9, '10': 'otherProfileIds'},
  ],
  '3': const [TokenInfos_PayloadEntry$json],
};

const TokenInfos_PayloadEntry$json = const {
  '1': 'PayloadEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const TempTokenInfo$json = const {
  '1': 'TempTokenInfo',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'expiration', '3': 2, '4': 1, '5': 3, '10': 'expiration'},
    const {'1': 'purpose', '3': 3, '4': 1, '5': 9, '10': 'purpose'},
    const {'1': 'user_id', '3': 4, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'info', '3': 5, '4': 3, '5': 11, '6': '.influenzanet.shared.TempTokenInfo.InfoEntry', '10': 'info'},
    const {'1': 'instance_id', '3': 6, '4': 1, '5': 9, '10': 'instanceId'},
  ],
  '3': const [TempTokenInfo_InfoEntry$json],
};

const TempTokenInfo_InfoEntry$json = const {
  '1': 'InfoEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const TempTokenInfos$json = const {
  '1': 'TempTokenInfos',
  '2': const [
    const {'1': 'temp_tokens', '3': 1, '4': 3, '5': 11, '6': '.influenzanet.shared.TempTokenInfo', '10': 'tempTokens'},
  ],
};

