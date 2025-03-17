// lib/core/theme/app_theme.dart
import 'package:flutter/material.dart';
import 'app_colors.dart'; // Import the AppColors class

final ThemeData appTheme = ThemeData(
  useMaterial3: true,
  // Light Theme
  colorScheme: const ColorScheme(
    primary: AppColors.primary,
    primaryContainer: AppColors.primaryContainer,
    secondary: AppColors.secondary,
    secondaryContainer: AppColors.secondaryContainer,
    surface: AppColors.surface,
    error: AppColors.error,
    onPrimary: AppColors.onPrimary,
    onSecondary: AppColors.onSecondary,
    onSurface: AppColors.onSurface,
    onError: AppColors.onError,
    brightness: Brightness.light,
  ),
  appBarTheme: const AppBarTheme(
    centerTitle: true
  )

);

final ThemeData darkAppTheme = ThemeData(
  useMaterial3: true,
  // Dark Theme
  colorScheme: const ColorScheme(
    primary: AppColors.darkPrimary,
    primaryContainer: AppColors.darkPrimaryContainer,
    secondary: AppColors.darkSecondary,
    secondaryContainer: AppColors.darkSecondaryContainer,
    surface: AppColors.darkSurface,
    error: AppColors.darkError,
    onPrimary: AppColors.darkOnPrimary,
    onSecondary: AppColors.darkOnSecondary,
    onSurface: AppColors.darkOnSurface,
    onError: AppColors.darkOnError,
    brightness: Brightness.dark,
  ),
    appBarTheme: const AppBarTheme(
    centerTitle: true
  )

);