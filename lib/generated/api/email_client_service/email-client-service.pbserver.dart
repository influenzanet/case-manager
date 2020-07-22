///
//  Generated code. Do not modify.
//  source: email_client_service/email-client-service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import '../google/protobuf/empty.pb.dart' as $0;
import 'email-client-service.pb.dart' as $1;
import 'email-client-service.pbjson.dart';

export 'email-client-service.pb.dart';

abstract class EmailClientServiceApiServiceBase extends $pb.GeneratedService {
  $async.Future<$1.ServiceStatus> status($pb.ServerContext ctx, $0.Empty request);
  $async.Future<$1.ServiceStatus> sendEmail($pb.ServerContext ctx, $1.SendEmailReq request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'Status': return $0.Empty();
      case 'SendEmail': return $1.SendEmailReq();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'Status': return this.status(ctx, request);
      case 'SendEmail': return this.sendEmail(ctx, request);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => EmailClientServiceApiServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => EmailClientServiceApiServiceBase$messageJson;
}

