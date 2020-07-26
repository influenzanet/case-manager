// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AppState.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState(
    json['userId'] as String,
    json['preferredLanguage'] as String,
    json['accessToken'] as String,
    json['refreshToken'] as String,
    json['expiresAt'] as int,
  );
}

Map<String, dynamic> _$AppStateToJson(AppState instance) => <String, dynamic>{
      'userId': instance.userId,
      'preferredLanguage': instance.preferredLanguage,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiresAt': instance.expiresAt,
    };
