///
//  Generated code. Do not modify.
//  source: user_management/user-management-service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import '../google/protobuf/empty.pbjson.dart' as $0;
import 'user.pbjson.dart' as $4;
import '../shared/auth_info.pbjson.dart' as $2;

const ServiceStatus$json = const {
  '1': 'ServiceStatus',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.influenzanet.user_management_api.ServiceStatus.StatusValue', '10': 'status'},
    const {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
    const {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
  ],
  '4': const [ServiceStatus_StatusValue$json],
};

const ServiceStatus_StatusValue$json = const {
  '1': 'StatusValue',
  '2': const [
    const {'1': 'NORMAL', '2': 0},
    const {'1': 'PROBLEM', '2': 1},
  ],
};

const SignupWithEmailMsg$json = const {
  '1': 'SignupWithEmailMsg',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'instance_id', '3': 3, '4': 1, '5': 9, '10': 'instanceId'},
    const {'1': 'preferred_language', '3': 4, '4': 1, '5': 9, '10': 'preferredLanguage'},
    const {'1': 'wants_newsletter', '3': 5, '4': 1, '5': 8, '10': 'wantsNewsletter'},
    const {'1': 'use_2fa', '3': 6, '4': 1, '5': 8, '10': 'use2fa'},
  ],
};

const LoginWithEmailMsg$json = const {
  '1': 'LoginWithEmailMsg',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'instance_id', '3': 3, '4': 1, '5': 9, '10': 'instanceId'},
    const {'1': 'as_participant', '3': 4, '4': 1, '5': 8, '10': 'asParticipant'},
    const {'1': 'verification_code', '3': 5, '4': 1, '5': 9, '10': 'verificationCode'},
  ],
};

const AutoValidateReq$json = const {
  '1': 'AutoValidateReq',
  '2': const [
    const {'1': 'temp_token', '3': 1, '4': 1, '5': 9, '10': 'tempToken'},
    const {'1': 'access_token', '3': 2, '4': 1, '5': 9, '10': 'accessToken'},
  ],
};

const AutoValidateResponse$json = const {
  '1': 'AutoValidateResponse',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'verification_code', '3': 2, '4': 1, '5': 9, '10': 'verificationCode'},
    const {'1': 'is_same_user', '3': 3, '4': 1, '5': 8, '10': 'isSameUser'},
    const {'1': 'instance_id', '3': 4, '4': 1, '5': 9, '10': 'instanceId'},
  ],
};

const SendVerificationCodeReq$json = const {
  '1': 'SendVerificationCodeReq',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'instance_id', '3': 3, '4': 1, '5': 9, '10': 'instanceId'},
  ],
};

const LoginResponse$json = const {
  '1': 'LoginResponse',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.user_management_api.TokenResponse', '10': 'token'},
    const {'1': 'user', '3': 2, '4': 1, '5': 11, '6': '.inf.user.User', '10': 'user'},
    const {'1': 'second_factor_needed', '3': 3, '4': 1, '5': 8, '10': 'secondFactorNeeded'},
  ],
};

const UserReference$json = const {
  '1': 'UserReference',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'instance_id', '3': 3, '4': 1, '5': 9, '10': 'instanceId'},
  ],
};

const RevokeRefreshTokensReq$json = const {
  '1': 'RevokeRefreshTokensReq',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
  ],
};

