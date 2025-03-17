part of 'income_bloc.dart';

@freezed
class IncomeState with _$IncomeState {
  const factory IncomeState({
    @Default(Status.initial()) Status status, 
     @Default({}) Map<String, dynamic> stats,
    Category?  selectedCategory,
    String? errorMessage,
  }) = _IncomeState;

  factory IncomeState.initial() => IncomeState(); 
  
}