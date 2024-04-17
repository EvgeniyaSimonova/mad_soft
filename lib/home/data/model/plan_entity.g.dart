// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlanEntity _$PlanEntityFromJson(Map<String, dynamic> json) => PlanEntity(
      title: json['title'] as String,
      remainingPoints: json['remaining_points'] as int,
      totalPointsCount: json['total_points_count'] as int,
      points: (json['points'] as List<dynamic>)
          .map((e) => Point.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlanEntityToJson(PlanEntity instance) =>
    <String, dynamic>{
      'title': instance.title,
      'remaining_points': instance.remainingPoints,
      'total_points_count': instance.totalPointsCount,
      'points': instance.points,
    };
