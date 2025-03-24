import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../faculty/data/models/faculty_model.dart';

part 'department_create_body.g.dart';

@JsonSerializable()
class DepartmentCreateBody {
  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'faculty')
  final Faculty faculty;

  const DepartmentCreateBody({required this.name, required this.faculty});

  factory DepartmentCreateBody.fromJson(Map<String, dynamic> json) =>
      _$DepartmentCreateBodyFromJson(json);

  Map<String, dynamic> toJson() => {
    'name': name,
    'faculty':{
      'id': faculty.id,
      'name': faculty.name,
      
    },

    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  };
}
