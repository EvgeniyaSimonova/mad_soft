import 'package:json_annotation/json_annotation.dart';
import 'package:mad_soft/home/data/model/plan_entity.dart';

part 'response_payload.g.dart';

@JsonSerializable()
class ResponsePayload {
  @JsonKey(name: 'payload')
  final List<PlanEntity> plans;

  ResponsePayload({required this.plans});

  factory ResponsePayload.fromJson(Map<String, dynamic> json) =>
      _$ResponsePayloadFromJson(json);

  Map<String, dynamic> toJson() => _$ResponsePayloadToJson(this);
}
