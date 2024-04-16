// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomObject _$CustomObjectFromJson(Map<String, dynamic> json) => CustomObject(
      title: json['title'] as String,
      remainingPoints: json['remaining_points'] as int,
      totalPointsCount: json['total_points_count'] as int,
      points: (json['points'] as List<dynamic>)
          .map((e) => Points.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CustomObjectToJson(CustomObject instance) =>
    <String, dynamic>{
      'title': instance.title,
      'remaining_points': instance.remainingPoints,
      'total_points_count': instance.totalPointsCount,
      'points': instance.points,
    };
