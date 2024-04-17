// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponsePayload _$ResponsePayloadFromJson(Map<String, dynamic> json) =>
    ResponsePayload(
      plans: (json['payload'] as List<dynamic>)
          .map((e) => PlanEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponsePayloadToJson(ResponsePayload instance) =>
    <String, dynamic>{
      'payload': instance.plans,
    };
