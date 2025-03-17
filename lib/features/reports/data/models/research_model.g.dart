// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'research_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResearchImpl _$$ResearchImplFromJson(Map<String, dynamic> json) =>
    _$ResearchImpl(
      id: json['id'],
      name: json['name'] as String,
      description: json['comment'] as String?,
      link: json['link'] as String?,
      createdAt: const TimestampConverter().fromJson(json['createdAt']),
      updatedAt: const TimestampConverter().fromJson(json['updatedAt']),
    );

Map<String, dynamic> _$$ResearchImplToJson(_$ResearchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'comment': instance.description,
      'link': instance.link,
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
