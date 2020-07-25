///
//  Generated code. Do not modify.
//  source: study_service/study.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'expression.pb.dart' as $7;
import 'survey.pb.dart' as $8;

class Study_Props extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Study.Props', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..pc<$8.LocalisedObject>(1, 'name', $pb.PbFieldType.PM, subBuilder: $8.LocalisedObject.create)
    ..pc<$8.LocalisedObject>(2, 'description', $pb.PbFieldType.PM, subBuilder: $8.LocalisedObject.create)
    ..pc<Tag>(3, 'tags', $pb.PbFieldType.PM, subBuilder: Tag.create)
    ..aInt64(4, 'startDate')
    ..aInt64(5, 'endDate')
    ..aOB(6, 'systemDefaultStudy')
    ..hasRequiredFields = false
  ;

  Study_Props._() : super();
  factory Study_Props() => create();
  factory Study_Props.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Study_Props.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Study_Props clone() => Study_Props()..mergeFromMessage(this);
  Study_Props copyWith(void Function(Study_Props) updates) => super.copyWith((message) => updates(message as Study_Props));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Study_Props create() => Study_Props._();
  Study_Props createEmptyInstance() => create();
  static $pb.PbList<Study_Props> createRepeated() => $pb.PbList<Study_Props>();
  @$core.pragma('dart2js:noInline')
  static Study_Props getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Study_Props>(create);
  static Study_Props _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$8.LocalisedObject> get name => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$8.LocalisedObject> get description => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<Tag> get tags => $_getList(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get startDate => $_getI64(3);
  @$pb.TagNumber(4)
  set startDate($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartDate() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get endDate => $_getI64(4);
  @$pb.TagNumber(5)
  set endDate($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEndDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndDate() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get systemDefaultStudy => $_getBF(5);
  @$pb.TagNumber(6)
  set systemDefaultStudy($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSystemDefaultStudy() => $_has(5);
  @$pb.TagNumber(6)
  void clearSystemDefaultStudy() => clearField(6);
}

class Study_Member extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Study.Member', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOS(1, 'userId')
    ..aOS(2, 'role')
    ..aOS(3, 'username')
    ..hasRequiredFields = false
  ;

  Study_Member._() : super();
  factory Study_Member() => create();
  factory Study_Member.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Study_Member.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Study_Member clone() => Study_Member()..mergeFromMessage(this);
  Study_Member copyWith(void Function(Study_Member) updates) => super.copyWith((message) => updates(message as Study_Member));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Study_Member create() => Study_Member._();
  Study_Member createEmptyInstance() => create();
  static $pb.PbList<Study_Member> createRepeated() => $pb.PbList<Study_Member>();
  @$core.pragma('dart2js:noInline')
  static Study_Member getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Study_Member>(create);
  static Study_Member _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get role => $_getSZ(1);
  @$pb.TagNumber(2)
  set role($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRole() => $_has(1);
  @$pb.TagNumber(2)
  void clearRole() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get username => $_getSZ(2);
  @$pb.TagNumber(3)
  set username($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUsername() => $_has(2);
  @$pb.TagNumber(3)
  void clearUsername() => clearField(3);
}

class Study_Stats extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Study.Stats', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aInt64(1, 'participantCount')
    ..aInt64(2, 'responseCount')
    ..hasRequiredFields = false
  ;

  Study_Stats._() : super();
  factory Study_Stats() => create();
  factory Study_Stats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Study_Stats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Study_Stats clone() => Study_Stats()..mergeFromMessage(this);
  Study_Stats copyWith(void Function(Study_Stats) updates) => super.copyWith((message) => updates(message as Study_Stats));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Study_Stats create() => Study_Stats._();
  Study_Stats createEmptyInstance() => create();
  static $pb.PbList<Study_Stats> createRepeated() => $pb.PbList<Study_Stats>();
  @$core.pragma('dart2js:noInline')
  static Study_Stats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Study_Stats>(create);
  static Study_Stats _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get participantCount => $_getI64(0);
  @$pb.TagNumber(1)
  set participantCount($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasParticipantCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearParticipantCount() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get responseCount => $_getI64(1);
  @$pb.TagNumber(2)
  set responseCount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponseCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponseCount() => clearField(2);
}

class Study extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Study', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'key')
    ..aOS(3, 'secretKey')
    ..aOS(4, 'status')
    ..aOM<Study_Props>(5, 'props', subBuilder: Study_Props.create)
    ..pc<$7.Expression>(6, 'rules', $pb.PbFieldType.PM, subBuilder: $7.Expression.create)
    ..pc<Study_Member>(7, 'members', $pb.PbFieldType.PM, subBuilder: Study_Member.create)
    ..aOM<Study_Stats>(8, 'stats', subBuilder: Study_Stats.create)
    ..hasRequiredFields = false
  ;

  Study._() : super();
  factory Study() => create();
  factory Study.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Study.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Study clone() => Study()..mergeFromMessage(this);
  Study copyWith(void Function(Study) updates) => super.copyWith((message) => updates(message as Study));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Study create() => Study._();
  Study createEmptyInstance() => create();
  static $pb.PbList<Study> createRepeated() => $pb.PbList<Study>();
  @$core.pragma('dart2js:noInline')
  static Study getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Study>(create);
  static Study _defaultInstance;

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
  $core.String get secretKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set secretKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSecretKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearSecretKey() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get status => $_getSZ(3);
  @$pb.TagNumber(4)
  set status($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  Study_Props get props => $_getN(4);
  @$pb.TagNumber(5)
  set props(Study_Props v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasProps() => $_has(4);
  @$pb.TagNumber(5)
  void clearProps() => clearField(5);
  @$pb.TagNumber(5)
  Study_Props ensureProps() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<$7.Expression> get rules => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<Study_Member> get members => $_getList(6);

  @$pb.TagNumber(8)
  Study_Stats get stats => $_getN(7);
  @$pb.TagNumber(8)
  set stats(Study_Stats v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasStats() => $_has(7);
  @$pb.TagNumber(8)
  void clearStats() => clearField(8);
  @$pb.TagNumber(8)
  Study_Stats ensureStats() => $_ensure(7);
}

class Tag extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Tag', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..pc<$8.LocalisedObject>(1, 'label', $pb.PbFieldType.PM, subBuilder: $8.LocalisedObject.create)
    ..hasRequiredFields = false
  ;

  Tag._() : super();
  factory Tag() => create();
  factory Tag.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Tag.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Tag clone() => Tag()..mergeFromMessage(this);
  Tag copyWith(void Function(Tag) updates) => super.copyWith((message) => updates(message as Tag));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Tag create() => Tag._();
  Tag createEmptyInstance() => create();
  static $pb.PbList<Tag> createRepeated() => $pb.PbList<Tag>();
  @$core.pragma('dart2js:noInline')
  static Tag getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Tag>(create);
  static Tag _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$8.LocalisedObject> get label => $_getList(0);
}

class AssignedSurvey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AssignedSurvey', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..aOS(1, 'surveyKey')
    ..aInt64(2, 'validFrom')
    ..aInt64(3, 'validUntil')
    ..aOS(4, 'studyKey')
    ..aOS(5, 'category')
    ..hasRequiredFields = false
  ;

  AssignedSurvey._() : super();
  factory AssignedSurvey() => create();
  factory AssignedSurvey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssignedSurvey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AssignedSurvey clone() => AssignedSurvey()..mergeFromMessage(this);
  AssignedSurvey copyWith(void Function(AssignedSurvey) updates) => super.copyWith((message) => updates(message as AssignedSurvey));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssignedSurvey create() => AssignedSurvey._();
  AssignedSurvey createEmptyInstance() => create();
  static $pb.PbList<AssignedSurvey> createRepeated() => $pb.PbList<AssignedSurvey>();
  @$core.pragma('dart2js:noInline')
  static AssignedSurvey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssignedSurvey>(create);
  static AssignedSurvey _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get surveyKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set surveyKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSurveyKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearSurveyKey() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get validFrom => $_getI64(1);
  @$pb.TagNumber(2)
  set validFrom($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValidFrom() => $_has(1);
  @$pb.TagNumber(2)
  void clearValidFrom() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get validUntil => $_getI64(2);
  @$pb.TagNumber(3)
  set validUntil($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValidUntil() => $_has(2);
  @$pb.TagNumber(3)
  void clearValidUntil() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get studyKey => $_getSZ(3);
  @$pb.TagNumber(4)
  set studyKey($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStudyKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearStudyKey() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get category => $_getSZ(4);
  @$pb.TagNumber(5)
  set category($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCategory() => $_has(4);
  @$pb.TagNumber(5)
  void clearCategory() => clearField(5);
}

class AssignedSurveys extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AssignedSurveys', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
    ..pc<AssignedSurvey>(1, 'surveys', $pb.PbFieldType.PM, subBuilder: AssignedSurvey.create)
    ..hasRequiredFields = false
  ;

  AssignedSurveys._() : super();
  factory AssignedSurveys() => create();
  factory AssignedSurveys.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssignedSurveys.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AssignedSurveys clone() => AssignedSurveys()..mergeFromMessage(this);
  AssignedSurveys copyWith(void Function(AssignedSurveys) updates) => super.copyWith((message) => updates(message as AssignedSurveys));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssignedSurveys create() => AssignedSurveys._();
  AssignedSurveys createEmptyInstance() => create();
  static $pb.PbList<AssignedSurveys> createRepeated() => $pb.PbList<AssignedSurveys>();
  @$core.pragma('dart2js:noInline')
  static AssignedSurveys getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssignedSurveys>(create);
  static AssignedSurveys _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AssignedSurvey> get surveys => $_getList(0);
}

