part of 'goal_bloc.dart';

@freezed
class GoalState with _$GoalState {
  const factory GoalState({
    required String name,
    required String note,
    required String category,
    required double currentAmount,
    required double targetAmount,
    required String currency,
    required DateTime dueDate,
    required bool isSaving,
  }) = _GoalState;

  factory GoalState.initial() => GoalState(
        name: '',
        note: '',
        category: '',
        currentAmount: 0.0,
        targetAmount: 0.0,
        currency: 'USD',
        dueDate: DateTime.now(),
        isSaving: false,
      );
}