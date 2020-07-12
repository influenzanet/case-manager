import 'package:case_manager/api/types/Responses/TokenResponse.dart';
import 'package:json_annotation/json_annotation.dart';

import '../User.dart';

part "LoginResponse.g.dart";

@JsonSerializable(explicitToJson: true)
class LoginResponse {
  TokenResponse token;
  User user;
  bool secondFactorNeeded;

  LoginResponse(this.token, this.user, this.secondFactorNeeded);
  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
