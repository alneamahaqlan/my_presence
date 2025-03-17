// lib/core/theme/theme_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';

enum AppTheme { light, dark }

class ThemeBloc extends Cubit<AppTheme> {
  ThemeBloc() : super(AppTheme.light);

  void toggleTheme() {
    emit(state == AppTheme.light ? AppTheme.dark : AppTheme.light);
  }
}