import 'package:json_annotation/json_annotation.dart';

part 'User.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  String id;
  UserAccount account;
  List<String> roles;
  UserTimestamps timestamps;
  List<UserProfile> profiles;
  ContactPreferences contactPreferences;
  List<ContactInfo> contactInfos;

  User({this.id, this.account, this.roles, this.timestamps, this.profiles, this.contactPreferences, this.contactInfos});
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class UserAccount {
  String type;
  String accountId;
  int accountConfirmedAt;
  String preferredLanguage;

  UserAccount(this.type, this.accountId, String accountConfirmedAt, this.preferredLanguage) {
    this.accountConfirmedAt = int.parse(accountConfirmedAt ?? "0");
  }

  factory UserAccount.fromJson(Map<String, dynamic> json) => _$UserAccountFromJson(json);
  Map<String, dynamic> toJson() => _$UserAccountToJson(this);
}

@JsonSerializable()
class UserTimestamps {
  int createdAt;
  int updatedAt;
  int lastLogin;
  int lastTokenRefresh;

  UserTimestamps(String createdAt, String updatedAt, String lastLogin, String lastTokenRefresh) {
    this.createdAt = int.parse(createdAt ?? "0");
    this.updatedAt = int.parse(updatedAt ?? "0");
    this.lastLogin = int.parse(lastLogin ?? "0");
    this.lastTokenRefresh = int.parse(lastTokenRefresh ?? "0");
  }

  factory UserTimestamps.fromJson(Map<String, dynamic> json) => _$UserTimestampsFromJson(json);
  Map<String, dynamic> toJson() => _$UserTimestampsToJson(this);
}

@JsonSerializable()
class UserProfile {
  String id;
  String alias;
  int consentConfirmedAt;
  String avatarId;
  int createdAt;

  UserProfile(this.id, this.alias, String consentConfirmedAt, this.avatarId, String createdAt) {
    this.consentConfirmedAt = int.parse(consentConfirmedAt ?? "0");
    this.createdAt = int.parse(createdAt ?? "0");
  }
  factory UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);
  Map<String, dynamic> toJson() => _$UserProfileToJson(this);
}

@JsonSerializable()
class ContactPreferences {
  bool subscribedToNewsletter;
  List<String> sendNewsletterTo;

  ContactPreferences(this.subscribedToNewsletter, this.sendNewsletterTo);
  factory ContactPreferences.fromJson(Map<String, dynamic> json) => _$ContactPreferencesFromJson(json);
  Map<String, dynamic> toJson() => _$ContactPreferencesToJson(this);
}

abstract class ContactInfo {
  String id;
  String type;
  int confirmedAt;

  ContactInfo(this.id, this.type, String confirmedAt) {
    this.confirmedAt = int.parse(confirmedAt ?? "0");
  }

  factory ContactInfo.fromJson(Map<String, dynamic> json) {
    String email = json["email"] as String;
    if (email != null && email.length > 0) {
      return EmailContactInfo.fromJson(json);
    } else {
      return PhoneContactInfo.fromJson(json);
    }
  }

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class EmailContactInfo extends ContactInfo {
  String email;

  EmailContactInfo(String id, String type, String confirmedAt, this.email) : super(id, type, confirmedAt);

  factory EmailContactInfo.fromJson(Map<String, dynamic> json) => _$EmailContactInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EmailContactInfoToJson(this);
}

@JsonSerializable()
class PhoneContactInfo extends ContactInfo {
  String phone;

  PhoneContactInfo(String id, String type, String confirmedAt, this.phone) : super(id, type, confirmedAt);

  factory PhoneContactInfo.fromJson(Map<String, dynamic> json) => _$PhoneContactInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhoneContactInfoToJson(this);
}
