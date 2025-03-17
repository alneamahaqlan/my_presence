import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/converters/timestamp_converter.dart';
import '../../../root/data/models/category_model.dart';

part 'income_model.freezed.dart';
part 'income_model.g.dart';



@freezed
class Income with _$Income {
  const factory Income({
        @JsonKey(name: 'id') dynamic id,
  

    @TimestampConverter()
    @JsonKey(name: 'date')
    required Timestamp date,

     @JsonKey(name: "name") required String name,
    @JsonKey(name: "amount") required double amount,
    @JsonKey(name: "currency") required String currency,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "category")  Category? category,
    @TimestampConverter()
    @JsonKey(name: 'createdAt')
     Timestamp? createdAt,

    @TimestampConverter()
    @JsonKey(name: 'updatedAt')
     Timestamp? updatedAt,
  }) = _Income;

  factory Income.fromJson(Map<String, dynamic> json) => _$IncomeFromJson(json);

  factory Income.initial() => Income(
      
        date: Timestamp.now(),
        name: '',
        amount: 0.0,
        currency: '',
        description: null,
        category: Category(
          id: 0,
             name: {'en': 'Default', 'ar': 'افتراضي'},
          type: CategoryType.expense,
          color: '#FFFFFF',
        ),
        createdAt: Timestamp.now(),
        updatedAt: Timestamp.now(),
      );
}
