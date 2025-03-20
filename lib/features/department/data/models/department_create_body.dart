import 'package:freezed_annotation/freezed_annotation.dart';

part 'department_create_body.freezed.dart';
part 'department_create_body.g.dart';

@freezed
class DepartmentCreateBody with _$DepartmentCreateBody {
  const factory DepartmentCreateBody({
    @JsonKey(name: 'name')  required String name,
    @JsonKey(name: 'facultyId') required String facultyId,
  }) = _DepartmentCreateBody;

  factory DepartmentCreateBody.fromJson(Map<String, dynamic> json) =>
      _$DepartmentCreateBodyFromJson(json);
}