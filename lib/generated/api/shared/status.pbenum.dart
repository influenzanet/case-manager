///
//  Generated code. Do not modify.
//  source: shared/status.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ServiceStatus_StatusValue extends $pb.ProtobufEnum {
  static const ServiceStatus_StatusValue NORMAL = ServiceStatus_StatusValue._(0, 'NORMAL');
  static const ServiceStatus_StatusValue PROBLEM = ServiceStatus_StatusValue._(1, 'PROBLEM');

  static const $core.List<ServiceStatus_StatusValue> values = <ServiceStatus_StatusValue> [
    NORMAL,
    PROBLEM,
  ];

  static final $core.Map<$core.int, ServiceStatus_StatusValue> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ServiceStatus_StatusValue valueOf($core.int value) => _byValue[value];

  const ServiceStatus_StatusValue._($core.int v, $core.String n) : super(v, n);
}

