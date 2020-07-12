import 'package:case_manager/api/types/StudyInfos.dart';
import 'package:json_annotation/json_annotation.dart';

part "StudiesResponse.g.dart";

@JsonSerializable(explicitToJson: true)
class StudiesResponse {
  List<StudyInfos> studies;

  StudiesResponse(this.studies);
  factory StudiesResponse.fromJson(Map<String, dynamic> json) => _$StudiesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$StudiesResponseToJson(this);
}
