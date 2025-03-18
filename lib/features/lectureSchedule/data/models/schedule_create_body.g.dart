// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_create_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleCreateBodyImpl _$$ScheduleCreateBodyImplFromJson(
  Map<String, dynamic> json,
) => _$ScheduleCreateBodyImpl(
  termStart: const TimestampConverter().fromJson(json['termStart']),
  termEnd: const TimestampConverter().fromJson(json['termEnd']),
);

Map<String, dynamic> _$$ScheduleCreateBodyImplToJson(
  _$ScheduleCreateBodyImpl instance,
) => <String, dynamic>{
  'termStart': const TimestampConverter().toJson(instance.termStart),
  'termEnd': const TimestampConverter().toJson(instance.termEnd),
};
