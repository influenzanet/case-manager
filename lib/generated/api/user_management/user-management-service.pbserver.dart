///
//  Generated code. Do not modify.
//  source: user_management/user-management-service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import '../google/protobuf/empty.pb.dart' as $0;
import 'user-management-service.pb.dart' as $5;
import '../shared/auth_info.pb.dart' as $2;
import 'user.pb.dart' as $4;
import 'user-management-service.pbjson.dart';

export 'user-management-service.pb.dart';

abstract class UserManagementApiServiceBase extends $pb.GeneratedService {
  $async.Future<$5.ServiceStatus> status($pb.ServerContext ctx, $0.Empty request);
  $async.Future<$5.ServiceStatus> sendVerificationCode($pb.ServerContext ctx, $5.SendVerificationCodeReq request);
  $async.Future<$5.AutoValidateResponse> autoValidateTempToken($pb.ServerContext ctx, $5.AutoValidateReq request);
  $async.Future<$5.LoginResponse> loginWithEmail($pb.ServerContext ctx, $5.LoginWithEmailMsg request);
  $async.Future<$5.TokenResponse> signupWithEmail($pb.ServerContext ctx, $5.SignupWithEmailMsg request);
  $async.Future<$5.TokenResponse> switchProfile($pb.ServerContext ctx, $5.SwitchProfileRequest request);
  $async.Future<$2.TokenInfos> validateJWT($pb.ServerContext ctx, $5.JWTRequest request);
  $async.Future<$5.TokenResponse> renewJWT($pb.ServerContext ctx, $5.RefreshJWTRequest request);
  $async.Future<$5.ServiceStatus> revokeAllRefreshTokens($pb.ServerContext ctx, $5.RevokeRefreshTokensReq request);
  $async.Future<$4.User> verifyContact($pb.ServerContext ctx, $5.TempToken request);
  $async.Future<$5.ServiceStatus> resendContactVerification($pb.ServerContext ctx, $5.ResendContactVerificationReq request);
  $async.Future<$5.AppTokenValidation> validateAppToken($pb.ServerContext ctx, $5.AppTokenRequest request);
  $async.Future<$5.TempToken> getOrCreateTemptoken($pb.ServerContext ctx, $2.TempTokenInfo request);
  $async.Future<$5.TempToken> generateTempToken($pb.ServerContext ctx, $2.TempTokenInfo request);
  $async.Future<$2.TempTokenInfos> getTempTokens($pb.ServerContext ctx, $2.TempTokenInfo request);
  $async.Future<$5.ServiceStatus> deleteTempToken($pb.ServerContext ctx, $5.TempToken request);
  $async.Future<$5.ServiceStatus> purgeUserTempTokens($pb.ServerContext ctx, $2.TempTokenInfo request);
  $async.Future<$4.User> getUser($pb.ServerContext ctx, $5.UserReference request);
  $async.Future<$5.ServiceStatus> changePassword($pb.ServerContext ctx, $5.PasswordChangeMsg request);
  $async.Future<$4.User> changeAccountIDEmail($pb.ServerContext ctx, $5.EmailChangeMsg request);
  $async.Future<$5.ServiceStatus> deleteAccount($pb.ServerContext ctx, $5.UserReference request);
  $async.Future<$4.User> changePreferredLanguage($pb.ServerContext ctx, $5.LanguageChangeMsg request);
  $async.Future<$5.ServiceStatus> initiatePasswordReset($pb.ServerContext ctx, $5.InitiateResetPasswordMsg request);
  $async.Future<$5.UserInfoForPWReset> getInfosForPasswordReset($pb.ServerContext ctx, $5.GetInfosForResetPasswordMsg request);
  $async.Future<$5.ServiceStatus> resetPassword($pb.ServerContext ctx, $5.ResetPasswordMsg request);
  $async.Future<$4.User> saveProfile($pb.ServerContext ctx, $5.ProfileRequest request);
  $async.Future<$4.User> removeProfile($pb.ServerContext ctx, $5.ProfileRequest request);
  $async.Future<$5.ServiceStatus> useUnsubscribeToken($pb.ServerContext ctx, $5.TempToken request);
  $async.Future<$4.User> updateContactPreferences($pb.ServerContext ctx, $5.ContactPreferencesMsg request);
  $async.Future<$4.User> addEmail($pb.ServerContext ctx, $5.ContactInfoMsg request);
  $async.Future<$4.User> removeEmail($pb.ServerContext ctx, $5.ContactInfoMsg request);
  $async.Future<$4.User> createUser($pb.ServerContext ctx, $5.CreateUserReq request);
  $async.Future<$4.User> addRoleForUser($pb.ServerContext ctx, $5.RoleMsg request);
  $async.Future<$4.User> removeRoleForUser($pb.ServerContext ctx, $5.RoleMsg request);
  $async.Future<$5.UserListMsg> findNonParticipantUsers($pb.ServerContext ctx, $5.FindNonParticipantUsersMsg request);
  $async.Future<$4.User> streamUsers($pb.ServerContext ctx, $5.StreamUsersMsg request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'Status': return $0.Empty();
      case 'SendVerificationCode': return $5.SendVerificationCodeReq();
      case 'AutoValidateTempToken': return $5.AutoValidateReq();
      case 'LoginWithEmail': return $5.LoginWithEmailMsg();
      case 'SignupWithEmail': return $5.SignupWithEmailMsg();
      case 'SwitchProfile': return $5.SwitchProfileRequest();
      case 'ValidateJWT': return $5.JWTRequest();
      case 'RenewJWT': return $5.RefreshJWTRequest();
      case 'RevokeAllRefreshTokens': return $5.RevokeRefreshTokensReq();
      case 'VerifyContact': return $5.TempToken();
      case 'ResendContactVerification': return $5.ResendContactVerificationReq();
      case 'ValidateAppToken': return $5.AppTokenRequest();
      case 'GetOrCreateTemptoken': return $2.TempTokenInfo();
      case 'GenerateTempToken': return $2.TempTokenInfo();
      case 'GetTempTokens': return $2.TempTokenInfo();
      case 'DeleteTempToken': return $5.TempToken();
      case 'PurgeUserTempTokens': return $2.TempTokenInfo();
      case 'GetUser': return $5.UserReference();
      case 'ChangePassword': return $5.PasswordChangeMsg();
      case 'ChangeAccountIDEmail': return $5.EmailChangeMsg();
      case 'DeleteAccount': return $5.UserReference();
      case 'ChangePreferredLanguage': return $5.LanguageChangeMsg();
      case 'InitiatePasswordReset': return $5.InitiateResetPasswordMsg();
      case 'GetInfosForPasswordReset': return $5.GetInfosForResetPasswordMsg();
      case 'ResetPassword': return $5.ResetPasswordMsg();
      case 'SaveProfile': return $5.ProfileRequest();
      case 'RemoveProfile': return $5.ProfileRequest();
      case 'UseUnsubscribeToken': return $5.TempToken();
      case 'UpdateContactPreferences': return $5.ContactPreferencesMsg();
      case 'AddEmail': return $5.ContactInfoMsg();
      case 'RemoveEmail': return $5.ContactInfoMsg();
      case 'CreateUser': return $5.CreateUserReq();
      case 'AddRoleForUser': return $5.RoleMsg();
      case 'RemoveRoleForUser': return $5.RoleMsg();
      case 'FindNonParticipantUsers': return $5.FindNonParticipantUsersMsg();
      case 'StreamUsers': return $5.StreamUsersMsg();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'Status': return this.status(ctx, request);
      case 'SendVerificationCode': return this.sendVerificationCode(ctx, request);
      case 'AutoValidateTempToken': return this.autoValidateTempToken(ctx, request);
      case 'LoginWithEmail': return this.loginWithEmail(ctx, request);
      case 'SignupWithEmail': return this.signupWithEmail(ctx, request);
      case 'SwitchProfile': return this.switchProfile(ctx, request);
      case 'ValidateJWT': return this.validateJWT(ctx, request);
      case 'RenewJWT': return this.renewJWT(ctx, request);
      case 'RevokeAllRefreshTokens': return this.revokeAllRefreshTokens(ctx, request);
      case 'VerifyContact': return this.verifyContact(ctx, request);
      case 'ResendContactVerification': return this.resendContactVerification(ctx, request);
      case 'ValidateAppToken': return this.validateAppToken(ctx, request);
      case 'GetOrCreateTemptoken': return this.getOrCreateTemptoken(ctx, request);
      case 'GenerateTempToken': return this.generateTempToken(ctx, request);
      case 'GetTempTokens': return this.getTempTokens(ctx, request);
      case 'DeleteTempToken': return this.deleteTempToken(ctx, request);
      case 'PurgeUserTempTokens': return this.purgeUserTempTokens(ctx, request);
      case 'GetUser': return this.getUser(ctx, request);
      case 'ChangePassword': return this.changePassword(ctx, request);
      case 'ChangeAccountIDEmail': return this.changeAccountIDEmail(ctx, request);
      case 'DeleteAccount': return this.deleteAccount(ctx, request);
      case 'ChangePreferredLanguage': return this.changePreferredLanguage(ctx, request);
      case 'InitiatePasswordReset': return this.initiatePasswordReset(ctx, request);
      case 'GetInfosForPasswordReset': return this.getInfosForPasswordReset(ctx, request);
      case 'ResetPassword': return this.resetPassword(ctx, request);
      case 'SaveProfile': return this.saveProfile(ctx, request);
      case 'RemoveProfile': return this.removeProfile(ctx, request);
      case 'UseUnsubscribeToken': return this.useUnsubscribeToken(ctx, request);
      case 'UpdateContactPreferences': return this.updateContactPreferences(ctx, request);
      case 'AddEmail': return this.addEmail(ctx, request);
      case 'RemoveEmail': return this.removeEmail(ctx, request);
      case 'CreateUser': return this.createUser(ctx, request);
      case 'AddRoleForUser': return this.addRoleForUser(ctx, request);
      case 'RemoveRoleForUser': return this.removeRoleForUser(ctx, request);
      case 'FindNonParticipantUsers': return this.findNonParticipantUsers(ctx, request);
      case 'StreamUsers': return this.streamUsers(ctx, request);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => UserManagementApiServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => UserManagementApiServiceBase$messageJson;
}

