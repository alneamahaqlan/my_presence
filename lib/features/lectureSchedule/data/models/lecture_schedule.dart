import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/converters/timestamp_converter.dart';
import 'lecture.dart';

part 'lecture_schedule.freezed.dart';
part 'lecture_schedule.g.dart';

@freezed
class LectureSchedule with _$LectureSchedule {
  const factory LectureSchedule({
    @JsonKey(name: 'id') dynamic id,
    @TimestampConverter()
    @JsonKey(name: 'termStart')
    required Timestamp termStart,

    @TimestampConverter() @JsonKey(name: 'termEnd') required Timestamp termEnd,
    @Default([]) @JsonKey(name: 'lectures') List<Lecture> lectures,
  }) = _LectureSchedule;

  factory LectureSchedule.fromJson(Map<String, dynamic> json) =>
      _$LectureScheduleFromJson(json);
}
