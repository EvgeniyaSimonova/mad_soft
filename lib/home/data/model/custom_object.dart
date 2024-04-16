import 'package:json_annotation/json_annotation.dart';
import 'package:mad_soft/home/data/model/points.dart';

part 'custom_object.g.dart';

@JsonSerializable()
class CustomObject {
  final String title;
  @JsonKey(name: 'remaining_points')
  final int remainingPoints;
  @JsonKey(name: 'total_points_count')
  final int totalPointsCount;
  final List<Points> points;

  CustomObject({
    required this.title,
    required this.remainingPoints,
    required this.totalPointsCount,
    required this.points,
  });

  factory CustomObject.fromJson(Map<String, dynamic> json) =>
      _$CustomObjectFromJson(json);

  Map<String, dynamic> toJson() => _$CustomObjectToJson(this);
}
