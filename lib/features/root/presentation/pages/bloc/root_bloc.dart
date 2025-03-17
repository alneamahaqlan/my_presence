import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_presence/core/extensions/context_extensions.dart';

import '../../../../../core/routes/app_pages.dart';

part 'root_bloc.freezed.dart';
part 'root_event.dart';
part 'root_state.dart';

class RootBloc extends Bloc<RootEvent, RootState> {
  RootBloc() : super(const RootState()) {
    on<_ItemTapped>((event, emit) {
      _onItemTapped(event.index, event.context);
      emit(state.copyWith(currentIndex: event.index));
    });
  }

  String getRoute(int index) {
    switch (index) {
      case 0:
        return AppRoutes.home;
      case 1:
        return AppRoutes.members;
      case 2:
        return AppRoutes.reports;
      case 3:
        return AppRoutes.settings;
      default:
        return AppRoutes.home;
    }
  }



  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.go(AppRoutes.home);
        break;
      case 1:
        context.go(AppRoutes.members);
        break;
      case 2:
        context.go(AppRoutes.reports);
        break;
      case 3:
        context.go(AppRoutes.settings);
        break;
    }
  }
}
