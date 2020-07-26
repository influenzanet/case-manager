import 'package:json_annotation/json_annotation.dart';

part "AppState.g.dart";

@JsonSerializable(explicitToJson: true)
class AppState {
  String userId;
  String preferredLanguage;

  String accessToken;
  String refreshToken;
  int expiresAt;

  AppState(this.userId, this.preferredLanguage, this.accessToken, this.refreshToken, this.expiresAt);
  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);
  Map<String, dynamic> toJson() => _$AppStateToJson(this);
}
