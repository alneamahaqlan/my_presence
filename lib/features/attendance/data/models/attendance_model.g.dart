// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceImpl _$$AttendanceImplFromJson(Map<String, dynamic> json) =>
    _$AttendanceImpl(
      id: json['id'],
      byUser: UserModel.fromJson(json['byUser'] as Map<String, dynamic>),
      lecture: Lecture.fromJson(json['lecture'] as Map<String, dynamic>),
      arrivalDate: const TimestampConverter().fromJson(json['arrivalDate']),
      status: json['status'] as String,
      meet: Meet.fromJson(json['meet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AttendanceImplToJson(_$AttendanceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'byUser': instance.byUser,
      'lecture': instance.lecture,
      'arrivalDate': _$JsonConverterToJson<dynamic, Timestamp>(
        instance.arrivalDate,
        const TimestampConverter().toJson,
      ),
      'status': instance.status,
      'meet': instance.meet,
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
