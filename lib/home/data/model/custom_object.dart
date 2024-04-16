import 'package:json_annotation/json_annotation.dart';
import 'package:mad_soft/home/data/model/points.dart';

part 'custom_object.g.dart';

@JsonSerializable()
class CustomObject {
  final String title;
  @JsonKey(name: 'remaining_points')
  final String remainingPoints;
  @JsonKey(name: 'total_points_count')
  final String totalPointsCount;
  final List<Points> points;

  CustomObject({
    required this.title,
    required this.remainingPoints,
    required this.totalPointsCount,
    required this.points,
  });

  factory CustomObject.fromJson(Map<String, dynamic> json) => _$CustomObjectFromJson(json);

  Map<String, dynamic> toJson() => _$CustomObjectToJson(this);
}
