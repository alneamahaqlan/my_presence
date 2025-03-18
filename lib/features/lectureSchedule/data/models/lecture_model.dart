import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/converters/timestamp_converter.dart';
import '../../../auth/data/models/user_model.dart';
import '../../../subject/data/models/subject_model.dart';


part 'lecture_model.freezed.dart';
part 'lecture_model.g.dart';

@freezed
class Lecture with _$Lecture {
  const factory Lecture({
    @JsonKey(name: 'id') dynamic id,
      @JsonKey(name: 'subject') required Subject subject,

    @JsonKey(name: 'user') required UserModel user,
    @TimestampConverter() @JsonKey(name: 'startTime') required Timestamp startTime,
    @TimestampConverter() @JsonKey(name: 'endTime') required Timestamp endTime,
    @JsonKey(name: 'hall') required String hall,


  }) = _Lecture;

  factory Lecture.fromJson(Map<String, dynamic> json) => _$LectureFromJson(json);
}
