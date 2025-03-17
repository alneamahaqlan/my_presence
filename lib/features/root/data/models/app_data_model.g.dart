// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppDataImpl _$$AppDataImplFromJson(Map<String, dynamic> json) =>
    _$AppDataImpl(
      categories:
          (json['categories'] as List<dynamic>)
              .map((e) => Category.fromJson(e as Map<String, dynamic>))
              .toList(),
      transactions:
          (json['transactions'] as List<dynamic>)
              .map((e) => TransactionModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      items:
          (json['items'] as List<dynamic>)
              .map((e) => Item.fromJson(e as Map<String, dynamic>))
              .toList(),
      currencies:
          (json['currencies'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$$AppDataImplToJson(_$AppDataImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'transactions': instance.transactions,
      'items': instance.items,
      'currencies': instance.currencies,
    };
