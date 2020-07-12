import 'package:case_manager/api/types/User.dart';
import 'package:json_annotation/json_annotation.dart';

part "TokenResponse.g.dart";

@JsonSerializable(explicitToJson: true)
class TokenResponse {
  String accessToken;
  String refreshToken;
  int expiresIn;
  List<UserProfile> profiles;
  String selectedProfile;
  String preferredLanguage;

  TokenResponse(
      this.accessToken, this.refreshToken, this.expiresIn, this.profiles, this.selectedProfile, this.preferredLanguage);

  factory TokenResponse.fromJson(Map<String, dynamic> json) => _$TokenResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TokenResponseToJson(this);
}
