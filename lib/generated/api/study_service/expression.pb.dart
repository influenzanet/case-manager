///
//  Generated code. Do not modify.
//  source: study_service/expression.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Expression extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Expression', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ExpressionArg', package: const $pb.PackageName('influenzanet.study_service'), createEmptyInstance: create)
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

