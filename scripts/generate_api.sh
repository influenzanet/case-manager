#!/bin/zsh
protoc -Iproto/api --dart_out=lib/generated/api proto/api/email_client_service/*.proto proto/api/messaging_service/*.proto proto/api/shared/*.proto proto/api/user_management/*.proto proto/api/study_service/*.proto
protoc -I$PROTO_DIR --dart_out=lib/generated/api $PROTO_DIR/google/protobuf/empty.proto