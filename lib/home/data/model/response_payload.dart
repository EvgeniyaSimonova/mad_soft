import 'package:json_annotation/json_annotation.dart';
import 'package:mad_soft/home/data/model/custom_object.dart';

part 'response_payload.g.dart';

@JsonSerializable()
class ResponsePayload {
  final List<CustomObject> payload;

  ResponsePayload({required this.payload});

  factory ResponsePayload.fromJson(Map<String, dynamic> json) => ResponsePayload.fromJson(json);

  Map<String, dynamic> toJson() => _$ResponsePayloadToJson(this);
}