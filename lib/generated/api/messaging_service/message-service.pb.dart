///
//  Generated code. Do not modify.
//  source: messaging_service/message-service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../shared/auth_info.pb.dart' as $2;
import '../google/protobuf/empty.pb.dart' as $0;

import 'message-service.pbenum.dart';

export 'message-service.pbenum.dart';

class ServiceStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ServiceStatus', package: const $pb.PackageName('influenzanet.message_service'), createEmptyInstance: create)
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

class SendMessageToAllUsersReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendMessageToAllUsersReq', package: const $pb.PackageName('influenzanet.message_service'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOM<EmailTemplate>(2, 'template', subBuilder: EmailTemplate.create)
    ..hasRequiredFields = false
  ;

  SendMessageToAllUsersReq._() : super();
  factory SendMessageToAllUsersReq() => create();
  factory SendMessageToAllUsersReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendMessageToAllUsersReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SendMessageToAllUsersReq clone() => SendMessageToAllUsersReq()..mergeFromMessage(this);
  SendMessageToAllUsersReq copyWith(void Function(SendMessageToAllUsersReq) updates) => super.copyWith((message) => updates(message as SendMessageToAllUsersReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendMessageToAllUsersReq create() => SendMessageToAllUsersReq._();
  SendMessageToAllUsersReq createEmptyInstance() => create();
  static $pb.PbList<SendMessageToAllUsersReq> createRepeated() => $pb.PbList<SendMessageToAllUsersReq>();
  @$core.pragma('dart2js:noInline')
  static SendMessageToAllUsersReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendMessageToAllUsersReq>(create);
  static SendMessageToAllUsersReq _defaultInstance;

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
  EmailTemplate get template => $_getN(1);
  @$pb.TagNumber(2)
  set template(EmailTemplate v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTemplate() => $_has(1);
  @$pb.TagNumber(2)
  void clearTemplate() => clearField(2);
  @$pb.TagNumber(2)
  EmailTemplate ensureTemplate() => $_ensure(1);
}

class SendMessageToStudyParticipantsReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendMessageToStudyParticipantsReq', package: const $pb.PackageName('influenzanet.message_service'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOM<EmailTemplate>(2, 'template', subBuilder: EmailTemplate.create)
    ..aOS(3, 'studyKey')
    ..aOM<ExpressionArg>(4, 'condition', subBuilder: ExpressionArg.create)
    ..hasRequiredFields = false
  ;

  SendMessageToStudyParticipantsReq._() : super();
  factory SendMessageToStudyParticipantsReq() => create();
  factory SendMessageToStudyParticipantsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendMessageToStudyParticipantsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SendMessageToStudyParticipantsReq clone() => SendMessageToStudyParticipantsReq()..mergeFromMessage(this);
  SendMessageToStudyParticipantsReq copyWith(void Function(SendMessageToStudyParticipantsReq) updates) => super.copyWith((message) => updates(message as SendMessageToStudyParticipantsReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendMessageToStudyParticipantsReq create() => SendMessageToStudyParticipantsReq._();
  SendMessageToStudyParticipantsReq createEmptyInstance() => create();
  static $pb.PbList<SendMessageToStudyParticipantsReq> createRepeated() => $pb.PbList<SendMessageToStudyParticipantsReq>();
  @$core.pragma('dart2js:noInline')
  static SendMessageToStudyParticipantsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendMessageToStudyParticipantsReq>(create);
  static SendMessageToStudyParticipantsReq _defaultInstance;

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
  EmailTemplate get template => $_getN(1);
  @$pb.TagNumber(2)
  set template(EmailTemplate v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTemplate() => $_has(1);
  @$pb.TagNumber(2)
  void clearTemplate() => clearField(2);
  @$pb.TagNumber(2)
  EmailTemplate ensureTemplate() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get studyKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set studyKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStudyKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearStudyKey() => clearField(3);

  @$pb.TagNumber(4)
  ExpressionArg get condition => $_getN(3);
  @$pb.TagNumber(4)
  set condition(ExpressionArg v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCondition() => $_has(3);
  @$pb.TagNumber(4)
  void clearCondition() => clearField(4);
  @$pb.TagNumber(4)
  ExpressionArg ensureCondition() => $_ensure(3);
}

class SendEmailReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendEmailReq', package: const $pb.PackageName('influenzanet.message_service'), createEmptyInstance: create)
    ..aOS(1, 'instanceId')
    ..pPS(2, 'to')
    ..aOS(3, 'messageType')
    ..aOS(4, 'studyKey')
    ..aOS(5, 'preferredLanguage')
    ..m<$core.String, $core.String>(6, 'contentInfos', entryClassName: 'SendEmailReq.ContentInfosEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('influenzanet.message_service'))
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
  $core.String get instanceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set instanceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInstanceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInstanceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get to => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get messageType => $_getSZ(2);
  @$pb.TagNumber(3)
  set messageType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessageType() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessageType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get studyKey => $_getSZ(3);
  @$pb.TagNumber(4)
  set studyKey($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStudyKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearStudyKey() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get preferredLanguage => $_getSZ(4);
  @$pb.TagNumber(5)
  set preferredLanguage($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPreferredLanguage() => $_has(4);
  @$pb.TagNumber(5)
  void clearPreferredLanguage() => clearField(5);

  @$pb.TagNumber(6)
  $core.Map<$core.String, $core.String> get contentInfos => $_getMap(5);
}

class AutoMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AutoMessage', package: const $pb.PackageName('influenzanet.message_service'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOM<EmailTemplate>(2, 'template', subBuilder: EmailTemplate.create)
    ..aOS(3, 'type')
    ..aOS(4, 'studyKey')
    ..aOM<ExpressionArg>(5, 'condition', subBuilder: ExpressionArg.create)
    ..aInt64(6, 'nextTime')
    ..aInt64(7, 'period')
    ..hasRequiredFields = false
  ;

  AutoMessage._() : super();
  factory AutoMessage() => create();
  factory AutoMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AutoMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AutoMessage clone() => AutoMessage()..mergeFromMessage(this);
  AutoMessage copyWith(void Function(AutoMessage) updates) => super.copyWith((message) => updates(message as AutoMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AutoMessage create() => AutoMessage._();
  AutoMessage createEmptyInstance() => create();
  static $pb.PbList<AutoMessage> createRepeated() => $pb.PbList<AutoMessage>();
  @$core.pragma('dart2js:noInline')
  static AutoMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AutoMessage>(create);
  static AutoMessage _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  EmailTemplate get template => $_getN(1);
  @$pb.TagNumber(2)
  set template(EmailTemplate v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTemplate() => $_has(1);
  @$pb.TagNumber(2)
  void clearTemplate() => clearField(2);
  @$pb.TagNumber(2)
  EmailTemplate ensureTemplate() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get type => $_getSZ(2);
  @$pb.TagNumber(3)
  set type($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get studyKey => $_getSZ(3);
  @$pb.TagNumber(4)
  set studyKey($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStudyKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearStudyKey() => clearField(4);

  @$pb.TagNumber(5)
  ExpressionArg get condition => $_getN(4);
  @$pb.TagNumber(5)
  set condition(ExpressionArg v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCondition() => $_has(4);
  @$pb.TagNumber(5)
  void clearCondition() => clearField(5);
  @$pb.TagNumber(5)
  ExpressionArg ensureCondition() => $_ensure(4);

  @$pb.TagNumber(6)
  $fixnum.Int64 get nextTime => $_getI64(5);
  @$pb.TagNumber(6)
  set nextTime($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNextTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearNextTime() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get period => $_getI64(6);
  @$pb.TagNumber(7)
  set period($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPeriod() => $_has(6);
  @$pb.TagNumber(7)
  void clearPeriod() => clearField(7);
}

class AutoMessages extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AutoMessages', package: const $pb.PackageName('influenzanet.message_service'), createEmptyInstance: create)
    ..pc<AutoMessage>(1, 'autoMessages', $pb.PbFieldType.PM, subBuilder: AutoMessage.create)
    ..hasRequiredFields = false
  ;

  AutoMessages._() : super();
  factory AutoMessages() => create();
  factory AutoMessages.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AutoMessages.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AutoMessages clone() => AutoMessages()..mergeFromMessage(this);
  AutoMessages copyWith(void Function(AutoMessages) updates) => super.copyWith((message) => updates(message as AutoMessages));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AutoMessages create() => AutoMessages._();
  AutoMessages createEmptyInstance() => create();
  static $pb.PbList<AutoMessages> createRepeated() => $pb.PbList<AutoMessages>();
  @$core.pragma('dart2js:noInline')
  static AutoMessages getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AutoMessages>(create);
  static AutoMessages _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AutoMessage> get autoMessages => $_getList(0);
}

class GetAutoMessagesReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetAutoMessagesReq', package: const $pb.PackageName('influenzanet.message_service'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..hasRequiredFields = false
  ;

  GetAutoMessagesReq._() : super();
  factory GetAutoMessagesReq() => create();
  factory GetAutoMessagesReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAutoMessagesReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetAutoMessagesReq clone() => GetAutoMessagesReq()..mergeFromMessage(this);
  GetAutoMessagesReq copyWith(void Function(GetAutoMessagesReq) updates) => super.copyWith((message) => updates(message as GetAutoMessagesReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAutoMessagesReq create() => GetAutoMessagesReq._();
  GetAutoMessagesReq createEmptyInstance() => create();
  static $pb.PbList<GetAutoMessagesReq> createRepeated() => $pb.PbList<GetAutoMessagesReq>();
  @$core.pragma('dart2js:noInline')
  static GetAutoMessagesReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAutoMessagesReq>(create);
  static GetAutoMessagesReq _defaultInstance;

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

class SaveAutoMessageReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SaveAutoMessageReq', package: const $pb.PackageName('influenzanet.message_service'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOM<AutoMessage>(2, 'autoMessage', subBuilder: AutoMessage.create)
    ..hasRequiredFields = false
  ;

  SaveAutoMessageReq._() : super();
  factory SaveAutoMessageReq() => create();
  factory SaveAutoMessageReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SaveAutoMessageReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SaveAutoMessageReq clone() => SaveAutoMessageReq()..mergeFromMessage(this);
  SaveAutoMessageReq copyWith(void Function(SaveAutoMessageReq) updates) => super.copyWith((message) => updates(message as SaveAutoMessageReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SaveAutoMessageReq create() => SaveAutoMessageReq._();
  SaveAutoMessageReq createEmptyInstance() => create();
  static $pb.PbList<SaveAutoMessageReq> createRepeated() => $pb.PbList<SaveAutoMessageReq>();
  @$core.pragma('dart2js:noInline')
  static SaveAutoMessageReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaveAutoMessageReq>(create);
  static SaveAutoMessageReq _defaultInstance;

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
  AutoMessage get autoMessage => $_getN(1);
  @$pb.TagNumber(2)
  set autoMessage(AutoMessage v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAutoMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearAutoMessage() => clearField(2);
  @$pb.TagNumber(2)
  AutoMessage ensureAutoMessage() => $_ensure(1);
}

class DeleteAutoMessageReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteAutoMessageReq', package: const $pb.PackageName('influenzanet.message_service'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOS(2, 'autoMessageId')
    ..hasRequiredFields = false
  ;

  DeleteAutoMessageReq._() : super();
  factory DeleteAutoMessageReq() => create();
  factory DeleteAutoMessageReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteAutoMessageReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteAutoMessageReq clone() => DeleteAutoMessageReq()..mergeFromMessage(this);
  DeleteAutoMessageReq copyWith(void Function(DeleteAutoMessageReq) updates) => super.copyWith((message) => updates(message as DeleteAutoMessageReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteAutoMessageReq create() => DeleteAutoMessageReq._();
  DeleteAutoMessageReq createEmptyInstance() => create();
  static $pb.PbList<DeleteAutoMessageReq> createRepeated() => $pb.PbList<DeleteAutoMessageReq>();
  @$core.pragma('dart2js:noInline')
  static DeleteAutoMessageReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteAutoMessageReq>(create);
  static DeleteAutoMessageReq _defaultInstance;

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
  $core.String get autoMessageId => $_getSZ(1);
  @$pb.TagNumber(2)
  set autoMessageId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAutoMessageId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAutoMessageId() => clearField(2);
}

class EmailTemplate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EmailTemplate', package: const $pb.PackageName('influenzanet.message_service'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'messageType')
    ..aOS(3, 'studyKey')
    ..aOS(4, 'defaultLanguage')
    ..pc<LocalizedTemplate>(5, 'translations', $pb.PbFieldType.PM, subBuilder: LocalizedTemplate.create)
    ..aOM<HeaderOverrides>(6, 'headerOverrides', subBuilder: HeaderOverrides.create)
    ..hasRequiredFields = false
  ;

  EmailTemplate._() : super();
  factory EmailTemplate() => create();
  factory EmailTemplate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmailTemplate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EmailTemplate clone() => EmailTemplate()..mergeFromMessage(this);
  EmailTemplate copyWith(void Function(EmailTemplate) updates) => super.copyWith((message) => updates(message as EmailTemplate));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmailTemplate create() => EmailTemplate._();
  EmailTemplate createEmptyInstance() => create();
  static $pb.PbList<EmailTemplate> createRepeated() => $pb.PbList<EmailTemplate>();
  @$core.pragma('dart2js:noInline')
  static EmailTemplate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmailTemplate>(create);
  static EmailTemplate _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get messageType => $_getSZ(1);
  @$pb.TagNumber(2)
  set messageType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessageType() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessageType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get studyKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set studyKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStudyKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearStudyKey() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get defaultLanguage => $_getSZ(3);
  @$pb.TagNumber(4)
  set defaultLanguage($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDefaultLanguage() => $_has(3);
  @$pb.TagNumber(4)
  void clearDefaultLanguage() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<LocalizedTemplate> get translations => $_getList(4);

  @$pb.TagNumber(6)
  HeaderOverrides get headerOverrides => $_getN(5);
  @$pb.TagNumber(6)
  set headerOverrides(HeaderOverrides v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasHeaderOverrides() => $_has(5);
  @$pb.TagNumber(6)
  void clearHeaderOverrides() => clearField(6);
  @$pb.TagNumber(6)
  HeaderOverrides ensureHeaderOverrides() => $_ensure(5);
}

class HeaderOverrides extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HeaderOverrides', package: const $pb.PackageName('influenzanet.message_service'), createEmptyInstance: create)
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

class LocalizedTemplate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LocalizedTemplate', package: const $pb.PackageName('influenzanet.message_service'), createEmptyInstance: create)
    ..aOS(1, 'lang')
    ..aOS(2, 'templateDef')
    ..aOS(3, 'subject')
    ..hasRequiredFields = false
  ;

  LocalizedTemplate._() : super();
  factory LocalizedTemplate() => create();
  factory LocalizedTemplate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocalizedTemplate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LocalizedTemplate clone() => LocalizedTemplate()..mergeFromMessage(this);
  LocalizedTemplate copyWith(void Function(LocalizedTemplate) updates) => super.copyWith((message) => updates(message as LocalizedTemplate));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocalizedTemplate create() => LocalizedTemplate._();
  LocalizedTemplate createEmptyInstance() => create();
  static $pb.PbList<LocalizedTemplate> createRepeated() => $pb.PbList<LocalizedTemplate>();
  @$core.pragma('dart2js:noInline')
  static LocalizedTemplate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocalizedTemplate>(create);
  static LocalizedTemplate _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get lang => $_getSZ(0);
  @$pb.TagNumber(1)
  set lang($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLang() => $_has(0);
  @$pb.TagNumber(1)
  void clearLang() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get templateDef => $_getSZ(1);
  @$pb.TagNumber(2)
  set templateDef($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTemplateDef() => $_has(1);
  @$pb.TagNumber(2)
  void clearTemplateDef() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get subject => $_getSZ(2);
  @$pb.TagNumber(3)
  set subject($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSubject() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubject() => clearField(3);
}

class EmailTemplates extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EmailTemplates', package: const $pb.PackageName('influenzanet.message_service'), createEmptyInstance: create)
    ..pc<EmailTemplate>(1, 'templates', $pb.PbFieldType.PM, subBuilder: EmailTemplate.create)
    ..hasRequiredFields = false
  ;

  EmailTemplates._() : super();
  factory EmailTemplates() => create();
  factory EmailTemplates.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmailTemplates.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EmailTemplates clone() => EmailTemplates()..mergeFromMessage(this);
  EmailTemplates copyWith(void Function(EmailTemplates) updates) => super.copyWith((message) => updates(message as EmailTemplates));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmailTemplates create() => EmailTemplates._();
  EmailTemplates createEmptyInstance() => create();
  static $pb.PbList<EmailTemplates> createRepeated() => $pb.PbList<EmailTemplates>();
  @$core.pragma('dart2js:noInline')
  static EmailTemplates getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmailTemplates>(create);
  static EmailTemplates _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<EmailTemplate> get templates => $_getList(0);
}

class GetEmailTemplatesReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetEmailTemplatesReq', package: const $pb.PackageName('influenzanet.message_service'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..hasRequiredFields = false
  ;

  GetEmailTemplatesReq._() : super();
  factory GetEmailTemplatesReq() => create();
  factory GetEmailTemplatesReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetEmailTemplatesReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetEmailTemplatesReq clone() => GetEmailTemplatesReq()..mergeFromMessage(this);
  GetEmailTemplatesReq copyWith(void Function(GetEmailTemplatesReq) updates) => super.copyWith((message) => updates(message as GetEmailTemplatesReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetEmailTemplatesReq create() => GetEmailTemplatesReq._();
  GetEmailTemplatesReq createEmptyInstance() => create();
  static $pb.PbList<GetEmailTemplatesReq> createRepeated() => $pb.PbList<GetEmailTemplatesReq>();
  @$core.pragma('dart2js:noInline')
  static GetEmailTemplatesReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetEmailTemplatesReq>(create);
  static GetEmailTemplatesReq _defaultInstance;

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

class SaveEmailTemplateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SaveEmailTemplateReq', package: const $pb.PackageName('influenzanet.message_service'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOM<EmailTemplate>(2, 'template', subBuilder: EmailTemplate.create)
    ..hasRequiredFields = false
  ;

  SaveEmailTemplateReq._() : super();
  factory SaveEmailTemplateReq() => create();
  factory SaveEmailTemplateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SaveEmailTemplateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SaveEmailTemplateReq clone() => SaveEmailTemplateReq()..mergeFromMessage(this);
  SaveEmailTemplateReq copyWith(void Function(SaveEmailTemplateReq) updates) => super.copyWith((message) => updates(message as SaveEmailTemplateReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SaveEmailTemplateReq create() => SaveEmailTemplateReq._();
  SaveEmailTemplateReq createEmptyInstance() => create();
  static $pb.PbList<SaveEmailTemplateReq> createRepeated() => $pb.PbList<SaveEmailTemplateReq>();
  @$core.pragma('dart2js:noInline')
  static SaveEmailTemplateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaveEmailTemplateReq>(create);
  static SaveEmailTemplateReq _defaultInstance;

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
  EmailTemplate get template => $_getN(1);
  @$pb.TagNumber(2)
  set template(EmailTemplate v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTemplate() => $_has(1);
  @$pb.TagNumber(2)
  void clearTemplate() => clearField(2);
  @$pb.TagNumber(2)
  EmailTemplate ensureTemplate() => $_ensure(1);
}

class DeleteEmailTemplateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteEmailTemplateReq', package: const $pb.PackageName('influenzanet.message_service'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOS(2, 'studyKey')
    ..aOS(3, 'messageType')
    ..hasRequiredFields = false
  ;

  DeleteEmailTemplateReq._() : super();
  factory DeleteEmailTemplateReq() => create();
  factory DeleteEmailTemplateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteEmailTemplateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteEmailTemplateReq clone() => DeleteEmailTemplateReq()..mergeFromMessage(this);
  DeleteEmailTemplateReq copyWith(void Function(DeleteEmailTemplateReq) updates) => super.copyWith((message) => updates(message as DeleteEmailTemplateReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteEmailTemplateReq create() => DeleteEmailTemplateReq._();
  DeleteEmailTemplateReq createEmptyInstance() => create();
  static $pb.PbList<DeleteEmailTemplateReq> createRepeated() => $pb.PbList<DeleteEmailTemplateReq>();
  @$core.pragma('dart2js:noInline')
  static DeleteEmailTemplateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteEmailTemplateReq>(create);
  static DeleteEmailTemplateReq _defaultInstance;

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
  $core.String get studyKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set studyKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStudyKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearStudyKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get messageType => $_getSZ(2);
  @$pb.TagNumber(3)
  set messageType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessageType() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessageType() => clearField(3);
}

class Expression extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Expression', package: const $pb.PackageName('influenzanet.message_service'), createEmptyInstance: create)
    ..aOS(1, 'name')
    ..aOS(2, 'returnType', protoName: 'returnType')
    ..pc<ExpressionArg>(3, 'data', $pb.PbFieldType.PM, subBuilder: ExpressionArg.create)
    ..hasRequiredFields = false
  ;

  Expression._() : super();
  factory Expression() => create();
  factory Expression.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Expression.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Expression clone() => Expression()..mergeFromMessage(this);
  Expression copyWith(void Function(Expression) updates) => super.copyWith((message) => updates(message as Expression));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Expression create() => Expression._();
  Expression createEmptyInstance() => create();
  static $pb.PbList<Expression> createRepeated() => $pb.PbList<Expression>();
  @$core.pragma('dart2js:noInline')
  static Expression getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Expression>(create);
  static Expression _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get returnType => $_getSZ(1);
  @$pb.TagNumber(2)
  set returnType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReturnType() => $_has(1);
  @$pb.TagNumber(2)
  void clearReturnType() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<ExpressionArg> get data => $_getList(2);
}

enum ExpressionArg_Data {
  exp, 
  str, 
  num, 
  notSet
}

class ExpressionArg extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ExpressionArg_Data> _ExpressionArg_DataByTag = {
    2 : ExpressionArg_Data.exp,
    3 : ExpressionArg_Data.str,
    4 : ExpressionArg_Data.num,
    0 : ExpressionArg_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ExpressionArg', package: const $pb.PackageName('influenzanet.message_service'), createEmptyInstance: create)
    ..oo(0, [2, 3, 4])
    ..aOS(1, 'dtype')
    ..aOM<Expression>(2, 'exp', subBuilder: Expression.create)
    ..aOS(3, 'str')
    ..a<$core.double>(4, 'num', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  ExpressionArg._() : super();
  factory ExpressionArg() => create();
  factory ExpressionArg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExpressionArg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ExpressionArg clone() => ExpressionArg()..mergeFromMessage(this);
  ExpressionArg copyWith(void Function(ExpressionArg) updates) => super.copyWith((message) => updates(message as ExpressionArg));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExpressionArg create() => ExpressionArg._();
  ExpressionArg createEmptyInstance() => create();
  static $pb.PbList<ExpressionArg> createRepeated() => $pb.PbList<ExpressionArg>();
  @$core.pragma('dart2js:noInline')
  static ExpressionArg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExpressionArg>(create);
  static ExpressionArg _defaultInstance;

  ExpressionArg_Data whichData() => _ExpressionArg_DataByTag[$_whichOneof(0)];
  void clearData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get dtype => $_getSZ(0);
  @$pb.TagNumber(1)
  set dtype($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDtype() => $_has(0);
  @$pb.TagNumber(1)
  void clearDtype() => clearField(1);

  @$pb.TagNumber(2)
  Expression get exp => $_getN(1);
  @$pb.TagNumber(2)
  set exp(Expression v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasExp() => $_has(1);
  @$pb.TagNumber(2)
  void clearExp() => clearField(2);
  @$pb.TagNumber(2)
  Expression ensureExp() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get str => $_getSZ(2);
  @$pb.TagNumber(3)
  set str($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStr() => $_has(2);
  @$pb.TagNumber(3)
  void clearStr() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get num => $_getN(3);
  @$pb.TagNumber(4)
  set num($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearNum() => clearField(4);
}

class MessagingServiceApiApi {
  $pb.RpcClient _client;
  MessagingServiceApiApi(this._client);

  $async.Future<ServiceStatus> status($pb.ClientContext ctx, $0.Empty request) {
    var emptyResponse = ServiceStatus();
    return _client.invoke<ServiceStatus>(ctx, 'MessagingServiceApi', 'Status', request, emptyResponse);
  }
  $async.Future<ServiceStatus> sendInstantEmail($pb.ClientContext ctx, SendEmailReq request) {
    var emptyResponse = ServiceStatus();
    return _client.invoke<ServiceStatus>(ctx, 'MessagingServiceApi', 'SendInstantEmail', request, emptyResponse);
  }
  $async.Future<ServiceStatus> sendMessageToAllUsers($pb.ClientContext ctx, SendMessageToAllUsersReq request) {
    var emptyResponse = ServiceStatus();
    return _client.invoke<ServiceStatus>(ctx, 'MessagingServiceApi', 'SendMessageToAllUsers', request, emptyResponse);
  }
  $async.Future<ServiceStatus> sendMessageToStudyParticipants($pb.ClientContext ctx, SendMessageToStudyParticipantsReq request) {
    var emptyResponse = ServiceStatus();
    return _client.invoke<ServiceStatus>(ctx, 'MessagingServiceApi', 'SendMessageToStudyParticipants', request, emptyResponse);
  }
  $async.Future<AutoMessages> getAutoMessages($pb.ClientContext ctx, GetAutoMessagesReq request) {
    var emptyResponse = AutoMessages();
    return _client.invoke<AutoMessages>(ctx, 'MessagingServiceApi', 'GetAutoMessages', request, emptyResponse);
  }
  $async.Future<AutoMessage> saveAutoMessage($pb.ClientContext ctx, SaveAutoMessageReq request) {
    var emptyResponse = AutoMessage();
    return _client.invoke<AutoMessage>(ctx, 'MessagingServiceApi', 'SaveAutoMessage', request, emptyResponse);
  }
  $async.Future<ServiceStatus> deleteAutoMessage($pb.ClientContext ctx, DeleteAutoMessageReq request) {
    var emptyResponse = ServiceStatus();
    return _client.invoke<ServiceStatus>(ctx, 'MessagingServiceApi', 'DeleteAutoMessage', request, emptyResponse);
  }
  $async.Future<EmailTemplates> getEmailTemplates($pb.ClientContext ctx, GetEmailTemplatesReq request) {
    var emptyResponse = EmailTemplates();
    return _client.invoke<EmailTemplates>(ctx, 'MessagingServiceApi', 'GetEmailTemplates', request, emptyResponse);
  }
  $async.Future<EmailTemplate> saveEmailTemplate($pb.ClientContext ctx, SaveEmailTemplateReq request) {
    var emptyResponse = EmailTemplate();
    return _client.invoke<EmailTemplate>(ctx, 'MessagingServiceApi', 'SaveEmailTemplate', request, emptyResponse);
  }
  $async.Future<ServiceStatus> deleteEmailTemplate($pb.ClientContext ctx, DeleteEmailTemplateReq request) {
    var emptyResponse = ServiceStatus();
    return _client.invoke<ServiceStatus>(ctx, 'MessagingServiceApi', 'DeleteEmailTemplate', request, emptyResponse);
  }
}

