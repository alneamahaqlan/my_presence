import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/converters/timestamp_converter.dart';
import '../../../department/data/models/department_model.dart';

part 'faculty_model.freezed.dart';
part 'faculty_model.g.dart';

@freezed
class Faculty with _$Faculty {
  const factory Faculty({
    @JsonKey(name: 'id') dynamic id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'departments') @Default([]) List<Department> departments,
    @TimestampConverter() @JsonKey(name: 'createdAt') Timestamp? createdAt,
    @TimestampConverter() @JsonKey(name: 'updatedAt') Timestamp? updatedAt,
  }) = _Faculty;

  factory Faculty.fromJson(Map<String, dynamic> json) =>
      _$FacultyFromJson(json);
}
