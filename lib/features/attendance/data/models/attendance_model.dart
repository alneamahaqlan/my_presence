import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/converters/timestamp_converter.dart';
import '../../../auth/data/models/user_model.dart';
import '../../../lecture/data/models/lecture_model.dart';

part 'attendance_model.freezed.dart';
part 'attendance_model.g.dart';

@freezed
class Attendance with _$Attendance {
  factory Attendance({
    @JsonKey(name: 'id') dynamic id,

    @JsonKey(name: 'byUser') required UserModel byUser,
     @JsonKey(name: 'lecture') required Lecture lecture,
    @TimestampConverter() @JsonKey(name: 'arrivalDate') Timestamp? arrivalDate,
    @JsonKey(name: 'status') required String status,
  }) = _Attendance;

  factory Attendance.fromJson(Map<String, dynamic> json) =>
      _$AttendanceFromJson(json);
}
