// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecture_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LectureScheduleImpl _$$LectureScheduleImplFromJson(
  Map<String, dynamic> json,
) => _$LectureScheduleImpl(
  id: json['id'],
  termStart: const TimestampConverter().fromJson(json['termStart']),
  termEnd: const TimestampConverter().fromJson(json['termEnd']),
  lectures:
      (json['lectures'] as List<dynamic>?)
          ?.map((e) => Lecture.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$LectureScheduleImplToJson(
  _$LectureScheduleImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'termStart': const TimestampConverter().toJson(instance.termStart),
  'termEnd': const TimestampConverter().toJson(instance.termEnd),
  'lectures': instance.lectures,
};
