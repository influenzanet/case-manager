import 'package:case_manager/api/types/Responses/TokenResponse.dart';

import '../User.dart';

class LoginResponse {
  TokenResponse token;
  User user;
  bool secondFactorNeeded;
}
