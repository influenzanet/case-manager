// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TokenResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenResponse _$TokenResponseFromJson(Map<String, dynamic> json) {
  return TokenResponse(
    json['accessToken'] as String,
    json['refreshToken'] as String,
    json['expiresIn'] as int,
    (json['profiles'] as List)
        ?.map((e) =>
            e == null ? null : UserProfile.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['selectedProfile'] as String,
    json['preferredLanguage'] as String,
  );
}

Map<String, dynamic> _$TokenResponseToJson(TokenResponse instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiresIn': instance.expiresIn,
      'profiles': instance.profiles?.map((e) => e?.toJson())?.toList(),
      'selectedProfile': instance.selectedProfile,
      'preferredLanguage': instance.preferredLanguage,
    };
