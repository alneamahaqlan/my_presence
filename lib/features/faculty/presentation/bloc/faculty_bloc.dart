import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/api_result.dart';
import '../../../../core/models/status.dart';
import '../../data/models/faculty_model.dart';
import '../../data/repositories/faculty_repository.dart';

part 'faculty_bloc.freezed.dart';
part 'faculty_event.dart';
part 'faculty_state.dart';
class FacultyBloc extends Bloc<FacultyEvent, FacultyState> {
  final FacultyRepository repository;

  FacultyBloc(this.repository) : super(FacultyState.initial()) {
    on<FetchFaculties>(_onFetchFaculties);
    on<AddFaculty>(_onAddFaculty);
    on<UpdateFaculty>(_onUpdateFaculty);

    add(const FetchFaculties());
  }

Future<void> _onFetchFaculties(
  FetchFaculties event,
  Emitter<FacultyState> emit,
) async {
  emit(state.copyWith(status: const Status.loading())); // Set loading state

  try {
    final result = await repository.getAllFaculties(); // Await the result

    result.when(
      success: (faculties) {
        emit(state.copyWith(
          status: const Status.success(),
          faculties: faculties, // Update faculties in the state
        ));
      },
      failure: (error) {
        emit(state.copyWith(
          status: const Status.failed(),
          message: error.toString(), // Set error message
        ));
      },
    );
  } catch (e) {
    emit(state.copyWith(
      status: const Status.failed(),
      message: e.toString(), // Handle unexpected errors
    ));
  }
}

  Future<void> _onAddFaculty(
    AddFaculty event,
    Emitter<FacultyState> emit,
  ) async {
    final result = await repository.createFaculty(event.name);
    result.when(
      success: (id) {
        // Refresh the list of faculties
        add(const FetchFaculties());
      },
      failure: (error) {
        emit(state.copyWith(
          status: const Status.failed(),
          message: error.toString(),
        ));
      },
    );
  }

  Future<void> _onUpdateFaculty(
    UpdateFaculty event,
    Emitter<FacultyState> emit,
  ) async {
    // Implement update logic in the repository
    // For now, just refresh the list
    add(const FetchFaculties());
  }
}