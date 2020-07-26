import 'package:case_manager/generated/api/user_management/user-management-service.pb.dart';
import 'package:dio/dio.dart';

import '../Api.dart';

class AuthApi {
  static Future<Response> login(LoginWithEmailMsg loginMessage) {
    return Api.managementClient.post("${Api.authUrl}/login-with-email", data: loginMessage.toProto3Json());
  }
}
