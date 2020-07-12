// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'StudiesResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudiesResponse _$StudiesResponseFromJson(Map<String, dynamic> json) {
  return StudiesResponse(
    (json['studies'] as List)
        ?.map((e) =>
            e == null ? null : StudyInfos.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$StudiesResponseToJson(StudiesResponse instance) =>
    <String, dynamic>{
      'studies': instance.studies?.map((e) => e?.toJson())?.toList(),
    };
