import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/converters/timestamp_converter.dart';
import '../../../../core/utils/enums/activity_status.dart';
import '../../../../core/utils/enums/role.dart';
import '../../../attendance/data/models/attendance_model.dart';
import '../../../lecture/data/models/lecture_model.dart';
import '../../../notifications/data/models/notification_model.dart';
import '../../../reports/data/models/evaluation_model.dart';
import '../../../reports/data/models/research_model.dart';
import '../../../subject/data/models/subject_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'id') dynamic id,
    required String email,
    required String name,
    required Role role,
    required ActivityStatus activityStatus,
    @JsonKey(name: 'isActive') @Default(true) bool isActive,
    @JsonKey(name: 'specialization') String? specialization,
    @JsonKey(name: 'academic_rank') String? academicRank,
    @JsonKey(name: 'fcmToken') String? fcmToken,
    @JsonKey(name: 'subjects') @Default([]) List<Subject> subjects,
    @JsonKey(name: 'evaluations') @Default([]) List<Evaluation> evaluations,
    @JsonKey(name: 'researches') @Default([]) List<Research> researches,
    @JsonKey(name: 'lectures') @Default([]) List<Lecture> lectures,
    @JsonKey(name: 'notifications')
    @Default([])
    List<NotificationModel> notifications,
    @JsonKey(name: 'attendances') @Default([]) List<Attendance> attendances,
    @TimestampConverter() @JsonKey(name: 'createdAt') Timestamp? createdAt,
    @TimestampConverter() @JsonKey(name: 'updatedAt') Timestamp? updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
