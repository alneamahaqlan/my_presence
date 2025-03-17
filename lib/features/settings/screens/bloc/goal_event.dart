part of 'goal_bloc.dart';

@freezed
class GoalEvent with _$GoalEvent {
   const factory GoalEvent.nameChanged(String name) = _NameChanged;
  const factory GoalEvent.noteChanged(String note) = _NoteChanged;
  const factory GoalEvent.categoryChanged(String category) = _CategoryChanged;
  const factory GoalEvent.currentAmountChanged(double amount) = _CurrentAmountChanged;
  const factory GoalEvent.targetAmountChanged(double amount) = _TargetAmountChanged;
  const factory GoalEvent.currencyChanged(String currency) = _CurrencyChanged;
  const factory GoalEvent.dateSelected(DateTime date) = _DateSelected;
  const factory GoalEvent.saveGoal() = _SaveGoal;
}