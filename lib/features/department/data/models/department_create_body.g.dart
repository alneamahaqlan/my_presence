// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_create_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepartmentCreateBody _$DepartmentCreateBodyFromJson(
  Map<String, dynamic> json,
) => DepartmentCreateBody(
  name: json['name'] as String,
  faculty: Faculty.fromJson(json['faculty'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DepartmentCreateBodyToJson(
  DepartmentCreateBody instance,
) => <String, dynamic>{'name': instance.name, 'faculty': instance.faculty};
