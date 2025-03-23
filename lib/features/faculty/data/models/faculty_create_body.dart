import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'faculty_create_body.g.dart';

@JsonSerializable()
class FacultyCreateBody {
  @JsonKey(name: 'name')
  final String name;

  const FacultyCreateBody({required this.name});

  factory FacultyCreateBody.fromJson(Map<String, dynamic> json) =>
      _$FacultyCreateBodyFromJson(json);

  Map<String, dynamic> toJson() => {
    'name': name,
    'departments': [],
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  };
}
