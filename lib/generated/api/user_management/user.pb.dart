///
//  Generated code. Do not modify.
//  source: user_management/user.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class User_Account extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('User.Account', package: const $pb.PackageName('inf.user'), createEmptyInstance: create)
    ..aOS(1, 'type')
    ..aOS(2, 'accountId')
    ..aInt64(3, 'accountConfirmedAt')
    ..aOS(4, 'preferredLanguage')
    ..hasRequiredFields = false
  ;

  User_Account._() : super();
  factory User_Account() => create();
  factory User_Account.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User_Account.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  User_Account clone() => User_Account()..mergeFromMessage(this);
  User_Account copyWith(void Function(User_Account) updates) => super.copyWith((message) => updates(message as User_Account));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static User_Account create() => User_Account._();
  User_Account createEmptyInstance() => create();
  static $pb.PbList<User_Account> createRepeated() => $pb.PbList<User_Account>();
  @$core.pragma('dart2js:noInline')
  static User_Account getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User_Account>(create);
  static User_Account _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountId => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get accountConfirmedAt => $_getI64(2);
  @$pb.TagNumber(3)
  set accountConfirmedAt($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountConfirmedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountConfirmedAt() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get preferredLanguage => $_getSZ(3);
  @$pb.TagNumber(4)
  set preferredLanguage($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPreferredLanguage() => $_has(3);
  @$pb.TagNumber(4)
  void clearPreferredLanguage() => clearField(4);
}

class User_Timestamps extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('User.Timestamps', package: const $pb.PackageName('inf.user'), createEmptyInstance: create)
    ..aInt64(1, 'createdAt')
    ..aInt64(2, 'updatedAt')
    ..aInt64(3, 'lastLogin')
    ..aInt64(4, 'lastTokenRefresh')
    ..hasRequiredFields = false
  ;

  User_Timestamps._() : super();
  factory User_Timestamps() => create();
  factory User_Timestamps.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User_Timestamps.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  User_Timestamps clone() => User_Timestamps()..mergeFromMessage(this);
  User_Timestamps copyWith(void Function(User_Timestamps) updates) => super.copyWith((message) => updates(message as User_Timestamps));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static User_Timestamps create() => User_Timestamps._();
  User_Timestamps createEmptyInstance() => create();
  static $pb.PbList<User_Timestamps> createRepeated() => $pb.PbList<User_Timestamps>();
  @$core.pragma('dart2js:noInline')
  static User_Timestamps getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User_Timestamps>(create);
  static User_Timestamps _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get createdAt => $_getI64(0);
  @$pb.TagNumber(1)
  set createdAt($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreatedAt() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreatedAt() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get updatedAt => $_getI64(1);
  @$pb.TagNumber(2)
  set updatedAt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpdatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdatedAt() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get lastLogin => $_getI64(2);
  @$pb.TagNumber(3)
  set lastLogin($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastLogin() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastLogin() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get lastTokenRefresh => $_getI64(3);
  @$pb.TagNumber(4)
  set lastTokenRefresh($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastTokenRefresh() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastTokenRefresh() => clearField(4);
}

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('User', package: const $pb.PackageName('inf.user'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOM<User_Account>(2, 'account', subBuilder: User_Account.create)
    ..pPS(3, 'roles')
    ..aOM<User_Timestamps>(4, 'timestamps', subBuilder: User_Timestamps.create)
    ..pc<Profile>(5, 'profiles', $pb.PbFieldType.PM, subBuilder: Profile.create)
    ..aOM<ContactPreferences>(6, 'contactPreferences', subBuilder: ContactPreferences.create)
    ..pc<ContactInfo>(7, 'contactInfos', $pb.PbFieldType.PM, subBuilder: ContactInfo.create)
    ..hasRequiredFields = false
  ;

  User._() : super();
  factory User() => create();
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  User clone() => User()..mergeFromMessage(this);
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  User_Account get account => $_getN(1);
  @$pb.TagNumber(2)
  set account(User_Account v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccount() => clearField(2);
  @$pb.TagNumber(2)
  User_Account ensureAccount() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get roles => $_getList(2);

  @$pb.TagNumber(4)
  User_Timestamps get timestamps => $_getN(3);
  @$pb.TagNumber(4)
  set timestamps(User_Timestamps v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTimestamps() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimestamps() => clearField(4);
  @$pb.TagNumber(4)
  User_Timestamps ensureTimestamps() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<Profile> get profiles => $_getList(4);

  @$pb.TagNumber(6)
  ContactPreferences get contactPreferences => $_getN(5);
  @$pb.TagNumber(6)
  set contactPreferences(ContactPreferences v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasContactPreferences() => $_has(5);
  @$pb.TagNumber(6)
  void clearContactPreferences() => clearField(6);
  @$pb.TagNumber(6)
  ContactPreferences ensureContactPreferences() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.List<ContactInfo> get contactInfos => $_getList(6);
}

enum ContactInfo_Address {
  email, 
  phone, 
  notSet
}

class ContactInfo extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ContactInfo_Address> _ContactInfo_AddressByTag = {
    4 : ContactInfo_Address.email,
    5 : ContactInfo_Address.phone,
    0 : ContactInfo_Address.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ContactInfo', package: const $pb.PackageName('inf.user'), createEmptyInstance: create)
    ..oo(0, [4, 5])
    ..aOS(1, 'id')
    ..aOS(2, 'type')
    ..aInt64(3, 'confirmedAt')
    ..aOS(4, 'email')
    ..aOS(5, 'phone')
    ..hasRequiredFields = false
  ;

  ContactInfo._() : super();
  factory ContactInfo() => create();
  factory ContactInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContactInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ContactInfo clone() => ContactInfo()..mergeFromMessage(this);
  ContactInfo copyWith(void Function(ContactInfo) updates) => super.copyWith((message) => updates(message as ContactInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContactInfo create() => ContactInfo._();
  ContactInfo createEmptyInstance() => create();
  static $pb.PbList<ContactInfo> createRepeated() => $pb.PbList<ContactInfo>();
  @$core.pragma('dart2js:noInline')
  static ContactInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContactInfo>(create);
  static ContactInfo _defaultInstance;

  ContactInfo_Address whichAddress() => _ContactInfo_AddressByTag[$_whichOneof(0)];
  void clearAddress() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get confirmedAt => $_getI64(2);
  @$pb.TagNumber(3)
  set confirmedAt($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasConfirmedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearConfirmedAt() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get email => $_getSZ(3);
  @$pb.TagNumber(4)
  set email($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEmail() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmail() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get phone => $_getSZ(4);
  @$pb.TagNumber(5)
  set phone($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPhone() => $_has(4);
  @$pb.TagNumber(5)
  void clearPhone() => clearField(5);
}

class ContactPreferences extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ContactPreferences', package: const $pb.PackageName('inf.user'), createEmptyInstance: create)
    ..aOB(1, 'subscribedToNewsletter')
    ..pPS(2, 'sendNewsletterTo')
    ..hasRequiredFields = false
  ;

  ContactPreferences._() : super();
  factory ContactPreferences() => create();
  factory ContactPreferences.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContactPreferences.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ContactPreferences clone() => ContactPreferences()..mergeFromMessage(this);
  ContactPreferences copyWith(void Function(ContactPreferences) updates) => super.copyWith((message) => updates(message as ContactPreferences));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContactPreferences create() => ContactPreferences._();
  ContactPreferences createEmptyInstance() => create();
  static $pb.PbList<ContactPreferences> createRepeated() => $pb.PbList<ContactPreferences>();
  @$core.pragma('dart2js:noInline')
  static ContactPreferences getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContactPreferences>(create);
  static ContactPreferences _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get subscribedToNewsletter => $_getBF(0);
  @$pb.TagNumber(1)
  set subscribedToNewsletter($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubscribedToNewsletter() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubscribedToNewsletter() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get sendNewsletterTo => $_getList(1);
}

class Profile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Profile', package: const $pb.PackageName('inf.user'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'alias')
    ..aInt64(3, 'consentConfirmedAt')
    ..aOS(4, 'avatarId')
    ..aInt64(5, 'createdAt')
    ..hasRequiredFields = false
  ;

  Profile._() : super();
  factory Profile() => create();
  factory Profile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Profile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Profile clone() => Profile()..mergeFromMessage(this);
  Profile copyWith(void Function(Profile) updates) => super.copyWith((message) => updates(message as Profile));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Profile create() => Profile._();
  Profile createEmptyInstance() => create();
  static $pb.PbList<Profile> createRepeated() => $pb.PbList<Profile>();
  @$core.pragma('dart2js:noInline')
  static Profile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Profile>(create);
  static Profile _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get alias => $_getSZ(1);
  @$pb.TagNumber(2)
  set alias($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAlias() => $_has(1);
  @$pb.TagNumber(2)
  void clearAlias() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get consentConfirmedAt => $_getI64(2);
  @$pb.TagNumber(3)
  set consentConfirmedAt($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasConsentConfirmedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearConsentConfirmedAt() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get avatarId => $_getSZ(3);
  @$pb.TagNumber(4)
  set avatarId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAvatarId() => $_has(3);
  @$pb.TagNumber(4)
  void clearAvatarId() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get createdAt => $_getI64(4);
  @$pb.TagNumber(5)
  set createdAt($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);
}