const RefreshTokenRequest$json = const {
  '1': 'RefreshTokenRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'instance_id', '3': 2, '4': 1, '5': 9, '10': 'instanceId'},
    const {'1': 'refresh_token', '3': 3, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

const AppTokenRequest$json = const {
  '1': 'AppTokenRequest',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

const AppTokenValidation$json = const {
  '1': 'AppTokenValidation',
  '2': const [
    const {'1': 'instances', '3': 1, '4': 3, '5': 9, '10': 'instances'},
  ],
};

const SwitchProfileRequest$json = const {
  '1': 'SwitchProfileRequest',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'profile_id', '3': 2, '4': 1, '5': 9, '10': 'profileId'},
    const {'1': 'refresh_token', '3': 3, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

const ProfileRequest$json = const {
  '1': 'ProfileRequest',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'profile', '3': 2, '4': 1, '5': 11, '6': '.inf.user.Profile', '10': 'profile'},
  ],
};

const UserAuthInfo$json = const {
  '1': 'UserAuthInfo',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'roles', '3': 2, '4': 3, '5': 9, '10': 'roles'},
    const {'1': 'instance_id', '3': 3, '4': 1, '5': 9, '10': 'instanceId'},
    const {'1': 'account_id', '3': 4, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'profiles', '3': 5, '4': 3, '5': 11, '6': '.inf.user.Profile', '10': 'profiles'},
    const {'1': 'selected_profile', '3': 6, '4': 1, '5': 11, '6': '.inf.user.Profile', '10': 'selectedProfile'},
    const {'1': 'account_confirmed', '3': 7, '4': 1, '5': 8, '10': 'accountConfirmed'},
    const {'1': 'preferred_language', '3': 8, '4': 1, '5': 9, '10': 'preferredLanguage'},
  ],
};

const ResendContactVerificationReq$json = const {
  '1': 'ResendContactVerificationReq',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
  ],
};

const PasswordChangeMsg$json = const {
  '1': 'PasswordChangeMsg',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'old_password', '3': 2, '4': 1, '5': 9, '10': 'oldPassword'},
    const {'1': 'new_password', '3': 3, '4': 1, '5': 9, '10': 'newPassword'},
  ],
};

const InitiateResetPasswordMsg$json = const {
  '1': 'InitiateResetPasswordMsg',
  '2': const [
    const {'1': 'instance_id', '3': 1, '4': 1, '5': 9, '10': 'instanceId'},
    const {'1': 'account_id', '3': 2, '4': 1, '5': 9, '10': 'accountId'},
  ],
};

const GetInfosForResetPasswordMsg$json = const {
  '1': 'GetInfosForResetPasswordMsg',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

const UserInfoForPWReset$json = const {
  '1': 'UserInfoForPWReset',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
  ],
};

const ResetPasswordMsg$json = const {
  '1': 'ResetPasswordMsg',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'new_password', '3': 2, '4': 1, '5': 9, '10': 'newPassword'},
  ],
};

const EmailChangeMsg$json = const {
  '1': 'EmailChangeMsg',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'new_email', '3': 2, '4': 1, '5': 9, '10': 'newEmail'},
    const {'1': 'keep_old_email', '3': 3, '4': 1, '5': 8, '10': 'keepOldEmail'},
  ],
};

const LanguageChangeMsg$json = const {
  '1': 'LanguageChangeMsg',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'language_code', '3': 2, '4': 1, '5': 9, '10': 'languageCode'},
  ],
};

const ContactPreferencesMsg$json = const {
  '1': 'ContactPreferencesMsg',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'contact_preferences', '3': 2, '4': 1, '5': 11, '6': '.inf.user.ContactPreferences', '10': 'contactPreferences'},
  ],
};

const ContactInfoMsg$json = const {
  '1': 'ContactInfoMsg',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'contact_info', '3': 2, '4': 1, '5': 11, '6': '.inf.user.ContactInfo', '10': 'contactInfo'},
  ],
};

const JWTRequest$json = const {
  '1': 'JWTRequest',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

const RefreshJWTRequest$json = const {
  '1': 'RefreshJWTRequest',
  '2': const [
    const {'1': 'refresh_token', '3': 1, '4': 1, '5': 9, '10': 'refreshToken'},
    const {'1': 'access_token', '3': 2, '4': 1, '5': 9, '10': 'accessToken'},
  ],
};

const CreateUserReq$json = const {
  '1': 'CreateUserReq',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'account_id', '3': 2, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'initial_password', '3': 3, '4': 1, '5': 9, '10': 'initialPassword'},
    const {'1': 'preferred_language', '3': 4, '4': 1, '5': 9, '10': 'preferredLanguage'},
    const {'1': 'roles', '3': 5, '4': 3, '5': 9, '10': 'roles'},
  ],
};

