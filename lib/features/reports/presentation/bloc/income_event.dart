part of 'income_bloc.dart';

@freezed
class IncomeEvent with _$IncomeEvent {
const factory IncomeEvent.fetchIncomes() = FetchIncomes;
  const factory IncomeEvent.categorySelected(Category category) = CategorySelected;
  const factory IncomeEvent.dateSelected(Timestamp date) = DateSelected;
  const factory IncomeEvent.currencyChanged(String currency) = CurrencyChanged;
  const factory IncomeEvent.saveIncome(Income income) = SaveIncome;
  const factory IncomeEvent.deleteIncome(String incomeId) = DeleteIncome; 
  const factory IncomeEvent.editIncome({required IncomeEditBody incomeEditBody, required String incomeId}) = EditIncome; 
}
