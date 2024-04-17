import 'package:json_annotation/json_annotation.dart';
import 'package:mad_soft/home/data/model/point.dart';

part 'plan_entity.g.dart';

@JsonSerializable()
class PlanEntity {
  final String title;
  @JsonKey(name: 'remaining_points')
  final int remainingPoints;
  @JsonKey(name: 'total_points_count')
  final int totalPointsCount;
  final List<Point> points;

  PlanEntity({
    required this.title,
    required this.remainingPoints,
    required this.totalPointsCount,
    required this.points,
  });

  factory PlanEntity.fromJson(Map<String, dynamic> json) =>
      _$PlanEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PlanEntityToJson(this);
}
