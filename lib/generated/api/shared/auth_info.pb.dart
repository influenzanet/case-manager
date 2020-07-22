///
//  Generated code. Do not modify.
//  source: shared/auth_info.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class TokenInfos extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TokenInfos', package: const $pb.PackageName('influenzanet.shared'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'instanceId')
    ..aInt64(3, 'issuedAt')
    ..m<$core.String, $core.String>(4, 'payload', entryClassName: 'TokenInfos.PayloadEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('influenzanet.shared'))
    ..aOS(5, 'profilId')
    ..aOB(6, 'accountConfirmed')
    ..aOM<TempTokenInfo>(7, 'tempToken', subBuilder: TempTokenInfo.create)
    ..pPS(8, 'otherProfileIds')
    ..hasRequiredFields = false
  ;

  TokenInfos._() : super();
  factory TokenInfos() => create();
  factory TokenInfos.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenInfos.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TokenInfos clone() => TokenInfos()..mergeFromMessage(this);
  TokenInfos copyWith(void Function(TokenInfos) updates) => super.copyWith((message) => updates(message as TokenInfos));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TokenInfos create() => TokenInfos._();
  TokenInfos createEmptyInstance() => create();
  static $pb.PbList<TokenInfos> createRepeated() => $pb.PbList<TokenInfos>();
  @$core.pragma('dart2js:noInline')
  static TokenInfos getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenInfos>(create);
  static TokenInfos _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get instanceId => $_getSZ(1);
  @$pb.TagNumber(2)
  set instanceId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInstanceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearInstanceId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get issuedAt => $_getI64(2);
  @$pb.TagNumber(3)
  set issuedAt($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIssuedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearIssuedAt() => clearField(3);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.String> get payload => $_getMap(3);

  @$pb.TagNumber(5)
  $core.String get profilId => $_getSZ(4);
  @$pb.TagNumber(5)
  set profilId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasProfilId() => $_has(4);
  @$pb.TagNumber(5)
  void clearProfilId() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get accountConfirmed => $_getBF(5);
  @$pb.TagNumber(6)
  set accountConfirmed($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAccountConfirmed() => $_has(5);
  @$pb.TagNumber(6)
  void clearAccountConfirmed() => clearField(6);

  @$pb.TagNumber(7)
  TempTokenInfo get tempToken => $_getN(6);
  @$pb.TagNumber(7)
  set tempToken(TempTokenInfo v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasTempToken() => $_has(6);
  @$pb.TagNumber(7)
  void clearTempToken() => clearField(7);
  @$pb.TagNumber(7)
  TempTokenInfo ensureTempToken() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.List<$core.String> get otherProfileIds => $_getList(7);
}

class TempTokenInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TempTokenInfo', package: const $pb.PackageName('influenzanet.shared'), createEmptyInstance: create)
    ..aOS(1, 'token')
    ..aInt64(2, 'expiration')
    ..aOS(3, 'purpose')
    ..aOS(4, 'userId')
    ..m<$core.String, $core.String>(5, 'info', entryClassName: 'TempTokenInfo.InfoEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('influenzanet.shared'))
    ..aOS(6, 'instanceId')
    ..hasRequiredFields = false
  ;

  TempTokenInfo._() : super();
  factory TempTokenInfo() => create();
  factory TempTokenInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TempTokenInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TempTokenInfo clone() => TempTokenInfo()..mergeFromMessage(this);
  TempTokenInfo copyWith(void Function(TempTokenInfo) updates) => super.copyWith((message) => updates(message as TempTokenInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TempTokenInfo create() => TempTokenInfo._();
  TempTokenInfo createEmptyInstance() => create();
  static $pb.PbList<TempTokenInfo> createRepeated() => $pb.PbList<TempTokenInfo>();
  @$core.pragma('dart2js:noInline')
  static TempTokenInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TempTokenInfo>(create);
  static TempTokenInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get expiration => $_getI64(1);
  @$pb.TagNumber(2)
  set expiration($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExpiration() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpiration() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get purpose => $_getSZ(2);
  @$pb.TagNumber(3)
  set purpose($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPurpose() => $_has(2);
  @$pb.TagNumber(3)
  void clearPurpose() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get userId => $_getSZ(3);
  @$pb.TagNumber(4)
  set userId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserId() => clearField(4);

  @$pb.TagNumber(5)
  $core.Map<$core.String, $core.String> get info => $_getMap(4);

  @$pb.TagNumber(6)
  $core.String get instanceId => $_getSZ(5);
  @$pb.TagNumber(6)
  set instanceId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasInstanceId() => $_has(5);
  @$pb.TagNumber(6)
  void clearInstanceId() => clearField(6);
}

class TempTokenInfos extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TempTokenInfos', package: const $pb.PackageName('influenzanet.shared'), createEmptyInstance: create)
    ..pc<TempTokenInfo>(1, 'tempTokens', $pb.PbFieldType.PM, subBuilder: TempTokenInfo.create)
    ..hasRequiredFields = false
  ;

  TempTokenInfos._() : super();
  factory TempTokenInfos() => create();
  factory TempTokenInfos.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TempTokenInfos.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TempTokenInfos clone() => TempTokenInfos()..mergeFromMessage(this);
  TempTokenInfos copyWith(void Function(TempTokenInfos) updates) => super.copyWith((message) => updates(message as TempTokenInfos));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TempTokenInfos create() => TempTokenInfos._();
  TempTokenInfos createEmptyInstance() => create();
  static $pb.PbList<TempTokenInfos> createRepeated() => $pb.PbList<TempTokenInfos>();
  @$core.pragma('dart2js:noInline')
  static TempTokenInfos getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TempTokenInfos>(create);
  static TempTokenInfos _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TempTokenInfo> get tempTokens => $_getList(0);
}

