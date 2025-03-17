// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationModelImpl(
  id: json['id'],
  title: json['title'] as String,
  message: json['message'] as String,
  date: const TimestampConverter().fromJson(json['date']),
  type: json['type'] as String,
  createdAt: const TimestampConverter().fromJson(json['createdAt']),
  updatedAt: const TimestampConverter().fromJson(json['updatedAt']),
);

Map<String, dynamic> _$$NotificationModelImplToJson(
  _$NotificationModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'message': instance.message,
  'date': const TimestampConverter().toJson(instance.date),
  'type': instance.type,
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