const RoleMsg$json = const {
  '1': 'RoleMsg',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
    const {'1': 'account_id', '3': 2, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'role', '3': 3, '4': 1, '5': 9, '10': 'role'},
  ],
};

const StreamUsersMsg$json = const {
  '1': 'StreamUsersMsg',
  '2': const [
    const {'1': 'instance_id', '3': 1, '4': 1, '5': 9, '10': 'instanceId'},
  ],
};

const FindNonParticipantUsersMsg$json = const {
  '1': 'FindNonParticipantUsersMsg',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.influenzanet.shared.TokenInfos', '10': 'token'},
  ],
};

const UserListMsg$json = const {
  '1': 'UserListMsg',
  '2': const [
    const {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.inf.user.User', '10': 'users'},
  ],
};

const TempToken$json = const {
  '1': 'TempToken',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

const TokenResponse$json = const {
  '1': 'TokenResponse',
  '2': const [
    const {'1': 'access_token', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    const {'1': 'refresh_token', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
    const {'1': 'expires_in', '3': 3, '4': 1, '5': 5, '10': 'expiresIn'},
    const {'1': 'profiles', '3': 4, '4': 3, '5': 11, '6': '.inf.user.Profile', '10': 'profiles'},
    const {'1': 'selected_profile_id', '3': 5, '4': 1, '5': 9, '10': 'selectedProfileId'},
    const {'1': 'preferred_language', '3': 6, '4': 1, '5': 9, '10': 'preferredLanguage'},
  ],
};

const UserManagementApiServiceBase$json = const {
  '1': 'UserManagementApi',
  '2': const [
    const {'1': 'Status', '2': '.google.protobuf.Empty', '3': '.influenzanet.user_management_api.ServiceStatus'},
    const {'1': 'SendVerificationCode', '2': '.influenzanet.user_management_api.SendVerificationCodeReq', '3': '.influenzanet.user_management_api.ServiceStatus'},
    const {'1': 'AutoValidateTempToken', '2': '.influenzanet.user_management_api.AutoValidateReq', '3': '.influenzanet.user_management_api.AutoValidateResponse'},
    const {'1': 'LoginWithEmail', '2': '.influenzanet.user_management_api.LoginWithEmailMsg', '3': '.influenzanet.user_management_api.LoginResponse'},
    const {'1': 'SignupWithEmail', '2': '.influenzanet.user_management_api.SignupWithEmailMsg', '3': '.influenzanet.user_management_api.TokenResponse'},
    const {'1': 'SwitchProfile', '2': '.influenzanet.user_management_api.SwitchProfileRequest', '3': '.influenzanet.user_management_api.TokenResponse'},
    const {'1': 'ValidateJWT', '2': '.influenzanet.user_management_api.JWTRequest', '3': '.influenzanet.shared.TokenInfos'},
    const {'1': 'RenewJWT', '2': '.influenzanet.user_management_api.RefreshJWTRequest', '3': '.influenzanet.user_management_api.TokenResponse'},
    const {'1': 'RevokeAllRefreshTokens', '2': '.influenzanet.user_management_api.RevokeRefreshTokensReq', '3': '.influenzanet.user_management_api.ServiceStatus'},
    const {'1': 'VerifyContact', '2': '.influenzanet.user_management_api.TempToken', '3': '.inf.user.User'},
    const {'1': 'ResendContactVerification', '2': '.influenzanet.user_management_api.ResendContactVerificationReq', '3': '.influenzanet.user_management_api.ServiceStatus'},
    const {'1': 'ValidateAppToken', '2': '.influenzanet.user_management_api.AppTokenRequest', '3': '.influenzanet.user_management_api.AppTokenValidation'},
    const {'1': 'GetOrCreateTemptoken', '2': '.influenzanet.shared.TempTokenInfo', '3': '.influenzanet.user_management_api.TempToken'},
    const {'1': 'GenerateTempToken', '2': '.influenzanet.shared.TempTokenInfo', '3': '.influenzanet.user_management_api.TempToken'},
    const {'1': 'GetTempTokens', '2': '.influenzanet.shared.TempTokenInfo', '3': '.influenzanet.shared.TempTokenInfos'},
    const {'1': 'DeleteTempToken', '2': '.influenzanet.user_management_api.TempToken', '3': '.influenzanet.user_management_api.ServiceStatus'},
    const {'1': 'PurgeUserTempTokens', '2': '.influenzanet.shared.TempTokenInfo', '3': '.influenzanet.user_management_api.ServiceStatus'},
    const {'1': 'GetUser', '2': '.influenzanet.user_management_api.UserReference', '3': '.inf.user.User'},
    const {'1': 'ChangePassword', '2': '.influenzanet.user_management_api.PasswordChangeMsg', '3': '.influenzanet.user_management_api.ServiceStatus'},
    const {'1': 'ChangeAccountIDEmail', '2': '.influenzanet.user_management_api.EmailChangeMsg', '3': '.inf.user.User'},
    const {'1': 'DeleteAccount', '2': '.influenzanet.user_management_api.UserReference', '3': '.influenzanet.user_management_api.ServiceStatus'},
    const {'1': 'ChangePreferredLanguage', '2': '.influenzanet.user_management_api.LanguageChangeMsg', '3': '.inf.user.User'},
    const {'1': 'InitiatePasswordReset', '2': '.influenzanet.user_management_api.InitiateResetPasswordMsg', '3': '.influenzanet.user_management_api.ServiceStatus'},
    const {'1': 'GetInfosForPasswordReset', '2': '.influenzanet.user_management_api.GetInfosForResetPasswordMsg', '3': '.influenzanet.user_management_api.UserInfoForPWReset'},
    const {'1': 'ResetPassword', '2': '.influenzanet.user_management_api.ResetPasswordMsg', '3': '.influenzanet.user_management_api.ServiceStatus'},
    const {'1': 'SaveProfile', '2': '.influenzanet.user_management_api.ProfileRequest', '3': '.inf.user.User'},
    const {'1': 'RemoveProfile', '2': '.influenzanet.user_management_api.ProfileRequest', '3': '.inf.user.User'},
    const {'1': 'UseUnsubscribeToken', '2': '.influenzanet.user_management_api.TempToken', '3': '.influenzanet.user_management_api.ServiceStatus'},
    const {'1': 'UpdateContactPreferences', '2': '.influenzanet.user_management_api.ContactPreferencesMsg', '3': '.inf.user.User'},
    const {'1': 'AddEmail', '2': '.influenzanet.user_management_api.ContactInfoMsg', '3': '.inf.user.User'},
    const {'1': 'RemoveEmail', '2': '.influenzanet.user_management_api.ContactInfoMsg', '3': '.inf.user.User'},
    const {'1': 'CreateUser', '2': '.influenzanet.user_management_api.CreateUserReq', '3': '.inf.user.User'},
    const {'1': 'AddRoleForUser', '2': '.influenzanet.user_management_api.RoleMsg', '3': '.inf.user.User'},
    const {'1': 'RemoveRoleForUser', '2': '.influenzanet.user_management_api.RoleMsg', '3': '.inf.user.User'},
    const {'1': 'FindNonParticipantUsers', '2': '.influenzanet.user_management_api.FindNonParticipantUsersMsg', '3': '.influenzanet.user_management_api.UserListMsg'},
    const {'1': 'StreamUsers', '2': '.influenzanet.user_management_api.StreamUsersMsg', '3': '.inf.user.User', '6': true},
  ],
};

const UserManagementApiServiceBase$messageJson = const {
  '.google.protobuf.Empty': $0.Empty$json,
  '.influenzanet.user_management_api.ServiceStatus': ServiceStatus$json,
  '.influenzanet.user_management_api.SendVerificationCodeReq': SendVerificationCodeReq$json,
  '.influenzanet.user_management_api.AutoValidateReq': AutoValidateReq$json,
  '.influenzanet.user_management_api.AutoValidateResponse': AutoValidateResponse$json,
  '.influenzanet.user_management_api.LoginWithEmailMsg': LoginWithEmailMsg$json,
  '.influenzanet.user_management_api.LoginResponse': LoginResponse$json,
  '.influenzanet.user_management_api.TokenResponse': TokenResponse$json,
  '.inf.user.Profile': $4.Profile$json,
  '.inf.user.User': $4.User$json,
  '.inf.user.User.Account': $4.User_Account$json,
  '.inf.user.User.Timestamps': $4.User_Timestamps$json,
  '.inf.user.ContactPreferences': $4.ContactPreferences$json,
  '.inf.user.ContactInfo': $4.ContactInfo$json,
  '.influenzanet.user_management_api.SignupWithEmailMsg': SignupWithEmailMsg$json,
  '.influenzanet.user_management_api.SwitchProfileRequest': SwitchProfileRequest$json,
  '.influenzanet.shared.TokenInfos': $2.TokenInfos$json,
  '.influenzanet.shared.TokenInfos.PayloadEntry': $2.TokenInfos_PayloadEntry$json,
  '.influenzanet.shared.TempTokenInfo': $2.TempTokenInfo$json,
  '.influenzanet.shared.TempTokenInfo.InfoEntry': $2.TempTokenInfo_InfoEntry$json,
  '.influenzanet.user_management_api.JWTRequest': JWTRequest$json,
  '.influenzanet.user_management_api.RefreshJWTRequest': RefreshJWTRequest$json,
  '.influenzanet.user_management_api.RevokeRefreshTokensReq': RevokeRefreshTokensReq$json,
  '.influenzanet.user_management_api.TempToken': TempToken$json,
  '.influenzanet.user_management_api.ResendContactVerificationReq': ResendContactVerificationReq$json,
  '.influenzanet.user_management_api.AppTokenRequest': AppTokenRequest$json,
  '.influenzanet.user_management_api.AppTokenValidation': AppTokenValidation$json,
  '.influenzanet.shared.TempTokenInfos': $2.TempTokenInfos$json,
  '.influenzanet.user_management_api.UserReference': UserReference$json,
  '.influenzanet.user_management_api.PasswordChangeMsg': PasswordChangeMsg$json,
  '.influenzanet.user_management_api.EmailChangeMsg': EmailChangeMsg$json,
  '.influenzanet.user_management_api.LanguageChangeMsg': LanguageChangeMsg$json,
  '.influenzanet.user_management_api.InitiateResetPasswordMsg': InitiateResetPasswordMsg$json,
  '.influenzanet.user_management_api.GetInfosForResetPasswordMsg': GetInfosForResetPasswordMsg$json,
  '.influenzanet.user_management_api.UserInfoForPWReset': UserInfoForPWReset$json,
  '.influenzanet.user_management_api.ResetPasswordMsg': ResetPasswordMsg$json,
  '.influenzanet.user_management_api.ProfileRequest': ProfileRequest$json,
  '.influenzanet.user_management_api.ContactPreferencesMsg': ContactPreferencesMsg$json,
  '.influenzanet.user_management_api.ContactInfoMsg': ContactInfoMsg$json,
  '.influenzanet.user_management_api.CreateUserReq': CreateUserReq$json,
  '.influenzanet.user_management_api.RoleMsg': RoleMsg$json,
  '.influenzanet.user_management_api.FindNonParticipantUsersMsg': FindNonParticipantUsersMsg$json,
  '.influenzanet.user_management_api.UserListMsg': UserListMsg$json,
  '.influenzanet.user_management_api.StreamUsersMsg': StreamUsersMsg$json,
};

