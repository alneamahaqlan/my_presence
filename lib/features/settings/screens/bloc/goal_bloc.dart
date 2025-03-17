import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'goal_event.dart';
part 'goal_state.dart';
part 'goal_bloc.freezed.dart';

class GoalBloc extends Bloc<GoalEvent, GoalState> {
  GoalBloc() : super(GoalState.initial()) {
    on<_NameChanged>((event, emit) => emit(state.copyWith(name: event.name)));
    on<_NoteChanged>((event, emit) => emit(state.copyWith(note: event.note)));
    on<_CategoryChanged>((event, emit) => emit(state.copyWith(category: event.category)));
    on<_CurrentAmountChanged>((event, emit) => emit(state.copyWith(currentAmount: event.amount)));
    on<_TargetAmountChanged>((event, emit) => emit(state.copyWith(targetAmount: event.amount)));
    on<_CurrencyChanged>((event, emit) => emit(state.copyWith(currency: event.currency)));
    on<_DateSelected>((event, emit) => emit(state.copyWith(dueDate: event.date)));

    on<_SaveGoal>((event, emit) async {
      emit(state.copyWith(isSaving: true));
      await Future.delayed(Duration(seconds: 2)); // Simulate saving
      emit(state.copyWith(isSaving: false));
    });
  }
}
