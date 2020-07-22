///
//  Generated code. Do not modify.
//  source: study_service/study-service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../shared/auth_info.pb.dart' as $2;
import 'expression.pb.dart' as $7;
import 'study.pb.dart' as $9;
import 'survey.pb.dart' as $8;
import 'survey-response.pb.dart' as $6;
import '../google/protobuf/empty.pb.dart' as $0;

import 'study-service.pbenum.dart';

export 'study-service.pbenum.dart';

class SurveyResponseQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SurveyResponseQuery', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOS(2, 'studyKey')
    ..aOS(3, 'surveyKey')
    ..aInt64(4, 'from')
    ..aInt64(5, 'until')
    ..m<$core.String, $core.String>(6, 'contextQuery', entryClassName: 'SurveyResponseQuery.ContextQueryEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('influenzanet.study_service'))
    ..hasRequiredFields = false
  ;

  SurveyResponseQuery._() : super();
  factory SurveyResponseQuery() => create();
  factory SurveyResponseQuery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SurveyResponseQuery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SurveyResponseQuery clone() => SurveyResponseQuery()..mergeFromMessage(this);
  SurveyResponseQuery copyWith(void Function(SurveyResponseQuery) updates) => super.copyWith((message) => updates(message as SurveyResponseQuery));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SurveyResponseQuery create() => SurveyResponseQuery._();
  SurveyResponseQuery createEmptyInstance() => create();
  static $pb.PbList<SurveyResponseQuery> createRepeated() => $pb.PbList<SurveyResponseQuery>();
  @$core.pragma('dart2js:noInline')
  static SurveyResponseQuery getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SurveyResponseQuery>(create);
  static SurveyResponseQuery _defaultInstance;

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
  $core.String get surveyKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set surveyKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSurveyKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearSurveyKey() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get from => $_getI64(3);
  @$pb.TagNumber(4)
  set from($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFrom() => $_has(3);
  @$pb.TagNumber(4)
  void clearFrom() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get until => $_getI64(4);
  @$pb.TagNumber(5)
  set until($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUntil() => $_has(4);
  @$pb.TagNumber(5)
  void clearUntil() => clearField(5);

  @$pb.TagNumber(6)
  $core.Map<$core.String, $core.String> get contextQuery => $_getMap(5);
}

class StudyResponseStatistics extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StudyResponseStatistics', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOS(1, 'studyKey')
    ..m<$core.String, $fixnum.Int64>(6, 'surveyResponseCounts', entryClassName: 'StudyResponseStatistics.SurveyResponseCountsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.O6, packageName: const $pb.PackageName('influenzanet.study_service'))
    ..hasRequiredFields = false
  ;

  StudyResponseStatistics._() : super();
  factory StudyResponseStatistics() => create();
  factory StudyResponseStatistics.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StudyResponseStatistics.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  StudyResponseStatistics clone() => StudyResponseStatistics()..mergeFromMessage(this);
  StudyResponseStatistics copyWith(void Function(StudyResponseStatistics) updates) => super.copyWith((message) => updates(message as StudyResponseStatistics));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StudyResponseStatistics create() => StudyResponseStatistics._();
  StudyResponseStatistics createEmptyInstance() => create();
  static $pb.PbList<StudyResponseStatistics> createRepeated() => $pb.PbList<StudyResponseStatistics>();
  @$core.pragma('dart2js:noInline')
  static StudyResponseStatistics getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StudyResponseStatistics>(create);
  static StudyResponseStatistics _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get studyKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set studyKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStudyKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearStudyKey() => clearField(1);

  @$pb.TagNumber(6)
  $core.Map<$core.String, $fixnum.Int64> get surveyResponseCounts => $_getMap(1);
}

class ProfilesWithConditionReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ProfilesWithConditionReq', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOS(1, 'instanceId')
    ..aOS(2, 'studyKey', protoName: 'studyKey')
    ..pPS(3, 'profileIds')
    ..aOM<$7.ExpressionArg>(4, 'condition', subBuilder: $7.ExpressionArg.create)
    ..hasRequiredFields = false
  ;

  ProfilesWithConditionReq._() : super();
  factory ProfilesWithConditionReq() => create();
  factory ProfilesWithConditionReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProfilesWithConditionReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ProfilesWithConditionReq clone() => ProfilesWithConditionReq()..mergeFromMessage(this);
  ProfilesWithConditionReq copyWith(void Function(ProfilesWithConditionReq) updates) => super.copyWith((message) => updates(message as ProfilesWithConditionReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProfilesWithConditionReq create() => ProfilesWithConditionReq._();
  ProfilesWithConditionReq createEmptyInstance() => create();
  static $pb.PbList<ProfilesWithConditionReq> createRepeated() => $pb.PbList<ProfilesWithConditionReq>();
  @$core.pragma('dart2js:noInline')
  static ProfilesWithConditionReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProfilesWithConditionReq>(create);
  static ProfilesWithConditionReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get instanceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set instanceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInstanceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInstanceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get studyKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set studyKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStudyKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearStudyKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get profileIds => $_getList(2);

  @$pb.TagNumber(4)
  $7.ExpressionArg get condition => $_getN(3);
  @$pb.TagNumber(4)
  set condition($7.ExpressionArg v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCondition() => $_has(3);
  @$pb.TagNumber(4)
  void clearCondition() => clearField(4);
  @$pb.TagNumber(4)
  $7.ExpressionArg ensureCondition() => $_ensure(3);
}

class ServiceStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ServiceStatus', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
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

class NewStudyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NewStudyRequest', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOM<$9.Study>(2, 'study', subBuilder: $9.Study.create)
    ..hasRequiredFields = false
  ;

  NewStudyRequest._() : super();
  factory NewStudyRequest() => create();
  factory NewStudyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewStudyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NewStudyRequest clone() => NewStudyRequest()..mergeFromMessage(this);
  NewStudyRequest copyWith(void Function(NewStudyRequest) updates) => super.copyWith((message) => updates(message as NewStudyRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewStudyRequest create() => NewStudyRequest._();
  NewStudyRequest createEmptyInstance() => create();
  static $pb.PbList<NewStudyRequest> createRepeated() => $pb.PbList<NewStudyRequest>();
  @$core.pragma('dart2js:noInline')
  static NewStudyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewStudyRequest>(create);
  static NewStudyRequest _defaultInstance;

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
  $9.Study get study => $_getN(1);
  @$pb.TagNumber(2)
  set study($9.Study v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStudy() => $_has(1);
  @$pb.TagNumber(2)
  void clearStudy() => clearField(2);
  @$pb.TagNumber(2)
  $9.Study ensureStudy() => $_ensure(1);
}

class SurveyAndContext extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SurveyAndContext', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOM<$8.Survey>(1, 'survey', subBuilder: $8.Survey.create)
    ..aOM<$8.SurveyContext>(2, 'context', subBuilder: $8.SurveyContext.create)
    ..aOM<$6.SurveyResponse>(3, 'prefill', subBuilder: $6.SurveyResponse.create)
    ..hasRequiredFields = false
  ;

  SurveyAndContext._() : super();
  factory SurveyAndContext() => create();
  factory SurveyAndContext.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SurveyAndContext.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SurveyAndContext clone() => SurveyAndContext()..mergeFromMessage(this);
  SurveyAndContext copyWith(void Function(SurveyAndContext) updates) => super.copyWith((message) => updates(message as SurveyAndContext));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SurveyAndContext create() => SurveyAndContext._();
  SurveyAndContext createEmptyInstance() => create();
  static $pb.PbList<SurveyAndContext> createRepeated() => $pb.PbList<SurveyAndContext>();
  @$core.pragma('dart2js:noInline')
  static SurveyAndContext getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SurveyAndContext>(create);
  static SurveyAndContext _defaultInstance;

  @$pb.TagNumber(1)
  $8.Survey get survey => $_getN(0);
  @$pb.TagNumber(1)
  set survey($8.Survey v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSurvey() => $_has(0);
  @$pb.TagNumber(1)
  void clearSurvey() => clearField(1);
  @$pb.TagNumber(1)
  $8.Survey ensureSurvey() => $_ensure(0);

  @$pb.TagNumber(2)
  $8.SurveyContext get context => $_getN(1);
  @$pb.TagNumber(2)
  set context($8.SurveyContext v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContext() => $_has(1);
  @$pb.TagNumber(2)
  void clearContext() => clearField(2);
  @$pb.TagNumber(2)
  $8.SurveyContext ensureContext() => $_ensure(1);

  @$pb.TagNumber(3)
  $6.SurveyResponse get prefill => $_getN(2);
  @$pb.TagNumber(3)
  set prefill($6.SurveyResponse v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrefill() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrefill() => clearField(3);
  @$pb.TagNumber(3)
  $6.SurveyResponse ensurePrefill() => $_ensure(2);
}

class StudyReferenceReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StudyReferenceReq', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOS(2, 'studyKey')
    ..hasRequiredFields = false
  ;

  StudyReferenceReq._() : super();
  factory StudyReferenceReq() => create();
  factory StudyReferenceReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StudyReferenceReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  StudyReferenceReq clone() => StudyReferenceReq()..mergeFromMessage(this);
  StudyReferenceReq copyWith(void Function(StudyReferenceReq) updates) => super.copyWith((message) => updates(message as StudyReferenceReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StudyReferenceReq create() => StudyReferenceReq._();
  StudyReferenceReq createEmptyInstance() => create();
  static $pb.PbList<StudyReferenceReq> createRepeated() => $pb.PbList<StudyReferenceReq>();
  @$core.pragma('dart2js:noInline')
  static StudyReferenceReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StudyReferenceReq>(create);
  static StudyReferenceReq _defaultInstance;

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
}

class SurveyInfoResp_SurveyInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SurveyInfoResp.SurveyInfo', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOS(1, 'key')
    ..pc<$8.LocalisedObject>(2, 'name', $pb.PbFieldType.PM, subBuilder: $8.LocalisedObject.create)
    ..pc<$8.LocalisedObject>(3, 'description', $pb.PbFieldType.PM, subBuilder: $8.LocalisedObject.create)
    ..hasRequiredFields = false
  ;

  SurveyInfoResp_SurveyInfo._() : super();
  factory SurveyInfoResp_SurveyInfo() => create();
  factory SurveyInfoResp_SurveyInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SurveyInfoResp_SurveyInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SurveyInfoResp_SurveyInfo clone() => SurveyInfoResp_SurveyInfo()..mergeFromMessage(this);
  SurveyInfoResp_SurveyInfo copyWith(void Function(SurveyInfoResp_SurveyInfo) updates) => super.copyWith((message) => updates(message as SurveyInfoResp_SurveyInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SurveyInfoResp_SurveyInfo create() => SurveyInfoResp_SurveyInfo._();
  SurveyInfoResp_SurveyInfo createEmptyInstance() => create();
  static $pb.PbList<SurveyInfoResp_SurveyInfo> createRepeated() => $pb.PbList<SurveyInfoResp_SurveyInfo>();
  @$core.pragma('dart2js:noInline')
  static SurveyInfoResp_SurveyInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SurveyInfoResp_SurveyInfo>(create);
  static SurveyInfoResp_SurveyInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$8.LocalisedObject> get name => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$8.LocalisedObject> get description => $_getList(2);
}

class SurveyInfoResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SurveyInfoResp', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..pc<SurveyInfoResp_SurveyInfo>(1, 'infos', $pb.PbFieldType.PM, subBuilder: SurveyInfoResp_SurveyInfo.create)
    ..hasRequiredFields = false
  ;

  SurveyInfoResp._() : super();
  factory SurveyInfoResp() => create();
  factory SurveyInfoResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SurveyInfoResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SurveyInfoResp clone() => SurveyInfoResp()..mergeFromMessage(this);
  SurveyInfoResp copyWith(void Function(SurveyInfoResp) updates) => super.copyWith((message) => updates(message as SurveyInfoResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SurveyInfoResp create() => SurveyInfoResp._();
  SurveyInfoResp createEmptyInstance() => create();
  static $pb.PbList<SurveyInfoResp> createRepeated() => $pb.PbList<SurveyInfoResp>();
  @$core.pragma('dart2js:noInline')
  static SurveyInfoResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SurveyInfoResp>(create);
  static SurveyInfoResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SurveyInfoResp_SurveyInfo> get infos => $_getList(0);
}

class AddSurveyReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddSurveyReq', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOS(2, 'studyKey')
    ..aOM<$8.Survey>(3, 'survey', subBuilder: $8.Survey.create)
    ..hasRequiredFields = false
  ;

  AddSurveyReq._() : super();
  factory AddSurveyReq() => create();
  factory AddSurveyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSurveyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddSurveyReq clone() => AddSurveyReq()..mergeFromMessage(this);
  AddSurveyReq copyWith(void Function(AddSurveyReq) updates) => super.copyWith((message) => updates(message as AddSurveyReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddSurveyReq create() => AddSurveyReq._();
  AddSurveyReq createEmptyInstance() => create();
  static $pb.PbList<AddSurveyReq> createRepeated() => $pb.PbList<AddSurveyReq>();
  @$core.pragma('dart2js:noInline')
  static AddSurveyReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSurveyReq>(create);
  static AddSurveyReq _defaultInstance;

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
  $8.Survey get survey => $_getN(2);
  @$pb.TagNumber(3)
  set survey($8.Survey v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSurvey() => $_has(2);
  @$pb.TagNumber(3)
  void clearSurvey() => clearField(3);
  @$pb.TagNumber(3)
  $8.Survey ensureSurvey() => $_ensure(2);
}

class SubmitResponseReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SubmitResponseReq', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOS(2, 'studyKey')
    ..aOM<$6.SurveyResponse>(3, 'response', subBuilder: $6.SurveyResponse.create)
    ..hasRequiredFields = false
  ;

  SubmitResponseReq._() : super();
  factory SubmitResponseReq() => create();
  factory SubmitResponseReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubmitResponseReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SubmitResponseReq clone() => SubmitResponseReq()..mergeFromMessage(this);
  SubmitResponseReq copyWith(void Function(SubmitResponseReq) updates) => super.copyWith((message) => updates(message as SubmitResponseReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubmitResponseReq create() => SubmitResponseReq._();
  SubmitResponseReq createEmptyInstance() => create();
  static $pb.PbList<SubmitResponseReq> createRepeated() => $pb.PbList<SubmitResponseReq>();
  @$core.pragma('dart2js:noInline')
  static SubmitResponseReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubmitResponseReq>(create);
  static SubmitResponseReq _defaultInstance;

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
  $6.SurveyResponse get response => $_getN(2);
  @$pb.TagNumber(3)
  set response($6.SurveyResponse v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearResponse() => clearField(3);
  @$pb.TagNumber(3)
  $6.SurveyResponse ensureResponse() => $_ensure(2);
}

class EnterStudyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EnterStudyRequest', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOS(2, 'studyKey')
    ..hasRequiredFields = false
  ;

  EnterStudyRequest._() : super();
  factory EnterStudyRequest() => create();
  factory EnterStudyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EnterStudyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EnterStudyRequest clone() => EnterStudyRequest()..mergeFromMessage(this);
  EnterStudyRequest copyWith(void Function(EnterStudyRequest) updates) => super.copyWith((message) => updates(message as EnterStudyRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EnterStudyRequest create() => EnterStudyRequest._();
  EnterStudyRequest createEmptyInstance() => create();
  static $pb.PbList<EnterStudyRequest> createRepeated() => $pb.PbList<EnterStudyRequest>();
  @$core.pragma('dart2js:noInline')
  static EnterStudyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EnterStudyRequest>(create);
  static EnterStudyRequest _defaultInstance;

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
}

class LeaveStudyMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LeaveStudyMsg', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOS(2, 'studyKey')
    ..hasRequiredFields = false
  ;

  LeaveStudyMsg._() : super();
  factory LeaveStudyMsg() => create();
  factory LeaveStudyMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LeaveStudyMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LeaveStudyMsg clone() => LeaveStudyMsg()..mergeFromMessage(this);
  LeaveStudyMsg copyWith(void Function(LeaveStudyMsg) updates) => super.copyWith((message) => updates(message as LeaveStudyMsg));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LeaveStudyMsg create() => LeaveStudyMsg._();
  LeaveStudyMsg createEmptyInstance() => create();
  static $pb.PbList<LeaveStudyMsg> createRepeated() => $pb.PbList<LeaveStudyMsg>();
  @$core.pragma('dart2js:noInline')
  static LeaveStudyMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LeaveStudyMsg>(create);
  static LeaveStudyMsg _defaultInstance;

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
}

class SurveyReferenceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SurveyReferenceRequest', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOS(2, 'studyKey')
    ..aOS(3, 'surveyKey')
    ..hasRequiredFields = false
  ;

  SurveyReferenceRequest._() : super();
  factory SurveyReferenceRequest() => create();
  factory SurveyReferenceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SurveyReferenceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SurveyReferenceRequest clone() => SurveyReferenceRequest()..mergeFromMessage(this);
  SurveyReferenceRequest copyWith(void Function(SurveyReferenceRequest) updates) => super.copyWith((message) => updates(message as SurveyReferenceRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SurveyReferenceRequest create() => SurveyReferenceRequest._();
  SurveyReferenceRequest createEmptyInstance() => create();
  static $pb.PbList<SurveyReferenceRequest> createRepeated() => $pb.PbList<SurveyReferenceRequest>();
  @$core.pragma('dart2js:noInline')
  static SurveyReferenceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SurveyReferenceRequest>(create);
  static SurveyReferenceRequest _defaultInstance;

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
  $core.String get surveyKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set surveyKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSurveyKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearSurveyKey() => clearField(3);
}

class PostponeSurveyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PostponeSurveyRequest', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOS(2, 'studyKey')
    ..aOS(3, 'surveyKey')
    ..aInt64(4, 'delay')
    ..hasRequiredFields = false
  ;

  PostponeSurveyRequest._() : super();
  factory PostponeSurveyRequest() => create();
  factory PostponeSurveyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostponeSurveyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PostponeSurveyRequest clone() => PostponeSurveyRequest()..mergeFromMessage(this);
  PostponeSurveyRequest copyWith(void Function(PostponeSurveyRequest) updates) => super.copyWith((message) => updates(message as PostponeSurveyRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PostponeSurveyRequest create() => PostponeSurveyRequest._();
  PostponeSurveyRequest createEmptyInstance() => create();
  static $pb.PbList<PostponeSurveyRequest> createRepeated() => $pb.PbList<PostponeSurveyRequest>();
  @$core.pragma('dart2js:noInline')
  static PostponeSurveyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostponeSurveyRequest>(create);
  static PostponeSurveyRequest _defaultInstance;

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
  $core.String get surveyKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set surveyKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSurveyKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearSurveyKey() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get delay => $_getI64(3);
  @$pb.TagNumber(4)
  set delay($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDelay() => $_has(3);
  @$pb.TagNumber(4)
  void clearDelay() => clearField(4);
}

class StatusReportRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StatusReportRequest', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOM<$6.SurveyResponse>(2, 'statusSurvey', subBuilder: $6.SurveyResponse.create)
    ..hasRequiredFields = false
  ;

  StatusReportRequest._() : super();
  factory StatusReportRequest() => create();
  factory StatusReportRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatusReportRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  StatusReportRequest clone() => StatusReportRequest()..mergeFromMessage(this);
  StatusReportRequest copyWith(void Function(StatusReportRequest) updates) => super.copyWith((message) => updates(message as StatusReportRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StatusReportRequest create() => StatusReportRequest._();
  StatusReportRequest createEmptyInstance() => create();
  static $pb.PbList<StatusReportRequest> createRepeated() => $pb.PbList<StatusReportRequest>();
  @$core.pragma('dart2js:noInline')
  static StatusReportRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatusReportRequest>(create);
  static StatusReportRequest _defaultInstance;

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
  $6.SurveyResponse get statusSurvey => $_getN(1);
  @$pb.TagNumber(2)
  set statusSurvey($6.SurveyResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatusSurvey() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatusSurvey() => clearField(2);
  @$pb.TagNumber(2)
  $6.SurveyResponse ensureStatusSurvey() => $_ensure(1);
}

class GetStudiesForUserReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetStudiesForUserReq', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..hasRequiredFields = false
  ;

  GetStudiesForUserReq._() : super();
  factory GetStudiesForUserReq() => create();
  factory GetStudiesForUserReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStudiesForUserReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetStudiesForUserReq clone() => GetStudiesForUserReq()..mergeFromMessage(this);
  GetStudiesForUserReq copyWith(void Function(GetStudiesForUserReq) updates) => super.copyWith((message) => updates(message as GetStudiesForUserReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetStudiesForUserReq create() => GetStudiesForUserReq._();
  GetStudiesForUserReq createEmptyInstance() => create();
  static $pb.PbList<GetStudiesForUserReq> createRepeated() => $pb.PbList<GetStudiesForUserReq>();
  @$core.pragma('dart2js:noInline')
  static GetStudiesForUserReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStudiesForUserReq>(create);
  static GetStudiesForUserReq _defaultInstance;

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

class Studies extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Studies', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..pc<$9.Study>(1, 'studies', $pb.PbFieldType.PM, subBuilder: $9.Study.create)
    ..hasRequiredFields = false
  ;

  Studies._() : super();
  factory Studies() => create();
  factory Studies.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Studies.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Studies clone() => Studies()..mergeFromMessage(this);
  Studies copyWith(void Function(Studies) updates) => super.copyWith((message) => updates(message as Studies));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Studies create() => Studies._();
  Studies createEmptyInstance() => create();
  static $pb.PbList<Studies> createRepeated() => $pb.PbList<Studies>();
  @$core.pragma('dart2js:noInline')
  static Studies getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Studies>(create);
  static Studies _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$9.Study> get studies => $_getList(0);
}

class StudyMemberReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StudyMemberReq', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOS(2, 'studyKey')
    ..aOM<$9.Study_Member>(3, 'member', subBuilder: $9.Study_Member.create)
    ..hasRequiredFields = false
  ;

  StudyMemberReq._() : super();
  factory StudyMemberReq() => create();
  factory StudyMemberReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StudyMemberReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  StudyMemberReq clone() => StudyMemberReq()..mergeFromMessage(this);
  StudyMemberReq copyWith(void Function(StudyMemberReq) updates) => super.copyWith((message) => updates(message as StudyMemberReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StudyMemberReq create() => StudyMemberReq._();
  StudyMemberReq createEmptyInstance() => create();
  static $pb.PbList<StudyMemberReq> createRepeated() => $pb.PbList<StudyMemberReq>();
  @$core.pragma('dart2js:noInline')
  static StudyMemberReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StudyMemberReq>(create);
  static StudyMemberReq _defaultInstance;

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
  $9.Study_Member get member => $_getN(2);
  @$pb.TagNumber(3)
  set member($9.Study_Member v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMember() => $_has(2);
  @$pb.TagNumber(3)
  void clearMember() => clearField(3);
  @$pb.TagNumber(3)
  $9.Study_Member ensureMember() => $_ensure(2);
}

class StudyRulesReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StudyRulesReq', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOS(2, 'studyKey')
    ..pc<$7.Expression>(3, 'rules', $pb.PbFieldType.PM, subBuilder: $7.Expression.create)
    ..hasRequiredFields = false
  ;

  StudyRulesReq._() : super();
  factory StudyRulesReq() => create();
  factory StudyRulesReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StudyRulesReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  StudyRulesReq clone() => StudyRulesReq()..mergeFromMessage(this);
  StudyRulesReq copyWith(void Function(StudyRulesReq) updates) => super.copyWith((message) => updates(message as StudyRulesReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StudyRulesReq create() => StudyRulesReq._();
  StudyRulesReq createEmptyInstance() => create();
  static $pb.PbList<StudyRulesReq> createRepeated() => $pb.PbList<StudyRulesReq>();
  @$core.pragma('dart2js:noInline')
  static StudyRulesReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StudyRulesReq>(create);
  static StudyRulesReq _defaultInstance;

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
  $core.List<$7.Expression> get rules => $_getList(2);
}

class StudyStatusReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StudyStatusReq', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOS(2, 'studyKey')
    ..aOS(3, 'newStatus')
    ..hasRequiredFields = false
  ;

  StudyStatusReq._() : super();
  factory StudyStatusReq() => create();
  factory StudyStatusReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StudyStatusReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  StudyStatusReq clone() => StudyStatusReq()..mergeFromMessage(this);
  StudyStatusReq copyWith(void Function(StudyStatusReq) updates) => super.copyWith((message) => updates(message as StudyStatusReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StudyStatusReq create() => StudyStatusReq._();
  StudyStatusReq createEmptyInstance() => create();
  static $pb.PbList<StudyStatusReq> createRepeated() => $pb.PbList<StudyStatusReq>();
  @$core.pragma('dart2js:noInline')
  static StudyStatusReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StudyStatusReq>(create);
  static StudyStatusReq _defaultInstance;

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
  $core.String get newStatus => $_getSZ(2);
  @$pb.TagNumber(3)
  set newStatus($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNewStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearNewStatus() => clearField(3);
}

class StudyPropsReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StudyPropsReq', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOM<$2.TokenInfos>(1, 'token', subBuilder: $2.TokenInfos.create)
    ..aOS(2, 'studyKey')
    ..aOM<$9.Study_Props>(3, 'props', subBuilder: $9.Study_Props.create)
    ..hasRequiredFields = false
  ;

  StudyPropsReq._() : super();
  factory StudyPropsReq() => create();
  factory StudyPropsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StudyPropsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  StudyPropsReq clone() => StudyPropsReq()..mergeFromMessage(this);
  StudyPropsReq copyWith(void Function(StudyPropsReq) updates) => super.copyWith((message) => updates(message as StudyPropsReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StudyPropsReq create() => StudyPropsReq._();
  StudyPropsReq createEmptyInstance() => create();
  static $pb.PbList<StudyPropsReq> createRepeated() => $pb.PbList<StudyPropsReq>();
  @$core.pragma('dart2js:noInline')
  static StudyPropsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StudyPropsReq>(create);
  static StudyPropsReq _defaultInstance;

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
  $9.Study_Props get props => $_getN(2);
  @$pb.TagNumber(3)
  set props($9.Study_Props v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasProps() => $_has(2);
  @$pb.TagNumber(3)
  void clearProps() => clearField(3);
  @$pb.TagNumber(3)
  $9.Study_Props ensureProps() => $_ensure(2);
}

class StudyServiceApiApi {
  $pb.RpcClient _client;
  StudyServiceApiApi(this._client);

  $async.Future<ServiceStatus> status($pb.ClientContext ctx, $0.Empty request) {
    var emptyResponse = ServiceStatus();
    return _client.invoke<ServiceStatus>(ctx, 'StudyServiceApi', 'Status', request, emptyResponse);
  }
  $async.Future<$9.AssignedSurveys> enterStudy($pb.ClientContext ctx, EnterStudyRequest request) {
    var emptyResponse = $9.AssignedSurveys();
    return _client.invoke<$9.AssignedSurveys>(ctx, 'StudyServiceApi', 'EnterStudy', request, emptyResponse);
  }
  $async.Future<$9.AssignedSurveys> getAssignedSurveys($pb.ClientContext ctx, $2.TokenInfos request) {
    var emptyResponse = $9.AssignedSurveys();
    return _client.invoke<$9.AssignedSurveys>(ctx, 'StudyServiceApi', 'GetAssignedSurveys', request, emptyResponse);
  }
  $async.Future<SurveyAndContext> getAssignedSurvey($pb.ClientContext ctx, SurveyReferenceRequest request) {
    var emptyResponse = SurveyAndContext();
    return _client.invoke<SurveyAndContext>(ctx, 'StudyServiceApi', 'GetAssignedSurvey', request, emptyResponse);
  }
  $async.Future<$9.AssignedSurveys> postponeSurvey($pb.ClientContext ctx, PostponeSurveyRequest request) {
    var emptyResponse = $9.AssignedSurveys();
    return _client.invoke<$9.AssignedSurveys>(ctx, 'StudyServiceApi', 'PostponeSurvey', request, emptyResponse);
  }
  $async.Future<$9.AssignedSurveys> submitStatusReport($pb.ClientContext ctx, StatusReportRequest request) {
    var emptyResponse = $9.AssignedSurveys();
    return _client.invoke<$9.AssignedSurveys>(ctx, 'StudyServiceApi', 'SubmitStatusReport', request, emptyResponse);
  }
  $async.Future<$9.AssignedSurveys> submitResponse($pb.ClientContext ctx, SubmitResponseReq request) {
    var emptyResponse = $9.AssignedSurveys();
    return _client.invoke<$9.AssignedSurveys>(ctx, 'StudyServiceApi', 'SubmitResponse', request, emptyResponse);
  }
  $async.Future<$9.AssignedSurveys> leaveStudy($pb.ClientContext ctx, LeaveStudyMsg request) {
    var emptyResponse = $9.AssignedSurveys();
    return _client.invoke<$9.AssignedSurveys>(ctx, 'StudyServiceApi', 'LeaveStudy', request, emptyResponse);
  }
  $async.Future<ServiceStatus> deleteParticipantData($pb.ClientContext ctx, $2.TokenInfos request) {
    var emptyResponse = ServiceStatus();
    return _client.invoke<ServiceStatus>(ctx, 'StudyServiceApi', 'DeleteParticipantData', request, emptyResponse);
  }
  $async.Future<Studies> getStudiesForUser($pb.ClientContext ctx, GetStudiesForUserReq request) {
    var emptyResponse = Studies();
    return _client.invoke<Studies>(ctx, 'StudyServiceApi', 'GetStudiesForUser', request, emptyResponse);
  }
  $async.Future<Studies> getActiveStudies($pb.ClientContext ctx, $2.TokenInfos request) {
    var emptyResponse = Studies();
    return _client.invoke<Studies>(ctx, 'StudyServiceApi', 'GetActiveStudies', request, emptyResponse);
  }
  $async.Future<SurveyInfoResp> getStudySurveyInfos($pb.ClientContext ctx, StudyReferenceReq request) {
    var emptyResponse = SurveyInfoResp();
    return _client.invoke<SurveyInfoResp>(ctx, 'StudyServiceApi', 'GetStudySurveyInfos', request, emptyResponse);
  }
  $async.Future<ServiceStatus> hasParticipantStateWithCondition($pb.ClientContext ctx, ProfilesWithConditionReq request) {
    var emptyResponse = ServiceStatus();
    return _client.invoke<ServiceStatus>(ctx, 'StudyServiceApi', 'HasParticipantStateWithCondition', request, emptyResponse);
  }
  $async.Future<$9.Study> createNewStudy($pb.ClientContext ctx, NewStudyRequest request) {
    var emptyResponse = $9.Study();
    return _client.invoke<$9.Study>(ctx, 'StudyServiceApi', 'CreateNewStudy', request, emptyResponse);
  }
  $async.Future<Studies> getAllStudies($pb.ClientContext ctx, $2.TokenInfos request) {
    var emptyResponse = Studies();
    return _client.invoke<Studies>(ctx, 'StudyServiceApi', 'GetAllStudies', request, emptyResponse);
  }
  $async.Future<$9.Study> getStudy($pb.ClientContext ctx, StudyReferenceReq request) {
    var emptyResponse = $9.Study();
    return _client.invoke<$9.Study>(ctx, 'StudyServiceApi', 'GetStudy', request, emptyResponse);
  }
  $async.Future<$9.Study> saveStudyMember($pb.ClientContext ctx, StudyMemberReq request) {
    var emptyResponse = $9.Study();
    return _client.invoke<$9.Study>(ctx, 'StudyServiceApi', 'SaveStudyMember', request, emptyResponse);
  }
  $async.Future<$9.Study> removeStudyMember($pb.ClientContext ctx, StudyMemberReq request) {
    var emptyResponse = $9.Study();
    return _client.invoke<$9.Study>(ctx, 'StudyServiceApi', 'RemoveStudyMember', request, emptyResponse);
  }
  $async.Future<$9.Study> saveStudyRules($pb.ClientContext ctx, StudyRulesReq request) {
    var emptyResponse = $9.Study();
    return _client.invoke<$9.Study>(ctx, 'StudyServiceApi', 'SaveStudyRules', request, emptyResponse);
  }
  $async.Future<$9.Study> saveStudyStatus($pb.ClientContext ctx, StudyStatusReq request) {
    var emptyResponse = $9.Study();
    return _client.invoke<$9.Study>(ctx, 'StudyServiceApi', 'SaveStudyStatus', request, emptyResponse);
  }
  $async.Future<$9.Study> saveStudyProps($pb.ClientContext ctx, StudyPropsReq request) {
    var emptyResponse = $9.Study();
    return _client.invoke<$9.Study>(ctx, 'StudyServiceApi', 'SaveStudyProps', request, emptyResponse);
  }
  $async.Future<$8.Survey> saveSurveyToStudy($pb.ClientContext ctx, AddSurveyReq request) {
    var emptyResponse = $8.Survey();
    return _client.invoke<$8.Survey>(ctx, 'StudyServiceApi', 'SaveSurveyToStudy', request, emptyResponse);
  }
  $async.Future<$8.Survey> getSurveyDefForStudy($pb.ClientContext ctx, SurveyReferenceRequest request) {
    var emptyResponse = $8.Survey();
    return _client.invoke<$8.Survey>(ctx, 'StudyServiceApi', 'GetSurveyDefForStudy', request, emptyResponse);
  }
  $async.Future<ServiceStatus> removeSurveyFromStudy($pb.ClientContext ctx, SurveyReferenceRequest request) {
    var emptyResponse = ServiceStatus();
    return _client.invoke<ServiceStatus>(ctx, 'StudyServiceApi', 'RemoveSurveyFromStudy', request, emptyResponse);
  }
  $async.Future<ServiceStatus> deleteStudy($pb.ClientContext ctx, StudyReferenceReq request) {
    var emptyResponse = ServiceStatus();
    return _client.invoke<ServiceStatus>(ctx, 'StudyServiceApi', 'DeleteStudy', request, emptyResponse);
  }
  $async.Future<StudyResponseStatistics> getStudyResponseStatistics($pb.ClientContext ctx, SurveyResponseQuery request) {
    var emptyResponse = StudyResponseStatistics();
    return _client.invoke<StudyResponseStatistics>(ctx, 'StudyServiceApi', 'GetStudyResponseStatistics', request, emptyResponse);
  }
  $async.Future<$6.SurveyResponse> streamStudyResponses($pb.ClientContext ctx, SurveyResponseQuery request) {
    var emptyResponse = $6.SurveyResponse();
    return _client.invoke<$6.SurveyResponse>(ctx, 'StudyServiceApi', 'StreamStudyResponses', request, emptyResponse);
  }
}

