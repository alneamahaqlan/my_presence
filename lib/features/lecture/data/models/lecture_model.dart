import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/converters/timestamp_converter.dart';
import '../../../auth/data/models/user_model.dart';
import '../../../lectureSchedule/data/models/schedule_model.dart';
import '../../../subject/data/models/subject_model.dart';
import 'meet_model.dart';


part 'lecture_model.freezed.dart';
part 'lecture_model.g.dart';

@freezed
class Lecture with _$Lecture {
  const factory Lecture({
    @JsonKey(name: 'id') dynamic id,
      @JsonKey(name: 'subject') required Subject subject,

    @JsonKey(name: 'user') required UserModel user, 

     @JsonKey(name: 'schedule') required Schedule schedule,
    @TimestampConverter() @JsonKey(name: 'startTime') required Timestamp startTime,
    @TimestampConverter() @JsonKey(name: 'endTime') required Timestamp endTime,
    @JsonKey(name: 'hall') required String hall,
     @JsonKey(name: 'meetings') @Default([]) List<Meet> meetings,
        @TimestampConverter() @JsonKey(name: 'createdAt') Timestamp? createdAt,
    @TimestampConverter() @JsonKey(name: 'updatedAt') Timestamp? updatedAt,


  }) = _Lecture;

  factory Lecture.fromJson(Map<String, dynamic> json) => _$LectureFromJson(json);
}
