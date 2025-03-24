import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/converters/timestamp_converter.dart';
import '../../../auth/data/models/user_model.dart';
import '../../../lecture/data/models/lecture_model.dart';
import '../../../lecture/data/models/meet_model.dart';

part 'attendance_create_body.g.dart';

@JsonSerializable()
class AttendanceCreateBody {
  @JsonKey(name: 'byUser')
  final UserModel byUser;
  @JsonKey(name: 'lecture')
  final Lecture lecture;
  @TimestampConverter()
  @JsonKey(name: 'arrivalDate')
  final Timestamp? arrivalDate;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'meet')
  final Meet meet;

  const AttendanceCreateBody({
    required this.byUser,
    required this.lecture,
     this.arrivalDate,
    required this.status,
    required this.meet,
  });

  factory AttendanceCreateBody.fromJson(Map<String, dynamic> json) =>
      _$AttendanceCreateBodyFromJson(json);

  Map<String, dynamic> toJson() => {
    if (arrivalDate != null) 'arrivalDate': arrivalDate??null,
    'status': status,
    'byUser': {
      'id': byUser.id,
      'name': byUser.name,
      'email': byUser.email,
      'role': byUser.role.name,
      'activityStatus': byUser.activityStatus.name,
      'specialization': byUser.specialization,
      'academicRank': byUser.academicRank,
    },
    'lecture': {
      'id': lecture.id,
      'startTime': lecture.startTime,
      'endTime': lecture.endTime,
      'hall': lecture.hall,
      'schedule': {
        'id': lecture.schedule.id,
        'termStart': lecture.schedule.termStart,
        'termEnd': lecture.schedule.termEnd,
        'title': lecture.schedule.title,
        'level': lecture.schedule.level,
        'division': lecture.schedule.division,
        'department': {
          'id': lecture.schedule.department.id,
          'name': lecture.schedule.department.name,
          'faculty': lecture.schedule.department.faculty?.toJson(),
          'schedules': lecture.schedule.department.schedules,
          'createdAt': lecture.schedule.department.createdAt,
          'updatedAt': lecture.schedule.department.updatedAt,
        },
        'createdAt': lecture.schedule.createdAt,
        'updatedAt': lecture.schedule.updatedAt,
      },
      'subject': lecture.subject.toJson(),
      'user': {
        'id': lecture.user.id,
        'name': lecture.user.name,
        'email': lecture.user.email,
        'role': lecture.user.role.name,
        'activityStatus': lecture.user.activityStatus.name,
        'specialization': lecture.user.specialization,
        'academicRank': lecture.user.academicRank,
      },
    },
    'meet': {
      'id': meet.id,
      'startTime': meet.startTime,
      'endTime': meet.endTime,
      'status': meet.status,
      'byUser': {
        'id': byUser.id,
        'name': byUser.name,
        'email': byUser.email,
        'role': byUser.role.name,
        'activityStatus': byUser.activityStatus.name,
        'specialization': byUser.specialization,
        'academicRank': byUser.academicRank,
      },
    },
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  };
}
