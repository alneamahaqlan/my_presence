import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/converters/timestamp_converter.dart';
import 'lecture_model.dart';

part 'schedule_model.freezed.dart';
part 'schedule_model.g.dart';

@freezed
class Schedule with _$Schedule {
  const factory Schedule({
    @JsonKey(name: 'id') dynamic id,
    @TimestampConverter()
    @JsonKey(name: 'termStart')
    required Timestamp termStart,
    @TimestampConverter() @JsonKey(name: 'termEnd') required Timestamp termEnd,
    @Default([]) @JsonKey(name: 'lectures') List<Lecture> lectures,
      @TimestampConverter() @JsonKey(name: 'createdAt') Timestamp? createdAt,
    @TimestampConverter() @JsonKey(name: 'updatedAt') Timestamp? updatedAt,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}
