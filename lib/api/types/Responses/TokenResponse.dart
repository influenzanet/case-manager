import 'package:case_manager/api/types/User.dart';

class TokenResponse {
  String accessToken;
  String refreshToken;
  int expiresIn;
  List<UserProfile> profiles;
  String selectedProfile;
  String preferredLanguage;
}
