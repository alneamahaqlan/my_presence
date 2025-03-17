import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

enum CategoryType {
  expense,
  income,
  saving,
}

@freezed
class Category with _$Category {

  const factory Category({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required Map<String, String> name,
    @JsonKey(name: "type") required CategoryType type,
    @JsonKey(name: "color") required  String color,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

   
    

 
}

extension CategoryColor on Category {
  Color get colorValue {
    // Remove the '#' prefix if it exists
    String hexColor = color.replaceFirst('#', '');
    // Parse the hexadecimal string to an integer
    int colorInt = int.parse(hexColor, radix: 16);
    // Create a fully opaque color using Color.fromARGB
    return Color.fromARGB(255, (colorInt >> 16) & 0xFF, (colorInt >> 8) & 0xFF, colorInt & 0xFF);
  }
   String getName(String locale) => name[locale] ?? name['en']!;
}
