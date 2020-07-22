///
//  Generated code. Do not modify.
//  source: study_service/survey-response.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class SurveyResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SurveyResponse', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOS(1, 'key')
    ..aOS(2, 'participantId')
    ..aInt64(3, 'submittedAt')
    ..pc<SurveyItemResponse>(4, 'responses', $pb.PbFieldType.PM, subBuilder: SurveyItemResponse.create)
    ..m<$core.String, $core.String>(5, 'context', entryClassName: 'SurveyResponse.ContextEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('influenzanet.study_service'))
    ..hasRequiredFields = false
  ;

  SurveyResponse._() : super();
  factory SurveyResponse() => create();
  factory SurveyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SurveyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SurveyResponse clone() => SurveyResponse()..mergeFromMessage(this);
  SurveyResponse copyWith(void Function(SurveyResponse) updates) => super.copyWith((message) => updates(message as SurveyResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SurveyResponse create() => SurveyResponse._();
  SurveyResponse createEmptyInstance() => create();
  static $pb.PbList<SurveyResponse> createRepeated() => $pb.PbList<SurveyResponse>();
  @$core.pragma('dart2js:noInline')
  static SurveyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SurveyResponse>(create);
  static SurveyResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get participantId => $_getSZ(1);
  @$pb.TagNumber(2)
  set participantId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasParticipantId() => $_has(1);
  @$pb.TagNumber(2)
  void clearParticipantId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get submittedAt => $_getI64(2);
  @$pb.TagNumber(3)
  set submittedAt($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSubmittedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubmittedAt() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<SurveyItemResponse> get responses => $_getList(3);

  @$pb.TagNumber(5)
  $core.Map<$core.String, $core.String> get context => $_getMap(4);
}

class SurveyResponses extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SurveyResponses', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..pc<SurveyResponse>(1, 'responses', $pb.PbFieldType.PM, subBuilder: SurveyResponse.create)
    ..hasRequiredFields = false
  ;

  SurveyResponses._() : super();
  factory SurveyResponses() => create();
  factory SurveyResponses.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SurveyResponses.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SurveyResponses clone() => SurveyResponses()..mergeFromMessage(this);
  SurveyResponses copyWith(void Function(SurveyResponses) updates) => super.copyWith((message) => updates(message as SurveyResponses));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SurveyResponses create() => SurveyResponses._();
  SurveyResponses createEmptyInstance() => create();
  static $pb.PbList<SurveyResponses> createRepeated() => $pb.PbList<SurveyResponses>();
  @$core.pragma('dart2js:noInline')
  static SurveyResponses getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SurveyResponses>(create);
  static SurveyResponses _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SurveyResponse> get responses => $_getList(0);
}

class SurveyItemResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SurveyItemResponse', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOS(1, 'key')
    ..aOM<ResponseMeta>(2, 'meta', subBuilder: ResponseMeta.create)
    ..pc<SurveyItemResponse>(3, 'items', $pb.PbFieldType.PM, subBuilder: SurveyItemResponse.create)
    ..aOM<ResponseItem>(4, 'response', subBuilder: ResponseItem.create)
    ..hasRequiredFields = false
  ;

  SurveyItemResponse._() : super();
  factory SurveyItemResponse() => create();
  factory SurveyItemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SurveyItemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SurveyItemResponse clone() => SurveyItemResponse()..mergeFromMessage(this);
  SurveyItemResponse copyWith(void Function(SurveyItemResponse) updates) => super.copyWith((message) => updates(message as SurveyItemResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SurveyItemResponse create() => SurveyItemResponse._();
  SurveyItemResponse createEmptyInstance() => create();
  static $pb.PbList<SurveyItemResponse> createRepeated() => $pb.PbList<SurveyItemResponse>();
  @$core.pragma('dart2js:noInline')
  static SurveyItemResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SurveyItemResponse>(create);
  static SurveyItemResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  ResponseMeta get meta => $_getN(1);
  @$pb.TagNumber(2)
  set meta(ResponseMeta v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMeta() => $_has(1);
  @$pb.TagNumber(2)
  void clearMeta() => clearField(2);
  @$pb.TagNumber(2)
  ResponseMeta ensureMeta() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<SurveyItemResponse> get items => $_getList(2);

  @$pb.TagNumber(4)
  ResponseItem get response => $_getN(3);
  @$pb.TagNumber(4)
  set response(ResponseItem v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasResponse() => $_has(3);
  @$pb.TagNumber(4)
  void clearResponse() => clearField(4);
  @$pb.TagNumber(4)
  ResponseItem ensureResponse() => $_ensure(3);
}

class ResponseItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ResponseItem', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOS(1, 'key')
    ..aOS(2, 'value')
    ..aOS(3, 'dtype')
    ..pc<ResponseItem>(4, 'items', $pb.PbFieldType.PM, subBuilder: ResponseItem.create)
    ..hasRequiredFields = false
  ;

  ResponseItem._() : super();
  factory ResponseItem() => create();
  factory ResponseItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResponseItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ResponseItem clone() => ResponseItem()..mergeFromMessage(this);
  ResponseItem copyWith(void Function(ResponseItem) updates) => super.copyWith((message) => updates(message as ResponseItem));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResponseItem create() => ResponseItem._();
  ResponseItem createEmptyInstance() => create();
  static $pb.PbList<ResponseItem> createRepeated() => $pb.PbList<ResponseItem>();
  @$core.pragma('dart2js:noInline')
  static ResponseItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResponseItem>(create);
  static ResponseItem _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get dtype => $_getSZ(2);
  @$pb.TagNumber(3)
  set dtype($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDtype() => $_has(2);
  @$pb.TagNumber(3)
  void clearDtype() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<ResponseItem> get items => $_getList(3);
}

class ResponseMeta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ResponseMeta', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..a<$core.int>(1, 'position', $pb.PbFieldType.O3)
    ..aOS(2, 'localeCode')
    ..a<$core.int>(3, 'version', $pb.PbFieldType.O3)
    ..p<$fixnum.Int64>(4, 'rendered', $pb.PbFieldType.P6)
    ..p<$fixnum.Int64>(5, 'displayed', $pb.PbFieldType.P6)
    ..p<$fixnum.Int64>(6, 'responded', $pb.PbFieldType.P6)
    ..hasRequiredFields = false
  ;

  ResponseMeta._() : super();
  factory ResponseMeta() => create();
  factory ResponseMeta.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResponseMeta.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ResponseMeta clone() => ResponseMeta()..mergeFromMessage(this);
  ResponseMeta copyWith(void Function(ResponseMeta) updates) => super.copyWith((message) => updates(message as ResponseMeta));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResponseMeta create() => ResponseMeta._();
  ResponseMeta createEmptyInstance() => create();
  static $pb.PbList<ResponseMeta> createRepeated() => $pb.PbList<ResponseMeta>();
  @$core.pragma('dart2js:noInline')
  static ResponseMeta getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResponseMeta>(create);
  static ResponseMeta _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get position => $_getIZ(0);
  @$pb.TagNumber(1)
  set position($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPosition() => $_has(0);
  @$pb.TagNumber(1)
  void clearPosition() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get localeCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set localeCode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLocaleCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocaleCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get version => $_getIZ(2);
  @$pb.TagNumber(3)
  set version($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$fixnum.Int64> get rendered => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$fixnum.Int64> get displayed => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$fixnum.Int64> get responded => $_getList(5);
}

