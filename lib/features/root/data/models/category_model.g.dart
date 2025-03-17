// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: (json['id'] as num).toInt(),
      name: Map<String, String>.from(json['name'] as Map),
      type: $enumDecode(_$CategoryTypeEnumMap, json['type']),
      color: json['color'] as String,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$CategoryTypeEnumMap[instance.type]!,
      'color': instance.color,
    };

const _$CategoryTypeEnumMap = {
  CategoryType.expense: 'expense',
  CategoryType.income: 'income',
  CategoryType.saving: 'saving',
};
