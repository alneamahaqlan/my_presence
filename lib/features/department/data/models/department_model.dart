import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/converters/timestamp_converter.dart';
import '../../../faculty/data/models/faculty_model.dart';
import '../../../lectureSchedule/data/models/schedule_model.dart';

part 'department_model.freezed.dart';
part 'department_model.g.dart';

@freezed
class Department with _$Department {
  const factory Department({
    @JsonKey(name: 'id') dynamic id,
    @JsonKey(name: 'name') required String name,
   @JsonKey(name: 'faculty') required Faculty faculty,
    @JsonKey(name: 'schedules') @Default([]) List<Schedule>? schedules,
    @TimestampConverter() @JsonKey(name: 'createdAt') Timestamp? createdAt,
    @TimestampConverter() @JsonKey(name: 'updatedAt') Timestamp? updatedAt,
  }) = _Department;

  factory Department.fromJson(Map<String, dynamic> json) =>
      _$DepartmentFromJson(json);
}
