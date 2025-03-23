import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/status.dart';
import '../../data/models/faculty_create_body.dart';
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
          emit(
            state.copyWith(
              status: const Status.success(),
              faculties: faculties, // Update faculties in the state
            ),
          );
        },
        failure: (error) {
          emit(
            state.copyWith(
              status: const Status.failed(),
              message: error.toString(), // Set error message
            ),
          );
        },
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: const Status.failed(),
          message: e.toString(), // Handle unexpected errors
        ),
      );
    }
  }

  Future<void> _onAddFaculty(
    AddFaculty event,
    Emitter<FacultyState> emit,
  ) async {
    // Set the createStatus to loading
    emit(state.copyWith(createStatus: const Status.loading()));

    try {
      // Attempt to create the faculty
      final createResult = await repository.createFaculty(
        facultyCreateBody: event.facultyCreateBody,
      );

      // Await the result and handle success/failure
      await createResult.when(
        success: (id) async {
          // If creation is successful, fetch the updated list of faculties
          final fetchResult = await repository.getAllFaculties();

          // Await the fetch result and handle success/failure
          fetchResult.when(
            success: (faculties) {
              // Update the state with the new faculties and set createStatus to success
              emit(
                state.copyWith(
                  createStatus: const Status.success(),
                  faculties: faculties,
                ),
              );
            },
            failure: (error) {
              // If fetching faculties fails, set createStatus to failed and show the error
              emit(
                state.copyWith(
                  createStatus: const Status.failed(),
                  message: error.toString(),
                ),
              );
            },
          );
        },
        failure: (error) {
          // If faculty creation fails, set createStatus to failed and show the error
          emit(
            state.copyWith(
              createStatus: const Status.failed(),
              message: error.toString(),
            ),
          );
        },
      );
    } catch (e) {
      // Handle any unexpected errors
      emit(
        state.copyWith(
          createStatus: const Status.failed(),
          message: e.toString(),
        ),
      );
    }
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
