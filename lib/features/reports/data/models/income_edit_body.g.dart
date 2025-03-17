// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'income_edit_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IncomeEditBodyImpl _$$IncomeEditBodyImplFromJson(Map<String, dynamic> json) =>
    _$IncomeEditBodyImpl(
      category:
          json['category'] == null
              ? null
              : Category.fromJson(json['category'] as Map<String, dynamic>),
      date: const TimestampConverter().fromJson(json['date']),
      amount: (json['amount'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$IncomeEditBodyImplToJson(
  _$IncomeEditBodyImpl instance,
) => <String, dynamic>{
  'category': instance.category,
  'date': _$JsonConverterToJson<dynamic, Timestamp>(
    instance.date,
    const TimestampConverter().toJson,
  ),
  'amount': instance.amount,
  'currency': instance.currency,
  'name': instance.name,
  'description': instance.description,
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
