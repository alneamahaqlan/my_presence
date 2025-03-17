// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceModelImpl _$$AttendanceModelImplFromJson(
  Map<String, dynamic> json,
) => _$AttendanceModelImpl(
  id: json['id'],
  byUser: UserModel.fromJson(json['byUser'] as Map<String, dynamic>),
  arrivalDate: const TimestampConverter().fromJson(json['arrivalDate']),
  status: json['status'] as String,
);

Map<String, dynamic> _$$AttendanceModelImplToJson(
  _$AttendanceModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'byUser': instance.byUser,
  'arrivalDate': _$JsonConverterToJson<dynamic, Timestamp>(
    instance.arrivalDate,
    const TimestampConverter().toJson,
  ),
  'status': instance.status,
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
