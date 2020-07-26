import 'package:case_manager/generated/api/user_management/user-management-service.pb.dart';
import 'package:dio/dio.dart';

import '../Api.dart';

class AuthApi {
  static const String RENEW_TOKEN_URL = "${Api.AUTH_URL}/renew-token";

  static Future<Response> login(LoginWithEmailMsg loginMessage) {
    return Api.managementClient.post("${Api.AUTH_URL}/login-with-email", data: loginMessage.toProto3Json());
  }

  static Future<Response> renewAccessToken(RefreshJWTRequest renewRequest) {
    return Api.participantAuthClient.post(RENEW_TOKEN_URL, data: renewRequest.toProto3Json());
  }
}
