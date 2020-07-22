///
//  Generated code. Do not modify.
//  source: study_service/survey.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'survey-response.pb.dart' as $6;
import 'expression.pb.dart' as $7;

class SurveyContext extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SurveyContext', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOS(1, 'mode')
    ..pc<$6.SurveyResponse>(2, 'previousResponses', $pb.PbFieldType.PM, subBuilder: $6.SurveyResponse.create)
    ..hasRequiredFields = false
  ;

  SurveyContext._() : super();
  factory SurveyContext() => create();
  factory SurveyContext.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SurveyContext.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SurveyContext clone() => SurveyContext()..mergeFromMessage(this);
  SurveyContext copyWith(void Function(SurveyContext) updates) => super.copyWith((message) => updates(message as SurveyContext));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SurveyContext create() => SurveyContext._();
  SurveyContext createEmptyInstance() => create();
  static $pb.PbList<SurveyContext> createRepeated() => $pb.PbList<SurveyContext>();
  @$core.pragma('dart2js:noInline')
  static SurveyContext getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SurveyContext>(create);
  static SurveyContext _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mode => $_getSZ(0);
  @$pb.TagNumber(1)
  set mode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearMode() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$6.SurveyResponse> get previousResponses => $_getList(1);
}

class SurveyContextDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SurveyContextDef', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOM<$7.ExpressionArg>(3, 'mode', subBuilder: $7.ExpressionArg.create)
    ..pc<$7.Expression>(4, 'previousResponses', $pb.PbFieldType.PM, subBuilder: $7.Expression.create)
    ..hasRequiredFields = false
  ;

  SurveyContextDef._() : super();
  factory SurveyContextDef() => create();
  factory SurveyContextDef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SurveyContextDef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SurveyContextDef clone() => SurveyContextDef()..mergeFromMessage(this);
  SurveyContextDef copyWith(void Function(SurveyContextDef) updates) => super.copyWith((message) => updates(message as SurveyContextDef));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SurveyContextDef create() => SurveyContextDef._();
  SurveyContextDef createEmptyInstance() => create();
  static $pb.PbList<SurveyContextDef> createRepeated() => $pb.PbList<SurveyContextDef>();
  @$core.pragma('dart2js:noInline')
  static SurveyContextDef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SurveyContextDef>(create);
  static SurveyContextDef _defaultInstance;

  @$pb.TagNumber(3)
  $7.ExpressionArg get mode => $_getN(0);
  @$pb.TagNumber(3)
  set mode($7.ExpressionArg v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMode() => $_has(0);
  @$pb.TagNumber(3)
  void clearMode() => clearField(3);
  @$pb.TagNumber(3)
  $7.ExpressionArg ensureMode() => $_ensure(0);

  @$pb.TagNumber(4)
  $core.List<$7.Expression> get previousResponses => $_getList(1);
}

