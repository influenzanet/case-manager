class User {
  String id;
  UserAccount account;
  List<String> roles;
  UserTimestamps timestamps;
  List<UserProfile> profiles;
  ContactPreferences contactPreferences;
  List<ContactInfo> contactInfos;
}

class UserAccount {
  String type;
  String accountId;
  int accountConfirmedAt;
  String preferredLanguage;
}

class UserTimestamps {
  int createdAt;
  int updatedAt;
  int lastLogin;
  int lastTokenRefresh;
}

class UserProfile {
  String id;
  String alias;
  int consentConfirmedAt;
  String avatarId;
  int createdAt;
}

class ContactPreferences {
  bool subscribedToNewsletter;
  List<String> sendNewsletterTo;
}

abstract class ContactInfo {
  String id;
  String type;
  int confirmedAt;
}

class EmailContactInfo extends ContactInfo {
  String email;
}

class PhoneContactInfo extends ContactInfo {
  String phone;
}
