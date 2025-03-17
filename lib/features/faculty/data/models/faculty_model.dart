import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../department/data/models/department_model.dart';

part 'faculty_model.freezed.dart';
part 'faculty_model.g.dart';

@freezed
 class Faculty with _$Faculty {
  const factory Faculty({
   @JsonKey(name: 'id') dynamic id,
  @JsonKey(name: 'name')  required String name,
  @Default([]) List<Department> departments
  }) = _Faculty;

  factory Faculty.fromJson(Map<String, dynamic> json) =>
      _$FacultyFromJson(json);
}