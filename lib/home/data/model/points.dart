import 'package:json_annotation/json_annotation.dart';

part 'points.g.dart';

@JsonSerializable()
class Points {
  final int x;
  final int y;
  final String status;

  Points({
    required this.x,
    required this.y,
    required this.status,
  });

  factory Points.fromJson(Map<String, dynamic> json) => _$PointsFromJson(json);

  Map<String, dynamic> toJson() => _$PointsToJson(this);
}
