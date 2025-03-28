import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/status.dart';
import '../../data/models/department_create_body.dart';
import '../../data/models/department_model.dart';
import '../../data/repositories/department_repository.dart';

part 'department_bloc.freezed.dart';
part 'department_event.dart';
part 'department_state.dart';

class DepartmentBloc extends Bloc<DepartmentEvent, DepartmentState> {
  final DepartmentRepository repository;

  DepartmentBloc(this.repository) : super(DepartmentState.initial()) {
    on<FetchDepartments>(_onFetchDepartments);
    on<AddDepartment>(_onAddDepartment);
    on<UpdateDepartment>(_onUpdateDepartment);

    add(const FetchDepartments());
  }

  Future<void> _onFetchDepartments(
    FetchDepartments event,
    Emitter<DepartmentState> emit,
  ) async {
    emit(state.copyWith(status: const Status.loading()));

    final result = await repository.getAllDepartments();

    result.when(
      success: (departments) {
        emit(
          state.copyWith(
            status: const Status.success(),
            departments: departments,
          ),
        );
      },
      failure: (error) {
        emit(
          state.copyWith(
            status: const Status.failed(),
            message: error.toString(),
          ),
        );
      },
    );
  }

  Future<void> _onAddDepartment(
    AddDepartment event,
    Emitter<DepartmentState> emit,
  ) async {
    emit(state.copyWith(createStatus: const Status.loading()));
    final result = await repository.createDepartment(
      facultyId: event.facultyId,
      departmentCreateBody: event.departmentCreateBody,
    );
    result.when(
      success: (id) {
        emit(state.copyWith(createStatus: const Status.success()));
        // Refresh the list of departments
        add(const FetchDepartments());
      },
      failure: (error) {
        emit(
          state.copyWith(
            createStatus: const Status.failed(),
            message: error.toString(),
          ),
        );
      },
    );
  }

  Future<void> _onUpdateDepartment(
    UpdateDepartment event,
    Emitter<DepartmentState> emit,
  ) async {
    final result = await repository.updateDepartment(event.department);
    result.when(
      success: (_) {
        // Refresh the list of departments
        add(const FetchDepartments());
      },
      failure: (error) {
        emit(
          state.copyWith(
            status: const Status.failed(),
            message: error.toString(),
          ),
        );
      },
    );
  }
}
