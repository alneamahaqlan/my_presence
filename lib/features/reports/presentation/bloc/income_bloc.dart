import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/status.dart';
import '../../../root/data/models/category_model.dart';
import '../../data/models/income_edit_body.dart';
import '../../data/models/income_model.dart';
import '../../data/repositories/income_repository.dart';

part 'income_bloc.freezed.dart';
part 'income_event.dart';
part 'income_state.dart';

class IncomeBloc extends Bloc<IncomeEvent, IncomeState> {
  final IncomeRepository _incomeRepository;

  IncomeBloc(this._incomeRepository) : super(IncomeState.initial()) {
    on<CategorySelected>(_onCategorySelected);
    on<SaveIncome>(_onSaveIncome);
    on<FetchIncomes>(_onFetchIncomes);
    on<DeleteIncome>(_onDeleteIncome);
    on<EditIncome>(_onEditIncome);
  }

  void _onCategorySelected(CategorySelected event, Emitter<IncomeState> emit) {
    emit(state.copyWith(selectedCategory: event.category));
  }

  Future<void> _onSaveIncome(
    SaveIncome event,
    Emitter<IncomeState> emit,
  ) async {
    emit(state.copyWith(status: const Status.loading()));

    final income = event.income;
    final result = await _incomeRepository.createIncome(income);

    result.when(
      success: (incomeId) {
        emit(
          state.copyWith(
            status: const Status.success(),
            // incomes: [...state.incomes, income],
          ),
        );
      },
      failure: (error) {
        emit(
          state.copyWith(
            status: const Status.failed(),
            errorMessage: error.message,
          ),
        );
      },
    );
  }

  void _onFetchIncomes(FetchIncomes event, Emitter<IncomeState> emit) async {
    emit(state.copyWith(status: const Status.loading()));
    final result = await _incomeRepository.getUserStatistics();

    result.when(
      success: (stats) {
        emit(state.copyWith(status: const Status.success(), stats: stats));
      },
      failure: (error) {
        emit(
          state.copyWith(
            status: const Status.failed(),
            errorMessage: error.message,
          ),
        );
      },
    );
  }

  void _onDeleteIncome(DeleteIncome event, Emitter<IncomeState> emit) async {
    emit(state.copyWith(status: const Status.loading()));
    final result = await _incomeRepository.deleteIncome(event.incomeId);

    result.when(
      success: (_) {
        // Reload incomes after deletion
        // add(const IncomeEvent.fetchIncomes());
        emit(state.copyWith(status: const Status.success()));
      },
      failure: (error) {
        emit(
          state.copyWith(
            status: const Status.failed(),
            errorMessage: 'Failed to delete income. Please try again.',
          ),
        );
      },
    );
  }

  void _onEditIncome(EditIncome event, Emitter<IncomeState> emit) async {
    emit(state.copyWith(status: const Status.loading()));
    final result = await _incomeRepository.updateIncome(
      income: event.incomeEditBody,
      documentId: event.incomeId,
    );

    result.when(
      success: (_) {
        // Reload incomes after editing
        // add(const IncomeEvent.fetchIncomes());
        emit(state.copyWith(status: const Status.success()));
      },
      failure: (error) {
        emit(
          state.copyWith(
            status: const Status.failed(),
            errorMessage: 'Failed to edit income. Please try again.',
          ),
        );
      },
    );
  }
}
