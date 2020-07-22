///
//  Generated code. Do not modify.
//  source: email_client_service/email-client-service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/empty.pb.dart' as $0;

import 'email-client-service.pbenum.dart';

export 'email-client-service.pbenum.dart';

class ServiceStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ServiceStatus', package: const $pb.PackageName('influenzanet.email_client_service'), createEmptyInstance: create)
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

class SendEmailReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendEmailReq', package: const $pb.PackageName('influenzanet.email_client_service'), createEmptyInstance: create)
    ..pPS(1, 'to')
    ..aOS(2, 'subject')
    ..aOS(3, 'content')
    ..aOM<HeaderOverrides>(4, 'headerOverrides', subBuilder: HeaderOverrides.create)
    ..hasRequiredFields = false
  ;

  SendEmailReq._() : super();
  factory SendEmailReq() => create();
  factory SendEmailReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendEmailReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SendEmailReq clone() => SendEmailReq()..mergeFromMessage(this);
  SendEmailReq copyWith(void Function(SendEmailReq) updates) => super.copyWith((message) => updates(message as SendEmailReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendEmailReq create() => SendEmailReq._();
  SendEmailReq createEmptyInstance() => create();
  static $pb.PbList<SendEmailReq> createRepeated() => $pb.PbList<SendEmailReq>();
  @$core.pragma('dart2js:noInline')
  static SendEmailReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendEmailReq>(create);
  static SendEmailReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get to => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get subject => $_getSZ(1);
  @$pb.TagNumber(2)
  set subject($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubject() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubject() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get content => $_getSZ(2);
  @$pb.TagNumber(3)
  set content($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => clearField(3);

  @$pb.TagNumber(4)
  HeaderOverrides get headerOverrides => $_getN(3);
  @$pb.TagNumber(4)
  set headerOverrides(HeaderOverrides v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasHeaderOverrides() => $_has(3);
  @$pb.TagNumber(4)
  void clearHeaderOverrides() => clearField(4);
  @$pb.TagNumber(4)
  HeaderOverrides ensureHeaderOverrides() => $_ensure(3);
}

class HeaderOverrides extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HeaderOverrides', package: const $pb.PackageName('influenzanet.email_client_service'), createEmptyInstance: create)
    ..aOS(1, 'from')
    ..aOS(2, 'sender')
    ..pPS(3, 'replyTo')
    ..aOB(4, 'noReplyTo')
    ..hasRequiredFields = false
  ;

  HeaderOverrides._() : super();
  factory HeaderOverrides() => create();
  factory HeaderOverrides.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HeaderOverrides.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HeaderOverrides clone() => HeaderOverrides()..mergeFromMessage(this);
  HeaderOverrides copyWith(void Function(HeaderOverrides) updates) => super.copyWith((message) => updates(message as HeaderOverrides));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HeaderOverrides create() => HeaderOverrides._();
  HeaderOverrides createEmptyInstance() => create();
  static $pb.PbList<HeaderOverrides> createRepeated() => $pb.PbList<HeaderOverrides>();
  @$core.pragma('dart2js:noInline')
  static HeaderOverrides getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HeaderOverrides>(create);
  static HeaderOverrides _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get from => $_getSZ(0);
  @$pb.TagNumber(1)
  set from($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sender => $_getSZ(1);
  @$pb.TagNumber(2)
  set sender($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSender() => $_has(1);
  @$pb.TagNumber(2)
  void clearSender() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get replyTo => $_getList(2);

  @$pb.TagNumber(4)
  $core.bool get noReplyTo => $_getBF(3);
  @$pb.TagNumber(4)
  set noReplyTo($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNoReplyTo() => $_has(3);
  @$pb.TagNumber(4)
  void clearNoReplyTo() => clearField(4);
}

class EmailClientServiceApiApi {
  $pb.RpcClient _client;
  EmailClientServiceApiApi(this._client);

  $async.Future<ServiceStatus> status($pb.ClientContext ctx, $0.Empty request) {
    var emptyResponse = ServiceStatus();
    return _client.invoke<ServiceStatus>(ctx, 'EmailClientServiceApi', 'Status', request, emptyResponse);
  }
  $async.Future<ServiceStatus> sendEmail($pb.ClientContext ctx, SendEmailReq request) {
    var emptyResponse = ServiceStatus();
    return _client.invoke<ServiceStatus>(ctx, 'EmailClientServiceApi', 'SendEmail', request, emptyResponse);
  }
}

