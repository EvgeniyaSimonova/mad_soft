// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'points.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Points _$PointsFromJson(Map<String, dynamic> json) => Points(
      x: json['x'] as int,
      y: json['y'] as int,
      status: json['status'] as String,
    );

Map<String, dynamic> _$PointsToJson(Points instance) => <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'status': instance.status,
    };