class Survey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Survey', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..pc<LocalisedObject>(2, 'name', $pb.PbFieldType.PM, subBuilder: LocalisedObject.create)
    ..aOM<SurveyVersion>(3, 'current', subBuilder: SurveyVersion.create)
    ..pc<SurveyVersion>(4, 'history', $pb.PbFieldType.PM, subBuilder: SurveyVersion.create)
    ..pc<LocalisedObject>(5, 'description', $pb.PbFieldType.PM, subBuilder: LocalisedObject.create)
    ..pc<$7.Expression>(6, 'prefillRules', $pb.PbFieldType.PM, subBuilder: $7.Expression.create)
    ..aOM<SurveyContextDef>(7, 'contextRules', subBuilder: SurveyContextDef.create)
    ..aOM<MaxItemsPerPage>(8, 'maxItemsPerPage', subBuilder: MaxItemsPerPage.create)
    ..hasRequiredFields = false
  ;

  Survey._() : super();
  factory Survey() => create();
  factory Survey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Survey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Survey clone() => Survey()..mergeFromMessage(this);
  Survey copyWith(void Function(Survey) updates) => super.copyWith((message) => updates(message as Survey));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Survey create() => Survey._();
  Survey createEmptyInstance() => create();
  static $pb.PbList<Survey> createRepeated() => $pb.PbList<Survey>();
  @$core.pragma('dart2js:noInline')
  static Survey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Survey>(create);
  static Survey _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<LocalisedObject> get name => $_getList(1);

  @$pb.TagNumber(3)
  SurveyVersion get current => $_getN(2);
  @$pb.TagNumber(3)
  set current(SurveyVersion v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCurrent() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrent() => clearField(3);
  @$pb.TagNumber(3)
  SurveyVersion ensureCurrent() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<SurveyVersion> get history => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<LocalisedObject> get description => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$7.Expression> get prefillRules => $_getList(5);

  @$pb.TagNumber(7)
  SurveyContextDef get contextRules => $_getN(6);
  @$pb.TagNumber(7)
  set contextRules(SurveyContextDef v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasContextRules() => $_has(6);
  @$pb.TagNumber(7)
  void clearContextRules() => clearField(7);
  @$pb.TagNumber(7)
  SurveyContextDef ensureContextRules() => $_ensure(6);

  @$pb.TagNumber(8)
  MaxItemsPerPage get maxItemsPerPage => $_getN(7);
  @$pb.TagNumber(8)
  set maxItemsPerPage(MaxItemsPerPage v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasMaxItemsPerPage() => $_has(7);
  @$pb.TagNumber(8)
  void clearMaxItemsPerPage() => clearField(8);
  @$pb.TagNumber(8)
  MaxItemsPerPage ensureMaxItemsPerPage() => $_ensure(7);
}

class MaxItemsPerPage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MaxItemsPerPage', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..a<$core.int>(1, 'large', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'small', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  MaxItemsPerPage._() : super();
  factory MaxItemsPerPage() => create();
  factory MaxItemsPerPage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MaxItemsPerPage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MaxItemsPerPage clone() => MaxItemsPerPage()..mergeFromMessage(this);
  MaxItemsPerPage copyWith(void Function(MaxItemsPerPage) updates) => super.copyWith((message) => updates(message as MaxItemsPerPage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MaxItemsPerPage create() => MaxItemsPerPage._();
  MaxItemsPerPage createEmptyInstance() => create();
  static $pb.PbList<MaxItemsPerPage> createRepeated() => $pb.PbList<MaxItemsPerPage>();
  @$core.pragma('dart2js:noInline')
  static MaxItemsPerPage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MaxItemsPerPage>(create);
  static MaxItemsPerPage _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get large => $_getIZ(0);
  @$pb.TagNumber(1)
  set large($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLarge() => $_has(0);
  @$pb.TagNumber(1)
  void clearLarge() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get small => $_getIZ(1);
  @$pb.TagNumber(2)
  set small($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSmall() => $_has(1);
  @$pb.TagNumber(2)
  void clearSmall() => clearField(2);
}

class SurveyVersion extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SurveyVersion', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aInt64(1, 'published')
    ..aInt64(2, 'unpublished')
    ..aOM<SurveyItem>(3, 'surveyDefinition', subBuilder: SurveyItem.create)
    ..hasRequiredFields = false
  ;

  SurveyVersion._() : super();
  factory SurveyVersion() => create();
  factory SurveyVersion.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SurveyVersion.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SurveyVersion clone() => SurveyVersion()..mergeFromMessage(this);
  SurveyVersion copyWith(void Function(SurveyVersion) updates) => super.copyWith((message) => updates(message as SurveyVersion));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SurveyVersion create() => SurveyVersion._();
  SurveyVersion createEmptyInstance() => create();
  static $pb.PbList<SurveyVersion> createRepeated() => $pb.PbList<SurveyVersion>();
  @$core.pragma('dart2js:noInline')
  static SurveyVersion getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SurveyVersion>(create);
  static SurveyVersion _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get published => $_getI64(0);
  @$pb.TagNumber(1)
  set published($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPublished() => $_has(0);
  @$pb.TagNumber(1)
  void clearPublished() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get unpublished => $_getI64(1);
  @$pb.TagNumber(2)
  set unpublished($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUnpublished() => $_has(1);
  @$pb.TagNumber(2)
  void clearUnpublished() => clearField(2);

  @$pb.TagNumber(3)
  SurveyItem get surveyDefinition => $_getN(2);
  @$pb.TagNumber(3)
  set surveyDefinition(SurveyItem v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSurveyDefinition() => $_has(2);
  @$pb.TagNumber(3)
  void clearSurveyDefinition() => clearField(3);
  @$pb.TagNumber(3)
  SurveyItem ensureSurveyDefinition() => $_ensure(2);
}

class SurveyItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SurveyItem', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'key')
    ..pPS(3, 'follows')
    ..aOM<$7.Expression>(4, 'condition', subBuilder: $7.Expression.create)
    ..a<$core.double>(5, 'priority', $pb.PbFieldType.OF)
    ..a<$core.int>(6, 'version', $pb.PbFieldType.O3)
    ..pPS(7, 'versionTags')
    ..pc<SurveyItem>(8, 'items', $pb.PbFieldType.PM, subBuilder: SurveyItem.create)
    ..aOM<$7.Expression>(9, 'selectionMethod', subBuilder: $7.Expression.create)
    ..aOS(10, 'type')
    ..aOM<ItemComponent>(11, 'components', subBuilder: ItemComponent.create)
    ..pc<Validation>(12, 'validations', $pb.PbFieldType.PM, subBuilder: Validation.create)
    ..hasRequiredFields = false
  ;

  SurveyItem._() : super();
  factory SurveyItem() => create();
  factory SurveyItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SurveyItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SurveyItem clone() => SurveyItem()..mergeFromMessage(this);
  SurveyItem copyWith(void Function(SurveyItem) updates) => super.copyWith((message) => updates(message as SurveyItem));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SurveyItem create() => SurveyItem._();
  SurveyItem createEmptyInstance() => create();
  static $pb.PbList<SurveyItem> createRepeated() => $pb.PbList<SurveyItem>();
  @$core.pragma('dart2js:noInline')
  static SurveyItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SurveyItem>(create);
  static SurveyItem _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get follows => $_getList(2);

  @$pb.TagNumber(4)
  $7.Expression get condition => $_getN(3);
  @$pb.TagNumber(4)
  set condition($7.Expression v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCondition() => $_has(3);
  @$pb.TagNumber(4)
  void clearCondition() => clearField(4);
  @$pb.TagNumber(4)
  $7.Expression ensureCondition() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.double get priority => $_getN(4);
  @$pb.TagNumber(5)
  set priority($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPriority() => $_has(4);
  @$pb.TagNumber(5)
  void clearPriority() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get version => $_getIZ(5);
  @$pb.TagNumber(6)
  set version($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasVersion() => $_has(5);
  @$pb.TagNumber(6)
  void clearVersion() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.String> get versionTags => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<SurveyItem> get items => $_getList(7);

  @$pb.TagNumber(9)
  $7.Expression get selectionMethod => $_getN(8);
  @$pb.TagNumber(9)
  set selectionMethod($7.Expression v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasSelectionMethod() => $_has(8);
  @$pb.TagNumber(9)
  void clearSelectionMethod() => clearField(9);
  @$pb.TagNumber(9)
  $7.Expression ensureSelectionMethod() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.String get type => $_getSZ(9);
  @$pb.TagNumber(10)
  set type($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasType() => $_has(9);
  @$pb.TagNumber(10)
  void clearType() => clearField(10);

  @$pb.TagNumber(11)
  ItemComponent get components => $_getN(10);
  @$pb.TagNumber(11)
  set components(ItemComponent v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasComponents() => $_has(10);
  @$pb.TagNumber(11)
  void clearComponents() => clearField(11);
  @$pb.TagNumber(11)
  ItemComponent ensureComponents() => $_ensure(10);

  @$pb.TagNumber(12)
  $core.List<Validation> get validations => $_getList(11);
}

class Validation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Validation', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOS(1, 'key')
    ..aOS(2, 'type')
    ..aOM<$7.Expression>(3, 'rule', subBuilder: $7.Expression.create)
    ..hasRequiredFields = false
  ;

  Validation._() : super();
  factory Validation() => create();
  factory Validation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Validation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Validation clone() => Validation()..mergeFromMessage(this);
  Validation copyWith(void Function(Validation) updates) => super.copyWith((message) => updates(message as Validation));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Validation create() => Validation._();
  Validation createEmptyInstance() => create();
  static $pb.PbList<Validation> createRepeated() => $pb.PbList<Validation>();
  @$core.pragma('dart2js:noInline')
  static Validation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Validation>(create);
  static Validation _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $7.Expression get rule => $_getN(2);
  @$pb.TagNumber(3)
  set rule($7.Expression v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRule() => $_has(2);
  @$pb.TagNumber(3)
  void clearRule() => clearField(3);
  @$pb.TagNumber(3)
  $7.Expression ensureRule() => $_ensure(2);
}

class ItemComponent_Style extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ItemComponent.Style', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOS(1, 'key')
    ..aOS(2, 'value')
    ..hasRequiredFields = false
  ;

  ItemComponent_Style._() : super();
  factory ItemComponent_Style() => create();
  factory ItemComponent_Style.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ItemComponent_Style.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ItemComponent_Style clone() => ItemComponent_Style()..mergeFromMessage(this);
  ItemComponent_Style copyWith(void Function(ItemComponent_Style) updates) => super.copyWith((message) => updates(message as ItemComponent_Style));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ItemComponent_Style create() => ItemComponent_Style._();
  ItemComponent_Style createEmptyInstance() => create();
  static $pb.PbList<ItemComponent_Style> createRepeated() => $pb.PbList<ItemComponent_Style>();
  @$core.pragma('dart2js:noInline')
  static ItemComponent_Style getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ItemComponent_Style>(create);
  static ItemComponent_Style _defaultInstance;

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
}

class ItemComponent_Properties extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ItemComponent.Properties', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOM<$7.ExpressionArg>(1, 'min', subBuilder: $7.ExpressionArg.create)
    ..aOM<$7.ExpressionArg>(2, 'max', subBuilder: $7.ExpressionArg.create)
    ..aOM<$7.ExpressionArg>(3, 'stepSize', protoName: 'stepSize', subBuilder: $7.ExpressionArg.create)
    ..aOM<$7.ExpressionArg>(4, 'dateInputMode', protoName: 'dateInputMode', subBuilder: $7.ExpressionArg.create)
    ..hasRequiredFields = false
  ;

  ItemComponent_Properties._() : super();
  factory ItemComponent_Properties() => create();
  factory ItemComponent_Properties.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ItemComponent_Properties.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ItemComponent_Properties clone() => ItemComponent_Properties()..mergeFromMessage(this);
  ItemComponent_Properties copyWith(void Function(ItemComponent_Properties) updates) => super.copyWith((message) => updates(message as ItemComponent_Properties));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ItemComponent_Properties create() => ItemComponent_Properties._();
  ItemComponent_Properties createEmptyInstance() => create();
  static $pb.PbList<ItemComponent_Properties> createRepeated() => $pb.PbList<ItemComponent_Properties>();
  @$core.pragma('dart2js:noInline')
  static ItemComponent_Properties getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ItemComponent_Properties>(create);
  static ItemComponent_Properties _defaultInstance;

  @$pb.TagNumber(1)
  $7.ExpressionArg get min => $_getN(0);
  @$pb.TagNumber(1)
  set min($7.ExpressionArg v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMin() => $_has(0);
  @$pb.TagNumber(1)
  void clearMin() => clearField(1);
  @$pb.TagNumber(1)
  $7.ExpressionArg ensureMin() => $_ensure(0);

  @$pb.TagNumber(2)
  $7.ExpressionArg get max => $_getN(1);
  @$pb.TagNumber(2)
  set max($7.ExpressionArg v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMax() => $_has(1);
  @$pb.TagNumber(2)
  void clearMax() => clearField(2);
  @$pb.TagNumber(2)
  $7.ExpressionArg ensureMax() => $_ensure(1);

  @$pb.TagNumber(3)
  $7.ExpressionArg get stepSize => $_getN(2);
  @$pb.TagNumber(3)
  set stepSize($7.ExpressionArg v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStepSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearStepSize() => clearField(3);
  @$pb.TagNumber(3)
  $7.ExpressionArg ensureStepSize() => $_ensure(2);

  @$pb.TagNumber(4)
  $7.ExpressionArg get dateInputMode => $_getN(3);
  @$pb.TagNumber(4)
  set dateInputMode($7.ExpressionArg v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasDateInputMode() => $_has(3);
  @$pb.TagNumber(4)
  void clearDateInputMode() => clearField(4);
  @$pb.TagNumber(4)
  $7.ExpressionArg ensureDateInputMode() => $_ensure(3);
}

class ItemComponent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ItemComponent', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOS(1, 'role')
    ..aOS(2, 'key')
    ..pc<LocalisedObject>(3, 'content', $pb.PbFieldType.PM, subBuilder: LocalisedObject.create)
    ..aOM<$7.Expression>(4, 'displayCondition', subBuilder: $7.Expression.create)
    ..aOM<$7.Expression>(5, 'disabled', subBuilder: $7.Expression.create)
    ..pc<ItemComponent>(6, 'items', $pb.PbFieldType.PM, subBuilder: ItemComponent.create)
    ..aOM<$7.Expression>(7, 'order', subBuilder: $7.Expression.create)
    ..aOS(8, 'dtype')
    ..pc<ItemComponent_Style>(9, 'style', $pb.PbFieldType.PM, subBuilder: ItemComponent_Style.create)
    ..pc<LocalisedObject>(10, 'description', $pb.PbFieldType.PM, subBuilder: LocalisedObject.create)
    ..aOM<ItemComponent_Properties>(11, 'properties', subBuilder: ItemComponent_Properties.create)
    ..hasRequiredFields = false
  ;

  ItemComponent._() : super();
  factory ItemComponent() => create();
  factory ItemComponent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ItemComponent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ItemComponent clone() => ItemComponent()..mergeFromMessage(this);
  ItemComponent copyWith(void Function(ItemComponent) updates) => super.copyWith((message) => updates(message as ItemComponent));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ItemComponent create() => ItemComponent._();
  ItemComponent createEmptyInstance() => create();
  static $pb.PbList<ItemComponent> createRepeated() => $pb.PbList<ItemComponent>();
  @$core.pragma('dart2js:noInline')
  static ItemComponent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ItemComponent>(create);
  static ItemComponent _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get role => $_getSZ(0);
  @$pb.TagNumber(1)
  set role($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRole() => $_has(0);
  @$pb.TagNumber(1)
  void clearRole() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<LocalisedObject> get content => $_getList(2);

  @$pb.TagNumber(4)
  $7.Expression get displayCondition => $_getN(3);
  @$pb.TagNumber(4)
  set displayCondition($7.Expression v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasDisplayCondition() => $_has(3);
  @$pb.TagNumber(4)
  void clearDisplayCondition() => clearField(4);
  @$pb.TagNumber(4)
  $7.Expression ensureDisplayCondition() => $_ensure(3);

  @$pb.TagNumber(5)
  $7.Expression get disabled => $_getN(4);
  @$pb.TagNumber(5)
  set disabled($7.Expression v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasDisabled() => $_has(4);
  @$pb.TagNumber(5)
  void clearDisabled() => clearField(5);
  @$pb.TagNumber(5)
  $7.Expression ensureDisabled() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<ItemComponent> get items => $_getList(5);

  @$pb.TagNumber(7)
  $7.Expression get order => $_getN(6);
  @$pb.TagNumber(7)
  set order($7.Expression v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasOrder() => $_has(6);
  @$pb.TagNumber(7)
  void clearOrder() => clearField(7);
  @$pb.TagNumber(7)
  $7.Expression ensureOrder() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.String get dtype => $_getSZ(7);
  @$pb.TagNumber(8)
  set dtype($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDtype() => $_has(7);
  @$pb.TagNumber(8)
  void clearDtype() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<ItemComponent_Style> get style => $_getList(8);

  @$pb.TagNumber(10)
  $core.List<LocalisedObject> get description => $_getList(9);

  @$pb.TagNumber(11)
  ItemComponent_Properties get properties => $_getN(10);
  @$pb.TagNumber(11)
  set properties(ItemComponent_Properties v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasProperties() => $_has(10);
  @$pb.TagNumber(11)
  void clearProperties() => clearField(11);
  @$pb.TagNumber(11)
  ItemComponent_Properties ensureProperties() => $_ensure(10);
}

class LocalisedObject extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LocalisedObject', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOS(1, 'code')
    ..pc<$7.ExpressionArg>(2, 'parts', $pb.PbFieldType.PM, subBuilder: $7.ExpressionArg.create)
    ..hasRequiredFields = false
  ;

  LocalisedObject._() : super();
  factory LocalisedObject() => create();
  factory LocalisedObject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocalisedObject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LocalisedObject clone() => LocalisedObject()..mergeFromMessage(this);
  LocalisedObject copyWith(void Function(LocalisedObject) updates) => super.copyWith((message) => updates(message as LocalisedObject));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocalisedObject create() => LocalisedObject._();
  LocalisedObject createEmptyInstance() => create();
  static $pb.PbList<LocalisedObject> createRepeated() => $pb.PbList<LocalisedObject>();
  @$core.pragma('dart2js:noInline')
  static LocalisedObject getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocalisedObject>(create);
  static LocalisedObject _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$7.ExpressionArg> get parts => $_getList(1);
}

