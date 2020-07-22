///
//  Generated code. Do not modify.
//  source: user_management/user-management-service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'user.pb.dart' as $4;
import '../shared/auth_info.pb.dart' as $2;
import '../google/protobuf/empty.pb.dart' as $0;

import 'user-management-service.pbenum.dart';

export 'user-management-service.pbenum.dart';

class ServiceStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ServiceStatus', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..e<ServiceStatus_StatusValue>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: ServiceStatus_StatusValue.NORMAL, valueOf: ServiceStatus_StatusValue.valueOf, enumValues: ServiceStatus_StatusValue.values)
    ..aOS(2, 'msg')
    ..aOS(3, 'version')
    ..hasRequiredFields = false
  ;

  ServiceStatus._() : super();
  factory ServiceStatus() => create();
  factory ServiceStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ServiceStatus clone() => ServiceStatus()..mergeFromMessage(this);
  ServiceStatus copyWith(void Function(ServiceStatus) updates) => super.copyWith((message) => updates(message as ServiceStatus));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceStatus create() => ServiceStatus._();
  ServiceStatus createEmptyInstance() => create();
  static $pb.PbList<ServiceStatus> createRepeated() => $pb.PbList<ServiceStatus>();
  @$core.pragma('dart2js:noInline')
  static ServiceStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceStatus>(create);
  static ServiceStatus _defaultInstance;

  @$pb.TagNumber(1)
  ServiceStatus_StatusValue get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(ServiceStatus_StatusValue v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);
  @$pb.TagNumber(2)
  set msg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => clearField(3);
}

class SignupWithEmailMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SignupWithEmailMsg', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOS(1, 'email')
    ..aOS(2, 'password')
    ..aOS(3, 'instanceId')
    ..aOS(4, 'preferredLanguage')
    ..aOB(5, 'wantsNewsletter')
    ..aOB(6, 'use2fa', protoName: 'use_2fa')
    ..hasRequiredFields = false
  ;

  SignupWithEmailMsg._() : super();
  factory SignupWithEmailMsg() => create();
  factory SignupWithEmailMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignupWithEmailMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SignupWithEmailMsg clone() => SignupWithEmailMsg()..mergeFromMessage(this);
  SignupWithEmailMsg copyWith(void Function(SignupWithEmailMsg) updates) => super.copyWith((message) => updates(message as SignupWithEmailMsg));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignupWithEmailMsg create() => SignupWithEmailMsg._();
  SignupWithEmailMsg createEmptyInstance() => create();
  static $pb.PbList<SignupWithEmailMsg> createRepeated() => $pb.PbList<SignupWithEmailMsg>();
  @$core.pragma('dart2js:noInline')
  static SignupWithEmailMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignupWithEmailMsg>(create);
  static SignupWithEmailMsg _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get instanceId => $_getSZ(2);
  @$pb.TagNumber(3)
  set instanceId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInstanceId() => $_has(2);
  @$pb.TagNumber(3)
  void clearInstanceId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get preferredLanguage => $_getSZ(3);
  @$pb.TagNumber(4)
  set preferredLanguage($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPreferredLanguage() => $_has(3);
  @$pb.TagNumber(4)
  void clearPreferredLanguage() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get wantsNewsletter => $_getBF(4);
  @$pb.TagNumber(5)
  set wantsNewsletter($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasWantsNewsletter() => $_has(4);
  @$pb.TagNumber(5)
  void clearWantsNewsletter() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get use2fa => $_getBF(5);
  @$pb.TagNumber(6)
  set use2fa($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUse2fa() => $_has(5);
  @$pb.TagNumber(6)
  void clearUse2fa() => clearField(6);
}

class LoginWithEmailMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LoginWithEmailMsg', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOS(1, 'email')
    ..aOS(2, 'password')
    ..aOS(3, 'instanceId')
    ..aOB(4, 'asParticipant')
    ..aOS(5, 'verificationCode')
    ..hasRequiredFields = false
  ;

  LoginWithEmailMsg._() : super();
  factory LoginWithEmailMsg() => create();
  factory LoginWithEmailMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginWithEmailMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LoginWithEmailMsg clone() => LoginWithEmailMsg()..mergeFromMessage(this);
  LoginWithEmailMsg copyWith(void Function(LoginWithEmailMsg) updates) => super.copyWith((message) => updates(message as LoginWithEmailMsg));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginWithEmailMsg create() => LoginWithEmailMsg._();
  LoginWithEmailMsg createEmptyInstance() => create();
  static $pb.PbList<LoginWithEmailMsg> createRepeated() => $pb.PbList<LoginWithEmailMsg>();
  @$core.pragma('dart2js:noInline')
  static LoginWithEmailMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginWithEmailMsg>(create);
  static LoginWithEmailMsg _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get instanceId => $_getSZ(2);
  @$pb.TagNumber(3)
  set instanceId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInstanceId() => $_has(2);
  @$pb.TagNumber(3)
  void clearInstanceId() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get asParticipant => $_getBF(3);
  @$pb.TagNumber(4)
  set asParticipant($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAsParticipant() => $_has(3);
  @$pb.TagNumber(4)
  void clearAsParticipant() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get verificationCode => $_getSZ(4);
  @$pb.TagNumber(5)
  set verificationCode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasVerificationCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearVerificationCode() => clearField(5);
}

class AutoValidateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AutoValidateReq', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOS(1, 'tempToken')
    ..aOS(2, 'accessToken')
    ..hasRequiredFields = false
  ;

  AutoValidateReq._() : super();
  factory AutoValidateReq() => create();
  factory AutoValidateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AutoValidateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AutoValidateReq clone() => AutoValidateReq()..mergeFromMessage(this);
  AutoValidateReq copyWith(void Function(AutoValidateReq) updates) => super.copyWith((message) => updates(message as AutoValidateReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AutoValidateReq create() => AutoValidateReq._();
  AutoValidateReq createEmptyInstance() => create();
  static $pb.PbList<AutoValidateReq> createRepeated() => $pb.PbList<AutoValidateReq>();
  @$core.pragma('dart2js:noInline')
  static AutoValidateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AutoValidateReq>(create);
  static AutoValidateReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tempToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set tempToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTempToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearTempToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accessToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set accessToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccessToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccessToken() => clearField(2);
}

class AutoValidateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AutoValidateResponse', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOS(1, 'accountId')
    ..aOS(2, 'verificationCode')
    ..aOB(3, 'isSameUser')
    ..aOS(4, 'instanceId')
    ..hasRequiredFields = false
  ;

  AutoValidateResponse._() : super();
  factory AutoValidateResponse() => create();
  factory AutoValidateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AutoValidateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AutoValidateResponse clone() => AutoValidateResponse()..mergeFromMessage(this);
  AutoValidateResponse copyWith(void Function(AutoValidateResponse) updates) => super.copyWith((message) => updates(message as AutoValidateResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AutoValidateResponse create() => AutoValidateResponse._();
  AutoValidateResponse createEmptyInstance() => create();
  static $pb.PbList<AutoValidateResponse> createRepeated() => $pb.PbList<AutoValidateResponse>();
  @$core.pragma('dart2js:noInline')
  static AutoValidateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AutoValidateResponse>(create);
  static AutoValidateResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get verificationCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set verificationCode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVerificationCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearVerificationCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isSameUser => $_getBF(2);
  @$pb.TagNumber(3)
  set isSameUser($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsSameUser() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsSameUser() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get instanceId => $_getSZ(3);
  @$pb.TagNumber(4)
  set instanceId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInstanceId() => $_has(3);
  @$pb.TagNumber(4)
  void clearInstanceId() => clearField(4);
}

class SendVerificationCodeReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendVerificationCodeReq', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOS(1, 'email')
    ..aOS(2, 'password')
    ..aOS(3, 'instanceId')
    ..hasRequiredFields = false
  ;

  SendVerificationCodeReq._() : super();
  factory SendVerificationCodeReq() => create();
  factory SendVerificationCodeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendVerificationCodeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SendVerificationCodeReq clone() => SendVerificationCodeReq()..mergeFromMessage(this);
  SendVerificationCodeReq copyWith(void Function(SendVerificationCodeReq) updates) => super.copyWith((message) => updates(message as SendVerificationCodeReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendVerificationCodeReq create() => SendVerificationCodeReq._();
  SendVerificationCodeReq createEmptyInstance() => create();
  static $pb.PbList<SendVerificationCodeReq> createRepeated() => $pb.PbList<SendVerificationCodeReq>();
  @$core.pragma('dart2js:noInline')
  static SendVerificationCodeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendVerificationCodeReq>(create);
  static SendVerificationCodeReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get instanceId => $_getSZ(2);
  @$pb.TagNumber(3)
  set instanceId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInstanceId() => $_has(2);
  @$pb.TagNumber(3)
  void clearInstanceId() => clearField(3);
}

class LoginResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LoginResponse', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOM<TokenResponse>(1, 'token', subBuilder: TokenResponse.create)
    ..aOM<$4.User>(2, 'user', subBuilder: $4.User.create)
    ..aOB(3, 'secondFactorNeeded')
    ..hasRequiredFields = false
  ;

  LoginResponse._() : super();
  factory LoginResponse() => create();
  factory LoginResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LoginResponse clone() => LoginResponse()..mergeFromMessage(this);
  LoginResponse copyWith(void Function(LoginResponse) updates) => super.copyWith((message) => updates(message as LoginResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginResponse create() => LoginResponse._();
  LoginResponse createEmptyInstance() => create();
  static $pb.PbList<LoginResponse> createRepeated() => $pb.PbList<LoginResponse>();
  @$core.pragma('dart2js:noInline')
  static LoginResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginResponse>(create);
  static LoginResponse _defaultInstance;

  @$pb.TagNumber(1)
  TokenResponse get token => $_getN(0);
  @$pb.TagNumber(1)
  set token(TokenResponse v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
  @$pb.TagNumber(1)
  TokenResponse ensureToken() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.User get user => $_getN(1);
  @$pb.TagNumber(2)
  set user($4.User v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);
  @$pb.TagNumber(2)
  $4.User ensureUser() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get secondFactorNeeded => $_getBF(2);
  @$pb.TagNumber(3)
  set secondFactorNeeded($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSecondFactorNeeded() => $_has(2);
  @$pb.TagNumber(3)
  void clearSecondFactorNeeded() => clearField(3);
}

class UserReference extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserReference', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOS(2, 'userId')
    ..aOS(3, 'instanceId')
    ..hasRequiredFields = false
  ;

  UserReference._() : super();
  factory UserReference() => create();
  factory UserReference.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserReference.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserReference clone() => UserReference()..mergeFromMessage(this);
  UserReference copyWith(void Function(UserReference) updates) => super.copyWith((message) => updates(message as UserReference));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserReference create() => UserReference._();
  UserReference createEmptyInstance() => create();
  static $pb.PbList<UserReference> createRepeated() => $pb.PbList<UserReference>();
  @$core.pragma('dart2js:noInline')
  static UserReference getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserReference>(create);
  static UserReference _defaultInstance;

  @$pb.TagNumber(1)
  $2.TokenInfos get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($2.TokenInfos v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
  @$pb.TagNumber(1)
  $2.TokenInfos ensureToken() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get instanceId => $_getSZ(2);
  @$pb.TagNumber(3)
  set instanceId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInstanceId() => $_has(2);
  @$pb.TagNumber(3)
  void clearInstanceId() => clearField(3);
}

class RevokeRefreshTokensReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RevokeRefreshTokensReq', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..hasRequiredFields = false
  ;

  RevokeRefreshTokensReq._() : super();
  factory RevokeRefreshTokensReq() => create();
  factory RevokeRefreshTokensReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RevokeRefreshTokensReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RevokeRefreshTokensReq clone() => RevokeRefreshTokensReq()..mergeFromMessage(this);
  RevokeRefreshTokensReq copyWith(void Function(RevokeRefreshTokensReq) updates) => super.copyWith((message) => updates(message as RevokeRefreshTokensReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RevokeRefreshTokensReq create() => RevokeRefreshTokensReq._();
  RevokeRefreshTokensReq createEmptyInstance() => create();
  static $pb.PbList<RevokeRefreshTokensReq> createRepeated() => $pb.PbList<RevokeRefreshTokensReq>();
  @$core.pragma('dart2js:noInline')
  static RevokeRefreshTokensReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RevokeRefreshTokensReq>(create);
  static RevokeRefreshTokensReq _defaultInstance;

  @$pb.TagNumber(1)
  $2.TokenInfos get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($2.TokenInfos v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
  @$pb.TagNumber(1)
  $2.TokenInfos ensureToken() => $_ensure(0);
}

class RefreshTokenRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RefreshTokenRequest', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOS(1, 'userId')
    ..aOS(2, 'instanceId')
    ..aOS(3, 'refreshToken')
    ..hasRequiredFields = false
  ;

  RefreshTokenRequest._() : super();
  factory RefreshTokenRequest() => create();
  factory RefreshTokenRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RefreshTokenRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RefreshTokenRequest clone() => RefreshTokenRequest()..mergeFromMessage(this);
  RefreshTokenRequest copyWith(void Function(RefreshTokenRequest) updates) => super.copyWith((message) => updates(message as RefreshTokenRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RefreshTokenRequest create() => RefreshTokenRequest._();
  RefreshTokenRequest createEmptyInstance() => create();
  static $pb.PbList<RefreshTokenRequest> createRepeated() => $pb.PbList<RefreshTokenRequest>();
  @$core.pragma('dart2js:noInline')
  static RefreshTokenRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RefreshTokenRequest>(create);
  static RefreshTokenRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get instanceId => $_getSZ(1);
  @$pb.TagNumber(2)
  set instanceId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInstanceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearInstanceId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get refreshToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set refreshToken($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRefreshToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearRefreshToken() => clearField(3);
}

class AppTokenRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AppTokenRequest', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOS(1, 'token')
    ..hasRequiredFields = false
  ;

  AppTokenRequest._() : super();
  factory AppTokenRequest() => create();
  factory AppTokenRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppTokenRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AppTokenRequest clone() => AppTokenRequest()..mergeFromMessage(this);
  AppTokenRequest copyWith(void Function(AppTokenRequest) updates) => super.copyWith((message) => updates(message as AppTokenRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppTokenRequest create() => AppTokenRequest._();
  AppTokenRequest createEmptyInstance() => create();
  static $pb.PbList<AppTokenRequest> createRepeated() => $pb.PbList<AppTokenRequest>();
  @$core.pragma('dart2js:noInline')
  static AppTokenRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppTokenRequest>(create);
  static AppTokenRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

class AppTokenValidation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AppTokenValidation', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..pPS(1, 'instances')
    ..hasRequiredFields = false
  ;

  AppTokenValidation._() : super();
  factory AppTokenValidation() => create();
  factory AppTokenValidation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppTokenValidation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AppTokenValidation clone() => AppTokenValidation()..mergeFromMessage(this);
  AppTokenValidation copyWith(void Function(AppTokenValidation) updates) => super.copyWith((message) => updates(message as AppTokenValidation));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppTokenValidation create() => AppTokenValidation._();
  AppTokenValidation createEmptyInstance() => create();
  static $pb.PbList<AppTokenValidation> createRepeated() => $pb.PbList<AppTokenValidation>();
  @$core.pragma('dart2js:noInline')
  static AppTokenValidation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppTokenValidation>(create);
  static AppTokenValidation _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get instances => $_getList(0);
}

class SwitchProfileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SwitchProfileRequest', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOS(2, 'profileId')
    ..aOS(3, 'refreshToken')
    ..hasRequiredFields = false
  ;

  SwitchProfileRequest._() : super();
  factory SwitchProfileRequest() => create();
  factory SwitchProfileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwitchProfileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SwitchProfileRequest clone() => SwitchProfileRequest()..mergeFromMessage(this);
  SwitchProfileRequest copyWith(void Function(SwitchProfileRequest) updates) => super.copyWith((message) => updates(message as SwitchProfileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwitchProfileRequest create() => SwitchProfileRequest._();
  SwitchProfileRequest createEmptyInstance() => create();
  static $pb.PbList<SwitchProfileRequest> createRepeated() => $pb.PbList<SwitchProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static SwitchProfileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwitchProfileRequest>(create);
  static SwitchProfileRequest _defaultInstance;

  @$pb.TagNumber(1)
  $2.TokenInfos get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($2.TokenInfos v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
  @$pb.TagNumber(1)
  $2.TokenInfos ensureToken() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get profileId => $_getSZ(1);
  @$pb.TagNumber(2)
  set profileId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProfileId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProfileId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get refreshToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set refreshToken($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRefreshToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearRefreshToken() => clearField(3);
}

class ProfileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ProfileRequest', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOM<$4.Profile>(2, 'profile', subBuilder: $4.Profile.create)
    ..hasRequiredFields = false
  ;

  ProfileRequest._() : super();
  factory ProfileRequest() => create();
  factory ProfileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProfileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ProfileRequest clone() => ProfileRequest()..mergeFromMessage(this);
  ProfileRequest copyWith(void Function(ProfileRequest) updates) => super.copyWith((message) => updates(message as ProfileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProfileRequest create() => ProfileRequest._();
  ProfileRequest createEmptyInstance() => create();
  static $pb.PbList<ProfileRequest> createRepeated() => $pb.PbList<ProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static ProfileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProfileRequest>(create);
  static ProfileRequest _defaultInstance;

  @$pb.TagNumber(1)
  $2.TokenInfos get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($2.TokenInfos v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
  @$pb.TagNumber(1)
  $2.TokenInfos ensureToken() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.Profile get profile => $_getN(1);
  @$pb.TagNumber(2)
  set profile($4.Profile v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasProfile() => $_has(1);
  @$pb.TagNumber(2)
  void clearProfile() => clearField(2);
  @$pb.TagNumber(2)
  $4.Profile ensureProfile() => $_ensure(1);
}

class UserAuthInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserAuthInfo', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOS(1, 'userId')
    ..pPS(2, 'roles')
    ..aOS(3, 'instanceId')
    ..aOS(4, 'accountId')
    ..pc<$4.Profile>(5, 'profiles', $pb.PbFieldType.PM, subBuilder: $4.Profile.create)
    ..aOM<$4.Profile>(6, 'selectedProfile', subBuilder: $4.Profile.create)
    ..aOB(7, 'accountConfirmed')
    ..aOS(8, 'preferredLanguage')
    ..hasRequiredFields = false
  ;

  UserAuthInfo._() : super();
  factory UserAuthInfo() => create();
  factory UserAuthInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserAuthInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserAuthInfo clone() => UserAuthInfo()..mergeFromMessage(this);
  UserAuthInfo copyWith(void Function(UserAuthInfo) updates) => super.copyWith((message) => updates(message as UserAuthInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserAuthInfo create() => UserAuthInfo._();
  UserAuthInfo createEmptyInstance() => create();
  static $pb.PbList<UserAuthInfo> createRepeated() => $pb.PbList<UserAuthInfo>();
  @$core.pragma('dart2js:noInline')
  static UserAuthInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserAuthInfo>(create);
  static UserAuthInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get roles => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get instanceId => $_getSZ(2);
  @$pb.TagNumber(3)
  set instanceId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInstanceId() => $_has(2);
  @$pb.TagNumber(3)
  void clearInstanceId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get accountId => $_getSZ(3);
  @$pb.TagNumber(4)
  set accountId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccountId() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccountId() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$4.Profile> get profiles => $_getList(4);

  @$pb.TagNumber(6)
  $4.Profile get selectedProfile => $_getN(5);
  @$pb.TagNumber(6)
  set selectedProfile($4.Profile v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasSelectedProfile() => $_has(5);
  @$pb.TagNumber(6)
  void clearSelectedProfile() => clearField(6);
  @$pb.TagNumber(6)
  $4.Profile ensureSelectedProfile() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.bool get accountConfirmed => $_getBF(6);
  @$pb.TagNumber(7)
  set accountConfirmed($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAccountConfirmed() => $_has(6);
  @$pb.TagNumber(7)
  void clearAccountConfirmed() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get preferredLanguage => $_getSZ(7);
  @$pb.TagNumber(8)
  set preferredLanguage($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPreferredLanguage() => $_has(7);
  @$pb.TagNumber(8)
  void clearPreferredLanguage() => clearField(8);
}

class ResendContactVerificationReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ResendContactVerificationReq', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOS(2, 'type')
    ..aOS(3, 'address')
    ..hasRequiredFields = false
  ;

  ResendContactVerificationReq._() : super();
  factory ResendContactVerificationReq() => create();
  factory ResendContactVerificationReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResendContactVerificationReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ResendContactVerificationReq clone() => ResendContactVerificationReq()..mergeFromMessage(this);
  ResendContactVerificationReq copyWith(void Function(ResendContactVerificationReq) updates) => super.copyWith((message) => updates(message as ResendContactVerificationReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResendContactVerificationReq create() => ResendContactVerificationReq._();
  ResendContactVerificationReq createEmptyInstance() => create();
  static $pb.PbList<ResendContactVerificationReq> createRepeated() => $pb.PbList<ResendContactVerificationReq>();
  @$core.pragma('dart2js:noInline')
  static ResendContactVerificationReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResendContactVerificationReq>(create);
  static ResendContactVerificationReq _defaultInstance;

  @$pb.TagNumber(1)
  $2.TokenInfos get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($2.TokenInfos v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
  @$pb.TagNumber(1)
  $2.TokenInfos ensureToken() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get address => $_getSZ(2);
  @$pb.TagNumber(3)
  set address($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddress() => clearField(3);
}

class PasswordChangeMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PasswordChangeMsg', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOS(2, 'oldPassword')
    ..aOS(3, 'newPassword')
    ..hasRequiredFields = false
  ;

  PasswordChangeMsg._() : super();
  factory PasswordChangeMsg() => create();
  factory PasswordChangeMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PasswordChangeMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PasswordChangeMsg clone() => PasswordChangeMsg()..mergeFromMessage(this);
  PasswordChangeMsg copyWith(void Function(PasswordChangeMsg) updates) => super.copyWith((message) => updates(message as PasswordChangeMsg));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PasswordChangeMsg create() => PasswordChangeMsg._();
  PasswordChangeMsg createEmptyInstance() => create();
  static $pb.PbList<PasswordChangeMsg> createRepeated() => $pb.PbList<PasswordChangeMsg>();
  @$core.pragma('dart2js:noInline')
  static PasswordChangeMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PasswordChangeMsg>(create);
  static PasswordChangeMsg _defaultInstance;

  @$pb.TagNumber(1)
  $2.TokenInfos get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($2.TokenInfos v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
  @$pb.TagNumber(1)
  $2.TokenInfos ensureToken() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get oldPassword => $_getSZ(1);
  @$pb.TagNumber(2)
  set oldPassword($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOldPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearOldPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get newPassword => $_getSZ(2);
  @$pb.TagNumber(3)
  set newPassword($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNewPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearNewPassword() => clearField(3);
}

class InitiateResetPasswordMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('InitiateResetPasswordMsg', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOS(1, 'instanceId')
    ..aOS(2, 'accountId')
    ..hasRequiredFields = false
  ;

  InitiateResetPasswordMsg._() : super();
  factory InitiateResetPasswordMsg() => create();
  factory InitiateResetPasswordMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitiateResetPasswordMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  InitiateResetPasswordMsg clone() => InitiateResetPasswordMsg()..mergeFromMessage(this);
  InitiateResetPasswordMsg copyWith(void Function(InitiateResetPasswordMsg) updates) => super.copyWith((message) => updates(message as InitiateResetPasswordMsg));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InitiateResetPasswordMsg create() => InitiateResetPasswordMsg._();
  InitiateResetPasswordMsg createEmptyInstance() => create();
  static $pb.PbList<InitiateResetPasswordMsg> createRepeated() => $pb.PbList<InitiateResetPasswordMsg>();
  @$core.pragma('dart2js:noInline')
  static InitiateResetPasswordMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitiateResetPasswordMsg>(create);
  static InitiateResetPasswordMsg _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get instanceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set instanceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInstanceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInstanceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountId => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountId() => clearField(2);
}

class GetInfosForResetPasswordMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetInfosForResetPasswordMsg', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOS(1, 'token')
    ..hasRequiredFields = false
  ;

  GetInfosForResetPasswordMsg._() : super();
  factory GetInfosForResetPasswordMsg() => create();
  factory GetInfosForResetPasswordMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInfosForResetPasswordMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetInfosForResetPasswordMsg clone() => GetInfosForResetPasswordMsg()..mergeFromMessage(this);
  GetInfosForResetPasswordMsg copyWith(void Function(GetInfosForResetPasswordMsg) updates) => super.copyWith((message) => updates(message as GetInfosForResetPasswordMsg));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInfosForResetPasswordMsg create() => GetInfosForResetPasswordMsg._();
  GetInfosForResetPasswordMsg createEmptyInstance() => create();
  static $pb.PbList<GetInfosForResetPasswordMsg> createRepeated() => $pb.PbList<GetInfosForResetPasswordMsg>();
  @$core.pragma('dart2js:noInline')
  static GetInfosForResetPasswordMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInfosForResetPasswordMsg>(create);
  static GetInfosForResetPasswordMsg _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

class UserInfoForPWReset extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserInfoForPWReset', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOS(1, 'accountId')
    ..hasRequiredFields = false
  ;

  UserInfoForPWReset._() : super();
  factory UserInfoForPWReset() => create();
  factory UserInfoForPWReset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserInfoForPWReset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserInfoForPWReset clone() => UserInfoForPWReset()..mergeFromMessage(this);
  UserInfoForPWReset copyWith(void Function(UserInfoForPWReset) updates) => super.copyWith((message) => updates(message as UserInfoForPWReset));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserInfoForPWReset create() => UserInfoForPWReset._();
  UserInfoForPWReset createEmptyInstance() => create();
  static $pb.PbList<UserInfoForPWReset> createRepeated() => $pb.PbList<UserInfoForPWReset>();
  @$core.pragma('dart2js:noInline')
  static UserInfoForPWReset getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfoForPWReset>(create);
  static UserInfoForPWReset _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);
}

class ResetPasswordMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ResetPasswordMsg', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOS(1, 'token')
    ..aOS(2, 'newPassword')
    ..hasRequiredFields = false
  ;

  ResetPasswordMsg._() : super();
  factory ResetPasswordMsg() => create();
  factory ResetPasswordMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResetPasswordMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ResetPasswordMsg clone() => ResetPasswordMsg()..mergeFromMessage(this);
  ResetPasswordMsg copyWith(void Function(ResetPasswordMsg) updates) => super.copyWith((message) => updates(message as ResetPasswordMsg));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResetPasswordMsg create() => ResetPasswordMsg._();
  ResetPasswordMsg createEmptyInstance() => create();
  static $pb.PbList<ResetPasswordMsg> createRepeated() => $pb.PbList<ResetPasswordMsg>();
  @$core.pragma('dart2js:noInline')
  static ResetPasswordMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResetPasswordMsg>(create);
  static ResetPasswordMsg _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get newPassword => $_getSZ(1);
  @$pb.TagNumber(2)
  set newPassword($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNewPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearNewPassword() => clearField(2);
}

class EmailChangeMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EmailChangeMsg', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOS(2, 'newEmail')
    ..aOB(3, 'keepOldEmail')
    ..hasRequiredFields = false
  ;

  EmailChangeMsg._() : super();
  factory EmailChangeMsg() => create();
  factory EmailChangeMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmailChangeMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EmailChangeMsg clone() => EmailChangeMsg()..mergeFromMessage(this);
  EmailChangeMsg copyWith(void Function(EmailChangeMsg) updates) => super.copyWith((message) => updates(message as EmailChangeMsg));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmailChangeMsg create() => EmailChangeMsg._();
  EmailChangeMsg createEmptyInstance() => create();
  static $pb.PbList<EmailChangeMsg> createRepeated() => $pb.PbList<EmailChangeMsg>();
  @$core.pragma('dart2js:noInline')
  static EmailChangeMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmailChangeMsg>(create);
  static EmailChangeMsg _defaultInstance;

  @$pb.TagNumber(1)
  $2.TokenInfos get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($2.TokenInfos v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
  @$pb.TagNumber(1)
  $2.TokenInfos ensureToken() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get newEmail => $_getSZ(1);
  @$pb.TagNumber(2)
  set newEmail($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNewEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearNewEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get keepOldEmail => $_getBF(2);
  @$pb.TagNumber(3)
  set keepOldEmail($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKeepOldEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearKeepOldEmail() => clearField(3);
}

class LanguageChangeMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LanguageChangeMsg', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOS(2, 'languageCode')
    ..hasRequiredFields = false
  ;

  LanguageChangeMsg._() : super();
  factory LanguageChangeMsg() => create();
  factory LanguageChangeMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LanguageChangeMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LanguageChangeMsg clone() => LanguageChangeMsg()..mergeFromMessage(this);
  LanguageChangeMsg copyWith(void Function(LanguageChangeMsg) updates) => super.copyWith((message) => updates(message as LanguageChangeMsg));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LanguageChangeMsg create() => LanguageChangeMsg._();
  LanguageChangeMsg createEmptyInstance() => create();
  static $pb.PbList<LanguageChangeMsg> createRepeated() => $pb.PbList<LanguageChangeMsg>();
  @$core.pragma('dart2js:noInline')
  static LanguageChangeMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LanguageChangeMsg>(create);
  static LanguageChangeMsg _defaultInstance;

  @$pb.TagNumber(1)
  $2.TokenInfos get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($2.TokenInfos v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
  @$pb.TagNumber(1)
  $2.TokenInfos ensureToken() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get languageCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set languageCode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLanguageCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearLanguageCode() => clearField(2);
}

class ContactPreferencesMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ContactPreferencesMsg', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOM<$4.ContactPreferences>(2, 'contactPreferences', subBuilder: $4.ContactPreferences.create)
    ..hasRequiredFields = false
  ;

  ContactPreferencesMsg._() : super();
  factory ContactPreferencesMsg() => create();
  factory ContactPreferencesMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContactPreferencesMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ContactPreferencesMsg clone() => ContactPreferencesMsg()..mergeFromMessage(this);
  ContactPreferencesMsg copyWith(void Function(ContactPreferencesMsg) updates) => super.copyWith((message) => updates(message as ContactPreferencesMsg));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContactPreferencesMsg create() => ContactPreferencesMsg._();
  ContactPreferencesMsg createEmptyInstance() => create();
  static $pb.PbList<ContactPreferencesMsg> createRepeated() => $pb.PbList<ContactPreferencesMsg>();
  @$core.pragma('dart2js:noInline')
  static ContactPreferencesMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContactPreferencesMsg>(create);
  static ContactPreferencesMsg _defaultInstance;

  @$pb.TagNumber(1)
  $2.TokenInfos get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($2.TokenInfos v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
  @$pb.TagNumber(1)
  $2.TokenInfos ensureToken() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ContactPreferences get contactPreferences => $_getN(1);
  @$pb.TagNumber(2)
  set contactPreferences($4.ContactPreferences v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContactPreferences() => $_has(1);
  @$pb.TagNumber(2)
  void clearContactPreferences() => clearField(2);
  @$pb.TagNumber(2)
  $4.ContactPreferences ensureContactPreferences() => $_ensure(1);
}

class ContactInfoMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ContactInfoMsg', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOM<$4.ContactInfo>(2, 'contactInfo', subBuilder: $4.ContactInfo.create)
    ..hasRequiredFields = false
  ;

  ContactInfoMsg._() : super();
  factory ContactInfoMsg() => create();
  factory ContactInfoMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContactInfoMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ContactInfoMsg clone() => ContactInfoMsg()..mergeFromMessage(this);
  ContactInfoMsg copyWith(void Function(ContactInfoMsg) updates) => super.copyWith((message) => updates(message as ContactInfoMsg));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContactInfoMsg create() => ContactInfoMsg._();
  ContactInfoMsg createEmptyInstance() => create();
  static $pb.PbList<ContactInfoMsg> createRepeated() => $pb.PbList<ContactInfoMsg>();
  @$core.pragma('dart2js:noInline')
  static ContactInfoMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContactInfoMsg>(create);
  static ContactInfoMsg _defaultInstance;

  @$pb.TagNumber(1)
  $2.TokenInfos get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($2.TokenInfos v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
  @$pb.TagNumber(1)
  $2.TokenInfos ensureToken() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ContactInfo get contactInfo => $_getN(1);
  @$pb.TagNumber(2)
  set contactInfo($4.ContactInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContactInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearContactInfo() => clearField(2);
  @$pb.TagNumber(2)
  $4.ContactInfo ensureContactInfo() => $_ensure(1);
}

class JWTRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('JWTRequest', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOS(1, 'token')
    ..hasRequiredFields = false
  ;

  JWTRequest._() : super();
  factory JWTRequest() => create();
  factory JWTRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JWTRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  JWTRequest clone() => JWTRequest()..mergeFromMessage(this);
  JWTRequest copyWith(void Function(JWTRequest) updates) => super.copyWith((message) => updates(message as JWTRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JWTRequest create() => JWTRequest._();
  JWTRequest createEmptyInstance() => create();
  static $pb.PbList<JWTRequest> createRepeated() => $pb.PbList<JWTRequest>();
  @$core.pragma('dart2js:noInline')
  static JWTRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JWTRequest>(create);
  static JWTRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

class RefreshJWTRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RefreshJWTRequest', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOS(1, 'refreshToken')
    ..aOS(2, 'accessToken')
    ..hasRequiredFields = false
  ;

  RefreshJWTRequest._() : super();
  factory RefreshJWTRequest() => create();
  factory RefreshJWTRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RefreshJWTRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RefreshJWTRequest clone() => RefreshJWTRequest()..mergeFromMessage(this);
  RefreshJWTRequest copyWith(void Function(RefreshJWTRequest) updates) => super.copyWith((message) => updates(message as RefreshJWTRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RefreshJWTRequest create() => RefreshJWTRequest._();
  RefreshJWTRequest createEmptyInstance() => create();
  static $pb.PbList<RefreshJWTRequest> createRepeated() => $pb.PbList<RefreshJWTRequest>();
  @$core.pragma('dart2js:noInline')
  static RefreshJWTRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RefreshJWTRequest>(create);
  static RefreshJWTRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get refreshToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set refreshToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRefreshToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearRefreshToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accessToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set accessToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccessToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccessToken() => clearField(2);
}

class CreateUserReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateUserReq', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOS(2, 'accountId')
    ..aOS(3, 'initialPassword')
    ..aOS(4, 'preferredLanguage')
    ..pPS(5, 'roles')
    ..hasRequiredFields = false
  ;

  CreateUserReq._() : super();
  factory CreateUserReq() => create();
  factory CreateUserReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateUserReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateUserReq clone() => CreateUserReq()..mergeFromMessage(this);
  CreateUserReq copyWith(void Function(CreateUserReq) updates) => super.copyWith((message) => updates(message as CreateUserReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateUserReq create() => CreateUserReq._();
  CreateUserReq createEmptyInstance() => create();
  static $pb.PbList<CreateUserReq> createRepeated() => $pb.PbList<CreateUserReq>();
  @$core.pragma('dart2js:noInline')
  static CreateUserReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateUserReq>(create);
  static CreateUserReq _defaultInstance;

  @$pb.TagNumber(1)
  $2.TokenInfos get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($2.TokenInfos v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
  @$pb.TagNumber(1)
  $2.TokenInfos ensureToken() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get accountId => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get initialPassword => $_getSZ(2);
  @$pb.TagNumber(3)
  set initialPassword($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInitialPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearInitialPassword() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get preferredLanguage => $_getSZ(3);
  @$pb.TagNumber(4)
  set preferredLanguage($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPreferredLanguage() => $_has(3);
  @$pb.TagNumber(4)
  void clearPreferredLanguage() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get roles => $_getList(4);
}

class RoleMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoleMsg', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOS(2, 'accountId')
    ..aOS(3, 'role')
    ..hasRequiredFields = false
  ;

  RoleMsg._() : super();
  factory RoleMsg() => create();
  factory RoleMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoleMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoleMsg clone() => RoleMsg()..mergeFromMessage(this);
  RoleMsg copyWith(void Function(RoleMsg) updates) => super.copyWith((message) => updates(message as RoleMsg));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoleMsg create() => RoleMsg._();
  RoleMsg createEmptyInstance() => create();
  static $pb.PbList<RoleMsg> createRepeated() => $pb.PbList<RoleMsg>();
  @$core.pragma('dart2js:noInline')
  static RoleMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoleMsg>(create);
  static RoleMsg _defaultInstance;

  @$pb.TagNumber(1)
  $2.TokenInfos get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($2.TokenInfos v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
  @$pb.TagNumber(1)
  $2.TokenInfos ensureToken() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get accountId => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get role => $_getSZ(2);
  @$pb.TagNumber(3)
  set role($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRole() => $_has(2);
  @$pb.TagNumber(3)
  void clearRole() => clearField(3);
}

class StreamUsersMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StreamUsersMsg', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOS(1, 'instanceId')
    ..hasRequiredFields = false
  ;

  StreamUsersMsg._() : super();
  factory StreamUsersMsg() => create();
  factory StreamUsersMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamUsersMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  StreamUsersMsg clone() => StreamUsersMsg()..mergeFromMessage(this);
  StreamUsersMsg copyWith(void Function(StreamUsersMsg) updates) => super.copyWith((message) => updates(message as StreamUsersMsg));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamUsersMsg create() => StreamUsersMsg._();
  StreamUsersMsg createEmptyInstance() => create();
  static $pb.PbList<StreamUsersMsg> createRepeated() => $pb.PbList<StreamUsersMsg>();
  @$core.pragma('dart2js:noInline')
  static StreamUsersMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamUsersMsg>(create);
  static StreamUsersMsg _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get instanceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set instanceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInstanceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInstanceId() => clearField(1);
}

class FindNonParticipantUsersMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FindNonParticipantUsersMsg', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..hasRequiredFields = false
  ;

  FindNonParticipantUsersMsg._() : super();
  factory FindNonParticipantUsersMsg() => create();
  factory FindNonParticipantUsersMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FindNonParticipantUsersMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FindNonParticipantUsersMsg clone() => FindNonParticipantUsersMsg()..mergeFromMessage(this);
  FindNonParticipantUsersMsg copyWith(void Function(FindNonParticipantUsersMsg) updates) => super.copyWith((message) => updates(message as FindNonParticipantUsersMsg));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FindNonParticipantUsersMsg create() => FindNonParticipantUsersMsg._();
  FindNonParticipantUsersMsg createEmptyInstance() => create();
  static $pb.PbList<FindNonParticipantUsersMsg> createRepeated() => $pb.PbList<FindNonParticipantUsersMsg>();
  @$core.pragma('dart2js:noInline')
  static FindNonParticipantUsersMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FindNonParticipantUsersMsg>(create);
  static FindNonParticipantUsersMsg _defaultInstance;

  @$pb.TagNumber(1)
  $2.TokenInfos get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($2.TokenInfos v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
  @$pb.TagNumber(1)
  $2.TokenInfos ensureToken() => $_ensure(0);
}

class UserListMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserListMsg', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..pc<$4.User>(1, 'users', $pb.PbFieldType.PM, subBuilder: $4.User.create)
    ..hasRequiredFields = false
  ;

  UserListMsg._() : super();
  factory UserListMsg() => create();
  factory UserListMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserListMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserListMsg clone() => UserListMsg()..mergeFromMessage(this);
  UserListMsg copyWith(void Function(UserListMsg) updates) => super.copyWith((message) => updates(message as UserListMsg));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserListMsg create() => UserListMsg._();
  UserListMsg createEmptyInstance() => create();
  static $pb.PbList<UserListMsg> createRepeated() => $pb.PbList<UserListMsg>();
  @$core.pragma('dart2js:noInline')
  static UserListMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserListMsg>(create);
  static UserListMsg _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$4.User> get users => $_getList(0);
}

class TempToken extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TempToken', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOS(1, 'token')
    ..hasRequiredFields = false
  ;

  TempToken._() : super();
  factory TempToken() => create();
  factory TempToken.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TempToken.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TempToken clone() => TempToken()..mergeFromMessage(this);
  TempToken copyWith(void Function(TempToken) updates) => super.copyWith((message) => updates(message as TempToken));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TempToken create() => TempToken._();
  TempToken createEmptyInstance() => create();
  static $pb.PbList<TempToken> createRepeated() => $pb.PbList<TempToken>();
  @$core.pragma('dart2js:noInline')
  static TempToken getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TempToken>(create);
  static TempToken _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

class TokenResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TokenResponse', package: const $pb.PackageName('influenzanet.user_management_api'), createEmptyInstance: create)
    ..aOS(1, 'accessToken')
    ..aOS(2, 'refreshToken')
    ..a<$core.int>(3, 'expiresIn', $pb.PbFieldType.O3)
    ..pc<$4.Profile>(4, 'profiles', $pb.PbFieldType.PM, subBuilder: $4.Profile.create)
    ..aOS(5, 'selectedProfileId')
    ..aOS(6, 'preferredLanguage')
    ..hasRequiredFields = false
  ;

  TokenResponse._() : super();
  factory TokenResponse() => create();
  factory TokenResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TokenResponse clone() => TokenResponse()..mergeFromMessage(this);
  TokenResponse copyWith(void Function(TokenResponse) updates) => super.copyWith((message) => updates(message as TokenResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TokenResponse create() => TokenResponse._();
  TokenResponse createEmptyInstance() => create();
  static $pb.PbList<TokenResponse> createRepeated() => $pb.PbList<TokenResponse>();
  @$core.pragma('dart2js:noInline')
  static TokenResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenResponse>(create);
  static TokenResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get refreshToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set refreshToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefreshToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get expiresIn => $_getIZ(2);
  @$pb.TagNumber(3)
  set expiresIn($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExpiresIn() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpiresIn() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$4.Profile> get profiles => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get selectedProfileId => $_getSZ(4);
  @$pb.TagNumber(5)
  set selectedProfileId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSelectedProfileId() => $_has(4);
  @$pb.TagNumber(5)
  void clearSelectedProfileId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get preferredLanguage => $_getSZ(5);
  @$pb.TagNumber(6)
  set preferredLanguage($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPreferredLanguage() => $_has(5);
  @$pb.TagNumber(6)
  void clearPreferredLanguage() => clearField(6);
}

class UserManagementApiApi {
  $pb.RpcClient _client;
  UserManagementApiApi(this._client);

  $async.Future<ServiceStatus> status($pb.ClientContext ctx, $0.Empty request) {
    var emptyResponse = ServiceStatus();
    return _client.invoke<ServiceStatus>(ctx, 'UserManagementApi', 'Status', request, emptyResponse);
  }
  $async.Future<ServiceStatus> sendVerificationCode($pb.ClientContext ctx, SendVerificationCodeReq request) {
    var emptyResponse = ServiceStatus();
    return _client.invoke<ServiceStatus>(ctx, 'UserManagementApi', 'SendVerificationCode', request, emptyResponse);
  }
  $async.Future<AutoValidateResponse> autoValidateTempToken($pb.ClientContext ctx, AutoValidateReq request) {
    var emptyResponse = AutoValidateResponse();
    return _client.invoke<AutoValidateResponse>(ctx, 'UserManagementApi', 'AutoValidateTempToken', request, emptyResponse);
  }
  $async.Future<LoginResponse> loginWithEmail($pb.ClientContext ctx, LoginWithEmailMsg request) {
    var emptyResponse = LoginResponse();
    return _client.invoke<LoginResponse>(ctx, 'UserManagementApi', 'LoginWithEmail', request, emptyResponse);
  }
  $async.Future<TokenResponse> signupWithEmail($pb.ClientContext ctx, SignupWithEmailMsg request) {
    var emptyResponse = TokenResponse();
    return _client.invoke<TokenResponse>(ctx, 'UserManagementApi', 'SignupWithEmail', request, emptyResponse);
  }
  $async.Future<TokenResponse> switchProfile($pb.ClientContext ctx, SwitchProfileRequest request) {
    var emptyResponse = TokenResponse();
    return _client.invoke<TokenResponse>(ctx, 'UserManagementApi', 'SwitchProfile', request, emptyResponse);
  }
  $async.Future<$2.TokenInfos> validateJWT($pb.ClientContext ctx, JWTRequest request) {
    var emptyResponse = $2.TokenInfos();
    return _client.invoke<$2.TokenInfos>(ctx, 'UserManagementApi', 'ValidateJWT', request, emptyResponse);
  }
  $async.Future<TokenResponse> renewJWT($pb.ClientContext ctx, RefreshJWTRequest request) {
    var emptyResponse = TokenResponse();
    return _client.invoke<TokenResponse>(ctx, 'UserManagementApi', 'RenewJWT', request, emptyResponse);
  }
  $async.Future<ServiceStatus> revokeAllRefreshTokens($pb.ClientContext ctx, RevokeRefreshTokensReq request) {
    var emptyResponse = ServiceStatus();
    return _client.invoke<ServiceStatus>(ctx, 'UserManagementApi', 'RevokeAllRefreshTokens', request, emptyResponse);
  }
  $async.Future<$4.User> verifyContact($pb.ClientContext ctx, TempToken request) {
    var emptyResponse = $4.User();
    return _client.invoke<$4.User>(ctx, 'UserManagementApi', 'VerifyContact', request, emptyResponse);
  }
  $async.Future<ServiceStatus> resendContactVerification($pb.ClientContext ctx, ResendContactVerificationReq request) {
    var emptyResponse = ServiceStatus();
    return _client.invoke<ServiceStatus>(ctx, 'UserManagementApi', 'ResendContactVerification', request, emptyResponse);
  }
  $async.Future<AppTokenValidation> validateAppToken($pb.ClientContext ctx, AppTokenRequest request) {
    var emptyResponse = AppTokenValidation();
    return _client.invoke<AppTokenValidation>(ctx, 'UserManagementApi', 'ValidateAppToken', request, emptyResponse);
  }
  $async.Future<TempToken> getOrCreateTemptoken($pb.ClientContext ctx, $2.TempTokenInfo request) {
    var emptyResponse = TempToken();
    return _client.invoke<TempToken>(ctx, 'UserManagementApi', 'GetOrCreateTemptoken', request, emptyResponse);
  }
  $async.Future<TempToken> generateTempToken($pb.ClientContext ctx, $2.TempTokenInfo request) {
    var emptyResponse = TempToken();
    return _client.invoke<TempToken>(ctx, 'UserManagementApi', 'GenerateTempToken', request, emptyResponse);
  }
  $async.Future<$2.TempTokenInfos> getTempTokens($pb.ClientContext ctx, $2.TempTokenInfo request) {
    var emptyResponse = $2.TempTokenInfos();
    return _client.invoke<$2.TempTokenInfos>(ctx, 'UserManagementApi', 'GetTempTokens', request, emptyResponse);
  }
  $async.Future<ServiceStatus> deleteTempToken($pb.ClientContext ctx, TempToken request) {
    var emptyResponse = ServiceStatus();
    return _client.invoke<ServiceStatus>(ctx, 'UserManagementApi', 'DeleteTempToken', request, emptyResponse);
  }
  $async.Future<ServiceStatus> purgeUserTempTokens($pb.ClientContext ctx, $2.TempTokenInfo request) {
    var emptyResponse = ServiceStatus();
    return _client.invoke<ServiceStatus>(ctx, 'UserManagementApi', 'PurgeUserTempTokens', request, emptyResponse);
  }
  $async.Future<$4.User> getUser($pb.ClientContext ctx, UserReference request) {
    var emptyResponse = $4.User();
    return _client.invoke<$4.User>(ctx, 'UserManagementApi', 'GetUser', request, emptyResponse);
  }
  $async.Future<ServiceStatus> changePassword($pb.ClientContext ctx, PasswordChangeMsg request) {
    var emptyResponse = ServiceStatus();
    return _client.invoke<ServiceStatus>(ctx, 'UserManagementApi', 'ChangePassword', request, emptyResponse);
  }
  $async.Future<$4.User> changeAccountIDEmail($pb.ClientContext ctx, EmailChangeMsg request) {
    var emptyResponse = $4.User();
    return _client.invoke<$4.User>(ctx, 'UserManagementApi', 'ChangeAccountIDEmail', request, emptyResponse);
  }
  $async.Future<ServiceStatus> deleteAccount($pb.ClientContext ctx, UserReference request) {
    var emptyResponse = ServiceStatus();
    return _client.invoke<ServiceStatus>(ctx, 'UserManagementApi', 'DeleteAccount', request, emptyResponse);
  }
  $async.Future<$4.User> changePreferredLanguage($pb.ClientContext ctx, LanguageChangeMsg request) {
    var emptyResponse = $4.User();
    return _client.invoke<$4.User>(ctx, 'UserManagementApi', 'ChangePreferredLanguage', request, emptyResponse);
  }
  $async.Future<ServiceStatus> initiatePasswordReset($pb.ClientContext ctx, InitiateResetPasswordMsg request) {
    var emptyResponse = ServiceStatus();
    return _client.invoke<ServiceStatus>(ctx, 'UserManagementApi', 'InitiatePasswordReset', request, emptyResponse);
  }
  $async.Future<UserInfoForPWReset> getInfosForPasswordReset($pb.ClientContext ctx, GetInfosForResetPasswordMsg request) {
    var emptyResponse = UserInfoForPWReset();
    return _client.invoke<UserInfoForPWReset>(ctx, 'UserManagementApi', 'GetInfosForPasswordReset', request, emptyResponse);
  }
  $async.Future<ServiceStatus> resetPassword($pb.ClientContext ctx, ResetPasswordMsg request) {
    var emptyResponse = ServiceStatus();
    return _client.invoke<ServiceStatus>(ctx, 'UserManagementApi', 'ResetPassword', request, emptyResponse);
  }
  $async.Future<$4.User> saveProfile($pb.ClientContext ctx, ProfileRequest request) {
    var emptyResponse = $4.User();
    return _client.invoke<$4.User>(ctx, 'UserManagementApi', 'SaveProfile', request, emptyResponse);
  }
  $async.Future<$4.User> removeProfile($pb.ClientContext ctx, ProfileRequest request) {
    var emptyResponse = $4.User();
    return _client.invoke<$4.User>(ctx, 'UserManagementApi', 'RemoveProfile', request, emptyResponse);
  }
  $async.Future<ServiceStatus> useUnsubscribeToken($pb.ClientContext ctx, TempToken request) {
    var emptyResponse = ServiceStatus();
    return _client.invoke<ServiceStatus>(ctx, 'UserManagementApi', 'UseUnsubscribeToken', request, emptyResponse);
  }
  $async.Future<$4.User> updateContactPreferences($pb.ClientContext ctx, ContactPreferencesMsg request) {
    var emptyResponse = $4.User();
    return _client.invoke<$4.User>(ctx, 'UserManagementApi', 'UpdateContactPreferences', request, emptyResponse);
  }
  $async.Future<$4.User> addEmail($pb.ClientContext ctx, ContactInfoMsg request) {
    var emptyResponse = $4.User();
    return _client.invoke<$4.User>(ctx, 'UserManagementApi', 'AddEmail', request, emptyResponse);
  }
  $async.Future<$4.User> removeEmail($pb.ClientContext ctx, ContactInfoMsg request) {
    var emptyResponse = $4.User();
    return _client.invoke<$4.User>(ctx, 'UserManagementApi', 'RemoveEmail', request, emptyResponse);
  }
  $async.Future<$4.User> createUser($pb.ClientContext ctx, CreateUserReq request) {
    var emptyResponse = $4.User();
    return _client.invoke<$4.User>(ctx, 'UserManagementApi', 'CreateUser', request, emptyResponse);
  }
  $async.Future<$4.User> addRoleForUser($pb.ClientContext ctx, RoleMsg request) {
    var emptyResponse = $4.User();
    return _client.invoke<$4.User>(ctx, 'UserManagementApi', 'AddRoleForUser', request, emptyResponse);
  }
  $async.Future<$4.User> removeRoleForUser($pb.ClientContext ctx, RoleMsg request) {
    var emptyResponse = $4.User();
    return _client.invoke<$4.User>(ctx, 'UserManagementApi', 'RemoveRoleForUser', request, emptyResponse);
  }
  $async.Future<UserListMsg> findNonParticipantUsers($pb.ClientContext ctx, FindNonParticipantUsersMsg request) {
    var emptyResponse = UserListMsg();
    return _client.invoke<UserListMsg>(ctx, 'UserManagementApi', 'FindNonParticipantUsers', request, emptyResponse);
  }
  $async.Future<$4.User> streamUsers($pb.ClientContext ctx, StreamUsersMsg request) {
    var emptyResponse = $4.User();
    return _client.invoke<$4.User>(ctx, 'UserManagementApi', 'StreamUsers', request, emptyResponse);
  }
}

