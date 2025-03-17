import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../lectureSchedule/data/models/lecture_schedule.dart';

part 'department_model.freezed.dart';
part 'department_model.g.dart';

@freezed
class Department with _$Department {
  const factory Department({
    @JsonKey(name: 'id') dynamic id,
    @JsonKey(name: 'name') required String name,
    @Default([]) List<LectureSchedule> lecturesSchedule,
  }) = _Department;

  factory Department.fromJson(Map<String, dynamic> json) =>
      _$DepartmentFromJson(json);
}
