// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evaluation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EvaluationImpl _$$EvaluationImplFromJson(Map<String, dynamic> json) =>
    _$EvaluationImpl(
      id: json['id'],
      score: (json['score'] as num).toInt(),
      comment: json['comment'] as String?,
      rateType: json['rateType'] as String,
      createdAt: const TimestampConverter().fromJson(json['createdAt']),
      updatedAt: const TimestampConverter().fromJson(json['updatedAt']),
    );

Map<String, dynamic> _$$EvaluationImplToJson(_$EvaluationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'score': instance.score,
      'comment': instance.comment,
      'rateType': instance.rateType,
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
