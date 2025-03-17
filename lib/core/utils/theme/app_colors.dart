// lib/core/theme/app_colors.dart
import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // Private constructor to prevent instantiation

  // Light Theme Colors
  static const Color primary = Color(0xFF4CAF50); // Green
  static const Color primaryContainer = Color(0xFF388E3C); // Darker green
  static const Color secondary = Color(0xFF2196F3); // Blue
  static const Color secondaryContainer = Color(0xFF1976D2); // Darker blue
  static const Color background = Color(0xFFF5F5F5); // Light gray
  static const Color surface = Color(0xFFFFFFFF); // White
  static const Color error = Color(0xFFD32F2F); // Red
  static const Color onPrimary = Color(0xFFFFFFFF); // White
  static const Color onSecondary = Color(0xFFFFFFFF); // White
  static const Color onSurface = Color(0xFF000000); // Black
  static const Color onError = Color(0xFFFFFFFF); // White
  static const Color divider = Color(0xFFE0E0E0); // Light gray
  static const Color hint = Color(0xFF9E9E9E); // Gray

  // Dark Theme Colors
  static const Color darkPrimary = Color(0xFF81C784); // Light green
  static const Color darkPrimaryContainer = Color(0xFF4CAF50); // Green
  static const Color darkSecondary = Color(0xFF64B5F6); // Light blue
  static const Color darkSecondaryContainer = Color(0xFF2196F3); // Blue
  static const Color darkBackground = Color(0xFF121212); // Dark gray
  static const Color darkSurface = Color(0xFF1E1E1E); // Darker gray
  static const Color darkError = Color(0xFFEF5350); // Light red
  static const Color darkOnPrimary = Color(0xFF000000); // Black
  static const Color darkOnSecondary = Color(0xFF000000); // Black
  static const Color darkOnSurface = Color(0xFFFFFFFF); // White
  static const Color darkOnError = Color(0xFF000000); // Black
  static const Color darkDivider = Color(0xFF424242); // Dark gray
  static const Color darkHint = Color(0xFF757575); // Gray
}