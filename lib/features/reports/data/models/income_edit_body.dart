import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/converters/timestamp_converter.dart';
import '../../../root/data/models/category_model.dart';

part 'income_edit_body.freezed.dart';
part 'income_edit_body.g.dart'; 

@freezed
class IncomeEditBody with _$IncomeEditBody {
  const factory IncomeEditBody({
    
    @JsonKey(name: 'category') Category? category,
    @TimestampConverter() @JsonKey(name: 'date') Timestamp? date,
    @JsonKey(name: 'amount') double? amount,
    @JsonKey(name: 'currency') String? currency,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
  }) = _IncomeEditBody;
  factory IncomeEditBody.fromJson(Map<String, dynamic> json) =>
      _$IncomeEditBodyFromJson(json);
}