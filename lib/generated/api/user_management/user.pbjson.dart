///
//  Generated code. Do not modify.
//  source: user_management/user.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'account', '3': 2, '4': 1, '5': 11, '6': '.inf.user.User.Account', '10': 'account'},
    const {'1': 'roles', '3': 3, '4': 3, '5': 9, '10': 'roles'},
    const {'1': 'timestamps', '3': 4, '4': 1, '5': 11, '6': '.inf.user.User.Timestamps', '10': 'timestamps'},
    const {'1': 'profiles', '3': 5, '4': 3, '5': 11, '6': '.inf.user.Profile', '10': 'profiles'},
    const {'1': 'contact_preferences', '3': 6, '4': 1, '5': 11, '6': '.inf.user.ContactPreferences', '10': 'contactPreferences'},
    const {'1': 'contact_infos', '3': 7, '4': 3, '5': 11, '6': '.inf.user.ContactInfo', '10': 'contactInfos'},
  ],
  '3': const [User_Account$json, User_Timestamps$json],
};

const User_Account$json = const {
  '1': 'Account',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'account_id', '3': 2, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'account_confirmed_at', '3': 3, '4': 1, '5': 3, '10': 'accountConfirmedAt'},
    const {'1': 'preferred_language', '3': 4, '4': 1, '5': 9, '10': 'preferredLanguage'},
  ],
};

const User_Timestamps$json = const {
  '1': 'Timestamps',
  '2': const [
    const {'1': 'created_at', '3': 1, '4': 1, '5': 3, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 2, '4': 1, '5': 3, '10': 'updatedAt'},
    const {'1': 'last_login', '3': 3, '4': 1, '5': 3, '10': 'lastLogin'},
    const {'1': 'last_token_refresh', '3': 4, '4': 1, '5': 3, '10': 'lastTokenRefresh'},
  ],
};

const ContactInfo$json = const {
  '1': 'ContactInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'confirmed_at', '3': 3, '4': 1, '5': 3, '10': 'confirmedAt'},
    const {'1': 'email', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'email'},
    const {'1': 'phone', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'phone'},
  ],
  '8': const [
    const {'1': 'address'},
  ],
};

const ContactPreferences$json = const {
  '1': 'ContactPreferences',
  '2': const [
    const {'1': 'subscribed_to_newsletter', '3': 1, '4': 1, '5': 8, '10': 'subscribedToNewsletter'},
    const {'1': 'send_newsletter_to', '3': 2, '4': 3, '5': 9, '10': 'sendNewsletterTo'},
  ],
};

const Profile$json = const {
  '1': 'Profile',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'alias', '3': 2, '4': 1, '5': 9, '10': 'alias'},
    const {'1': 'consent_confirmed_at', '3': 3, '4': 1, '5': 3, '10': 'consentConfirmedAt'},
    const {'1': 'avatar_id', '3': 4, '4': 1, '5': 9, '10': 'avatarId'},
    const {'1': 'created_at', '3': 5, '4': 1, '5': 3, '10': 'createdAt'},
  ],
};

