// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionModelImpl _$$TransactionModelImplFromJson(
  Map<String, dynamic> json,
) => _$TransactionModelImpl(
  title: json['title'] as String,
  amount: json['amount'] as String,
  date: json['date'] as String,
  time: json['time'] as String,
  isIncome: json['isIncome'] as bool,
);

Map<String, dynamic> _$$TransactionModelImplToJson(
  _$TransactionModelImpl instance,
) => <String, dynamic>{
  'title': instance.title,
  'amount': instance.amount,
  'date': instance.date,
  'time': instance.time,
  'isIncome': instance.isIncome,
};
