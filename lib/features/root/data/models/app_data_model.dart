import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/category_model.dart';
import '../models/item_model.dart';
import '../models/transaction_model.dart';

part 'app_data_model.freezed.dart';
part 'app_data_model.g.dart';

@freezed
class AppData with _$AppData {
  const factory AppData({
    required List<Category> categories,
    required List<TransactionModel> transactions,
    required List<Item> items,
    required List<String> currencies,
  }) = _AppData;

  // Optional: Add JSON serialization/deserialization
  factory AppData.fromJson(Map<String, dynamic> json) => _$AppDataFromJson(json);
}