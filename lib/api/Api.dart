import 'package:case_manager/config/Config.dart';
import 'package:dio/dio.dart';

class Api {
  static final _client = Dio(BaseOptions(baseUrl: Config.apiBaseUrl));

  static Future<Response> login(String email, String password) async {
    try {
      var response = await _client.post(
        "/v1/auth/login-with-email",
        data: {"email": email, "password": password, "instanceId": Config.instanceId},
      );
      return response;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
