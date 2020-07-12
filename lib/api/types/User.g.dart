// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'User.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'] as String,
    account: json['account'] == null
        ? null
        : UserAccount.fromJson(json['account'] as Map<String, dynamic>),
    roles: (json['roles'] as List)?.map((e) => e as String)?.toList(),
    timestamps: json['timestamps'] == null
        ? null
        : UserTimestamps.fromJson(json['timestamps'] as Map<String, dynamic>),
    profiles: (json['profiles'] as List)
        ?.map((e) =>
            e == null ? null : UserProfile.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contactPreferences: json['contactPreferences'] == null
        ? null
        : ContactPreferences.fromJson(
            json['contactPreferences'] as Map<String, dynamic>),
    contactInfos: (json['contactInfos'] as List)
        ?.map((e) =>
            e == null ? null : ContactInfo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'account': instance.account?.toJson(),
      'roles': instance.roles,
      'timestamps': instance.timestamps?.toJson(),
      'profiles': instance.profiles?.map((e) => e?.toJson())?.toList(),
      'contactPreferences': instance.contactPreferences?.toJson(),
      'contactInfos': instance.contactInfos?.map((e) => e?.toJson())?.toList(),
    };

UserAccount _$UserAccountFromJson(Map<String, dynamic> json) {
  return UserAccount(
    json['type'] as String,
    json['accountId'] as String,
    json['accountConfirmedAt'] as String,
    json['preferredLanguage'] as String,
  );
}

Map<String, dynamic> _$UserAccountToJson(UserAccount instance) =>
    <String, dynamic>{
      'type': instance.type,
      'accountId': instance.accountId,
      'accountConfirmedAt': instance.accountConfirmedAt,
      'preferredLanguage': instance.preferredLanguage,
    };

UserTimestamps _$UserTimestampsFromJson(Map<String, dynamic> json) {
  return UserTimestamps(
    json['createdAt'] as String,
    json['updatedAt'] as String,
    json['lastLogin'] as String,
    json['lastTokenRefresh'] as String,
  );
}

Map<String, dynamic> _$UserTimestampsToJson(UserTimestamps instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'lastLogin': instance.lastLogin,
      'lastTokenRefresh': instance.lastTokenRefresh,
    };

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return UserProfile(
    json['id'] as String,
    json['alias'] as String,
    json['consentConfirmedAt'] as String,
    json['avatarId'] as String,
    json['createdAt'] as String,
  );
}

Map<String, dynamic> _$UserProfileToJson(UserProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'alias': instance.alias,
      'consentConfirmedAt': instance.consentConfirmedAt,
      'avatarId': instance.avatarId,
      'createdAt': instance.createdAt,
    };

ContactPreferences _$ContactPreferencesFromJson(Map<String, dynamic> json) {
  return ContactPreferences(
    json['subscribedToNewsletter'] as bool,
    (json['sendNewsletterTo'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ContactPreferencesToJson(ContactPreferences instance) =>
    <String, dynamic>{
      'subscribedToNewsletter': instance.subscribedToNewsletter,
      'sendNewsletterTo': instance.sendNewsletterTo,
    };

EmailContactInfo _$EmailContactInfoFromJson(Map<String, dynamic> json) {
  return EmailContactInfo(
    json['id'] as String,
    json['type'] as String,
    json['confirmedAt'] as String,
    json['email'] as String,
  );
}

Map<String, dynamic> _$EmailContactInfoToJson(EmailContactInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'confirmedAt': instance.confirmedAt,
      'email': instance.email,
    };

PhoneContactInfo _$PhoneContactInfoFromJson(Map<String, dynamic> json) {
  return PhoneContactInfo(
    json['id'] as String,
    json['type'] as String,
    json['confirmedAt'] as String,
    json['phone'] as String,
  );
}

Map<String, dynamic> _$PhoneContactInfoToJson(PhoneContactInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'confirmedAt': instance.confirmedAt,
      'phone': instance.phone,
    };
