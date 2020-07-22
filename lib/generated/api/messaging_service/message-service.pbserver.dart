///
//  Generated code. Do not modify.
//  source: messaging_service/message-service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import '../google/protobuf/empty.pb.dart' as $0;
import 'message-service.pb.dart' as $3;
import 'message-service.pbjson.dart';

export 'message-service.pb.dart';

abstract class MessagingServiceApiServiceBase extends $pb.GeneratedService {
  $async.Future<$3.ServiceStatus> status($pb.ServerContext ctx, $0.Empty request);
  $async.Future<$3.ServiceStatus> sendInstantEmail($pb.ServerContext ctx, $3.SendEmailReq request);
  $async.Future<$3.ServiceStatus> sendMessageToAllUsers($pb.ServerContext ctx, $3.SendMessageToAllUsersReq request);
  $async.Future<$3.ServiceStatus> sendMessageToStudyParticipants($pb.ServerContext ctx, $3.SendMessageToStudyParticipantsReq request);
  $async.Future<$3.AutoMessages> getAutoMessages($pb.ServerContext ctx, $3.GetAutoMessagesReq request);
  $async.Future<$3.AutoMessage> saveAutoMessage($pb.ServerContext ctx, $3.SaveAutoMessageReq request);
  $async.Future<$3.ServiceStatus> deleteAutoMessage($pb.ServerContext ctx, $3.DeleteAutoMessageReq request);
  $async.Future<$3.EmailTemplates> getEmailTemplates($pb.ServerContext ctx, $3.GetEmailTemplatesReq request);
  $async.Future<$3.EmailTemplate> saveEmailTemplate($pb.ServerContext ctx, $3.SaveEmailTemplateReq request);
  $async.Future<$3.ServiceStatus> deleteEmailTemplate($pb.ServerContext ctx, $3.DeleteEmailTemplateReq request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'Status': return $0.Empty();
      case 'SendInstantEmail': return $3.SendEmailReq();
      case 'SendMessageToAllUsers': return $3.SendMessageToAllUsersReq();
      case 'SendMessageToStudyParticipants': return $3.SendMessageToStudyParticipantsReq();
      case 'GetAutoMessages': return $3.GetAutoMessagesReq();
      case 'SaveAutoMessage': return $3.SaveAutoMessageReq();
      case 'DeleteAutoMessage': return $3.DeleteAutoMessageReq();
      case 'GetEmailTemplates': return $3.GetEmailTemplatesReq();
      case 'SaveEmailTemplate': return $3.SaveEmailTemplateReq();
      case 'DeleteEmailTemplate': return $3.DeleteEmailTemplateReq();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'Status': return this.status(ctx, request);
      case 'SendInstantEmail': return this.sendInstantEmail(ctx, request);
      case 'SendMessageToAllUsers': return this.sendMessageToAllUsers(ctx, request);
      case 'SendMessageToStudyParticipants': return this.sendMessageToStudyParticipants(ctx, request);
      case 'GetAutoMessages': return this.getAutoMessages(ctx, request);
      case 'SaveAutoMessage': return this.saveAutoMessage(ctx, request);
      case 'DeleteAutoMessage': return this.deleteAutoMessage(ctx, request);
      case 'GetEmailTemplates': return this.getEmailTemplates(ctx, request);
      case 'SaveEmailTemplate': return this.saveEmailTemplate(ctx, request);
      case 'DeleteEmailTemplate': return this.deleteEmailTemplate(ctx, request);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => MessagingServiceApiServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => MessagingServiceApiServiceBase$messageJson;
}

