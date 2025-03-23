// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetImpl _$$MeetImplFromJson(Map<String, dynamic> json) => _$MeetImpl(
  id: json['id'],
  startTime: const TimestampConverter().fromJson(json['startTime']),
  endTime: const TimestampConverter().fromJson(json['endTime']),
  status: json['status'] as String?,
  byUser:
      json['byUser'] == null
          ? null
          : UserModel.fromJson(json['byUser'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$MeetImplToJson(_$MeetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startTime': const TimestampConverter().toJson(instance.startTime),
      'endTime': const TimestampConverter().toJson(instance.endTime),
      'status': instance.status,
      'byUser': instance.byUser,
    };
