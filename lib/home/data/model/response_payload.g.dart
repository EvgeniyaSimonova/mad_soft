// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponsePayload _$ResponsePayloadFromJson(Map<String, dynamic> json) =>
    ResponsePayload(
      payload: (json['payload'] as List<dynamic>)
          .map((e) => CustomObject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponsePayloadToJson(ResponsePayload instance) =>
    <String, dynamic>{
      'payload': instance.payload,
    };
