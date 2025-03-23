// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_create_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScheduleCreateBody _$ScheduleCreateBodyFromJson(Map<String, dynamic> json) =>
    ScheduleCreateBody(
      title: json['title'] as String,
      level: (json['level'] as num).toInt(),
      division: json['division'] as String,
      department: Department.fromJson(
        json['department'] as Map<String, dynamic>,
      ),
      termStart: DateTime.parse(json['termStart'] as String),
      termEnd: DateTime.parse(json['termEnd'] as String),
    );

Map<String, dynamic> _$ScheduleCreateBodyToJson(ScheduleCreateBody instance) =>
    <String, dynamic>{
      'title': instance.title,
      'level': instance.level,
      'division': instance.division,
      'department': instance.department,
      'termStart': instance.termStart.toIso8601String(),
      'termEnd': instance.termEnd.toIso8601String(),
    };
