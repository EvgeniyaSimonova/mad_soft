import 'package:json_annotation/json_annotation.dart';

part 'point.g.dart';

enum PointStatus {
  @JsonValue('completed')
  completed,
  @JsonValue('incompleted')
  inCompleted,
}

@JsonSerializable()
class Point {
  final int x;
  final int y;
  final PointStatus status;

  Point({
    required this.x,
    required this.y,
    required this.status,
  });

  factory Point.fromJson(Map<String, dynamic> json) => _$PointFromJson(json);

  Map<String, dynamic> toJson() => _$PointToJson(this);

  @override
  String toString() {
    return 'Point(x: $x, y: $y, status: $status)';
  }
}
