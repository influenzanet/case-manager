// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'StudyInfos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudyInfos _$StudyInfosFromJson(Map<String, dynamic> json) {
  return StudyInfos(
    json['key'] as String,
    json['status'] as String,
    json['props'] == null
        ? null
        : StudyInfosProps.fromJson(json['props'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StudyInfosToJson(StudyInfos instance) =>
    <String, dynamic>{
      'key': instance.key,
      'status': instance.status,
      'props': instance.props?.toJson(),
    };

StudyInfosProps _$StudyInfosPropsFromJson(Map<String, dynamic> json) {
  return StudyInfosProps(
    (json['name'] as List)
        ?.map((e) => e == null
            ? null
            : LocalizedStringWrapper.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['description'] as List)
        ?.map((e) => e == null
            ? null
            : LocalizedStringWrapper.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['tags'] as List)
        ?.map((e) =>
            e == null ? null : StudyTag.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['startDate'] as String,
    json['endDate'] as String,
    json['systemDefaultStudy'] as bool,
  );
}

Map<String, dynamic> _$StudyInfosPropsToJson(StudyInfosProps instance) =>
    <String, dynamic>{
      'name': instance.name?.map((e) => e?.toJson())?.toList(),
      'description': instance.description?.map((e) => e?.toJson())?.toList(),
      'tags': instance.tags?.map((e) => e?.toJson())?.toList(),
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'systemDefaultStudy': instance.systemDefaultStudy,
    };

StudyTag _$StudyTagFromJson(Map<String, dynamic> json) {
  return StudyTag(
    (json['label'] as List)
        ?.map((e) => e == null
            ? null
            : LocalizedStringWrapper.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$StudyTagToJson(StudyTag instance) => <String, dynamic>{
      'label': instance.label?.map((e) => e?.toJson())?.toList(),
    };
