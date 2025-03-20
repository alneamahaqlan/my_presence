import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/converters/timestamp_converter.dart';

part 'schedule_create_body.freezed.dart';
part 'schedule_create_body.g.dart';

@freezed
class ScheduleCreateBody with _$ScheduleCreateBody {
  const factory ScheduleCreateBody({
         @JsonKey(name: 'title') required String title, 
       @JsonKey(name: 'departmentId') required String departmentId,
    @TimestampConverter()
    @JsonKey(name: 'termStart')
    required Timestamp termStart,
    @TimestampConverter() @JsonKey(name: 'termEnd') required Timestamp termEnd,
  }) = _ScheduleCreateBody;

  factory ScheduleCreateBody.fromJson(Map<String, dynamic> json) =>
      _$ScheduleCreateBodyFromJson(json);
}
