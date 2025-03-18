import 'package:freezed_annotation/freezed_annotation.dart';

part 'department_create_body.freezed.dart';
part 'department_create_body.g.dart';

@freezed
class DepartmentCreateBody with _$DepartmentCreateBody {
  const factory DepartmentCreateBody({
    required String name,
  }) = _DepartmentCreateBody;

  factory DepartmentCreateBody.fromJson(Map<String, dynamic> json) =>
      _$DepartmentCreateBodyFromJson(json);
}