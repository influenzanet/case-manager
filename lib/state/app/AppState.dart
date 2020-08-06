import 'package:json_annotation/json_annotation.dart';

part "AppState.g.dart";

@JsonSerializable(explicitToJson: true)
class AppState {
  @JsonKey(defaultValue: "")
  String userId;
  @JsonKey(defaultValue: "en")
  String preferredLanguage;
  @JsonKey(defaultValue: true)
  bool persistState;

  @JsonKey(defaultValue: "")
  String accessToken;
  @JsonKey(defaultValue: "")
  String refreshToken;
  @JsonKey(defaultValue: 0)
  int expiresAt;

  AppState(this.userId, this.preferredLanguage, this.persistState, this.accessToken, this.refreshToken, this.expiresAt);
  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);
  Map<String, dynamic> toJson() => _$AppStateToJson(this);
}
