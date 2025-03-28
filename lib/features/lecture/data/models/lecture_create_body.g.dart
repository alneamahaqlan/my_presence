// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecture_create_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LectureCreateBody _$LectureCreateBodyFromJson(Map<String, dynamic> json) =>
    LectureCreateBody(
      subject: Subject.fromJson(json['subject'] as Map<String, dynamic>),
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      schedule: Schedule.fromJson(json['schedule'] as Map<String, dynamic>),
      startTime: const TimestampConverter().fromJson(json['startTime']),
      endTime: const TimestampConverter().fromJson(json['endTime']),
      hall: json['hall'] as String,
      meetings:
          (json['meetings'] as List<dynamic>?)
              ?.map((e) => Meet.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: const TimestampConverter().fromJson(json['createdAt']),
      updatedAt: const TimestampConverter().fromJson(json['updatedAt']),
    );

Map<String, dynamic> _$LectureCreateBodyToJson(LectureCreateBody instance) =>
    <String, dynamic>{
      'subject': instance.subject,
      'user': instance.user,
      'schedule': instance.schedule,
      'startTime': const TimestampConverter().toJson(instance.startTime),
      'endTime': const TimestampConverter().toJson(instance.endTime),
      'hall': instance.hall,
      'meetings': instance.meetings,
      'createdAt': _$JsonConverterToJson<dynamic, Timestamp>(
        instance.createdAt,
        const TimestampConverter().toJson,
      ),
      'updatedAt': _$JsonConverterToJson<dynamic, Timestamp>(
        instance.updatedAt,
        const TimestampConverter().toJson,
      ),
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
