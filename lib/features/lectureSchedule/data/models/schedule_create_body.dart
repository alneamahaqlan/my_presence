import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/converters/timestamp_converter.dart';
import '../../../department/data/models/department_model.dart';

part 'schedule_create_body.g.dart';

@JsonSerializable()
class ScheduleCreateBody {
  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'level')
  final int level;

  @JsonKey(name: 'division')
  final String division;

  @JsonKey(name: 'department')
  final Department department;

  @TimestampConverter()
  @JsonKey(name: 'termStart')
  final DateTime termStart;

  @TimestampConverter()
  @JsonKey(name: 'termEnd')
  final DateTime termEnd;

  ScheduleCreateBody({
    required this.title,
    required this.level,
    required this.division,
    required this.department,
    required this.termStart,
    required this.termEnd,
  });

  factory ScheduleCreateBody.fromJson(Map<String, dynamic> json) =>
      _$ScheduleCreateBodyFromJson(json);

  Map<String, dynamic> toJson() => {
    'title': title,
    'level': level,
    'division': division,
    'department': department.toJson(),
    'termStart': termStart,
    'termEnd': termEnd,
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  };
}
