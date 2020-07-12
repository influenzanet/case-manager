import 'package:json_annotation/json_annotation.dart';

import 'LocalizedStringWrapper.dart';

part "StudyInfos.g.dart";

@JsonSerializable(explicitToJson: true)
class StudyInfos {
  String key;
  String status;
  StudyInfosProps props;

  StudyInfos(this.key, this.status, this.props);
  factory StudyInfos.fromJson(Map<String, dynamic> json) => _$StudyInfosFromJson(json);
  Map<String, dynamic> toJson() => _$StudyInfosToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StudyInfosProps {
  List<LocalizedStringWrapper> name;
  List<LocalizedStringWrapper> description;
  List<StudyTag> tags;
  int startDate;
  int endDate;
  bool systemDefaultStudy;

  StudyInfosProps(this.name, this.description, this.tags, String startDate, String endDate, this.systemDefaultStudy) {
    this.startDate = int.parse(startDate ?? "0");
    this.endDate = int.parse(endDate ?? "0");
  }
  factory StudyInfosProps.fromJson(Map<String, dynamic> json) => _$StudyInfosPropsFromJson(json);
  Map<String, dynamic> toJson() => _$StudyInfosPropsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StudyTag {
  List<LocalizedStringWrapper> label;

  StudyTag(this.label);
  factory StudyTag.fromJson(Map<String, dynamic> json) => _$StudyTagFromJson(json);
  Map<String, dynamic> toJson() => _$StudyTagToJson(this);
}
