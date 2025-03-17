// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faculty_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FacultyImpl _$$FacultyImplFromJson(Map<String, dynamic> json) =>
    _$FacultyImpl(
      id: json['id'],
      name: json['name'] as String,
      departments:
          (json['departments'] as List<dynamic>?)
              ?.map((e) => Department.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FacultyImplToJson(_$FacultyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'departments': instance.departments,
    };
