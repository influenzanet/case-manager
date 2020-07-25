import 'package:case_manager/generated/api/user_management/user-management-service.pb.dart';
import 'package:dio/dio.dart';

import 'Api.dart';

class AuthApi {
  static Future<Response> login(LoginWithEmailMsg loginMessage) async {
    return await Api.client.post("${Api.authUrl}/login-with-email", data: loginMessage.toProto3Json());
  }
}
