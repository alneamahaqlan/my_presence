import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class ColorConverter implements JsonConverter<Color, String> {
  const ColorConverter();

  @override
  Color fromJson(String json) {
    // Remove the '#' prefix if it exists
    String hexColor = json.replaceFirst('#', '');
    // Parse the hexadecimal string to an integer
    int colorInt = int.parse(hexColor, radix: 16);
    // Create a fully opaque color using Color.fromARGB
    return Color.fromARGB(255, (colorInt >> 16) & 0xFF, (colorInt >> 8) & 0xFF, colorInt & 0xFF);
  }

  @override
  String toJson(Color color) {
    // Convert the color to a hexadecimal string using toARGB32
    return '#${color.toARGB32().toRadixString(16).padLeft(8, '0')}';
  }
}