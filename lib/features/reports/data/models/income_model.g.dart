// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'income_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IncomeImpl _$$IncomeImplFromJson(Map<String, dynamic> json) => _$IncomeImpl(
  id: json['id'],
  date: const TimestampConverter().fromJson(json['date']),
  name: json['name'] as String,
  amount: (json['amount'] as num).toDouble(),
  currency: json['currency'] as String,
  description: json['description'] as String?,
  category:
      json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
  createdAt: const TimestampConverter().fromJson(json['createdAt']),
  updatedAt: const TimestampConverter().fromJson(json['updatedAt']),
);

Map<String, dynamic> _$$IncomeImplToJson(_$IncomeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': const TimestampConverter().toJson(instance.date),
      'name': instance.name,
      'amount': instance.amount,
      'currency': instance.currency,
      'description': instance.description,
      'category': instance.category,
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
