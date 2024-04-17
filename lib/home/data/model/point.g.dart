// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Point _$PointFromJson(Map<String, dynamic> json) => Point(
      x: json['x'] as int,
      y: json['y'] as int,
      status: $enumDecode(_$PointStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$PointToJson(Point instance) => <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'status': _$PointStatusEnumMap[instance.status]!,
    };

const _$PointStatusEnumMap = {
  PointStatus.completed: 'completed',
  PointStatus.inCompleted: 'incompleted',
};
