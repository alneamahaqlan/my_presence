import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:my_presence/dependency_injection.dart';

import '../../../../core/models/status.dart';
import '../../../attendance/data/models/attendance_model.dart';
import '../../../department/data/models/department_model.dart';
import '../../data/models/schedule_create_body.dart';
import '../../data/models/schedule_model.dart';
import '../../data/repositories/lecture_schedule_repository.dart';

part 'lecture_schedule_bloc.freezed.dart';
part 'lecture_schedule_event.dart';
part 'lecture_schedule_state.dart';

class LectureScheduleBloc
    extends Bloc<LectureScheduleEvent, LectureScheduleState> {
  final LectureScheduleRepository _repository;
  // Department? department;

  LectureScheduleBloc(this._repository)
    : super(LectureScheduleState.initial()) {
    on<FetchLectureSchedules>(_onFetchSchedules);
    on<AddLectureSchedule>(_onAddSchedule);
    on<UpdateLectureSchedule>(_onUpdateSchedule);
    on<DeleteLectureSchedule>(_onDeleteSchedule);
    on<UpdateAttendance>(_onUpdateAttendance);
    on<SetDepartment>(_onSetDepartment);

    final router = getIt<GoRouter>();
    final department = router.state.extra as Department;
    add(SetDepartment(department: department));
    add(FetchLectureSchedules(department: department));
  }
  Future<void> _onSetDepartment(
    SetDepartment event,
    Emitter<LectureScheduleState> emit,
  ) async {
    emit(state.copyWith(department: event.department));
  }

  Future<void> _onUpdateAttendance(
    UpdateAttendance event,
    Emitter<LectureScheduleState> emit,
  ) async {
    emit(state.copyWith(status: const Status.loading())); // Set loading state

    try {
      // Call the repository to update attendance
      await _repository.updateAttendance(
        scheduleId: event.scheduleId,
        lectureId: event.lectureId,
        attendance: event.attendance,
      );

      // Show success message
      emit(
        state.copyWith(
          status: const Status.success(),
          schedules: state.schedules, // Keep existing schedules
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: const Status.failed(),
          errorMessage: 'Failed to update attendance: $e',
        ),
      );
    }
  }

  Future<void> _onFetchSchedules(
    FetchLectureSchedules event,
    Emitter<LectureScheduleState> emit,
  ) async {
    emit(state.copyWith(status: const Status.loading())); // Set loading state

    final result = await _repository.fetchLectureSchedules(
      department: state.department!,
    );

    result.when(
      success: (schedules) {
        emit(
          state.copyWith(
            status: const Status.success(),
            schedules: schedules, // Update schedules
          ),
        );
      },
      failure: (error) {
        emit(
          state.copyWith(
            status: const Status.failed(),
            errorMessage: error.message, // Set error message
          ),
        );
      },
    );
  }

  Future<void> _onAddSchedule(
    AddLectureSchedule event,
    Emitter<LectureScheduleState> emit,
  ) async {
    emit(state.copyWith(status: const Status.loading())); // Set loading state

    final result = await _repository.createSchedule(
      department: event.department,
      scheduleCreateBody: event.scheduleCreateBody,
    );

    result.when(
      success: (_) {
        emit(state.copyWith(status: const Status.success()));
        add(
          FetchLectureSchedules(department: state.department!),
        ); // Refresh data
      },
      failure: (error) {
        emit(
          state.copyWith(
            status: const Status.failed(),
            errorMessage: error.message, // Set error message
          ),
        );
      },
    );
  }

  Future<void> _onUpdateSchedule(
    UpdateLectureSchedule event,
    Emitter<LectureScheduleState> emit,
  ) async {
    emit(state.copyWith(status: const Status.loading())); // Set loading state

    final result = await _repository.updateLectureSchedule(
      event.id,
      event.schedule,
    );

    result.when(
      success: (_) {
        emit(state.copyWith(status: const Status.success()));
        add(
          FetchLectureSchedules(department: state.department!),
        ); // Refresh data
      },
      failure: (error) {
        emit(
          state.copyWith(
            status: const Status.failed(),
            errorMessage: error.message, // Set error message
          ),
        );
      },
    );
  }

  Future<void> _onDeleteSchedule(
    DeleteLectureSchedule event,
    Emitter<LectureScheduleState> emit,
  ) async {
    emit(state.copyWith(status: const Status.loading())); // Set loading state

    final result = await _repository.deleteLectureSchedule(event.id);

    result.when(
      success: (_) {
        emit(state.copyWith(status: const Status.success()));
        add(
          FetchLectureSchedules(department: state.department!),
        ); // Refresh data
      },
      failure: (error) {
        emit(
          state.copyWith(
            status: const Status.failed(),
            errorMessage: error.message, // Set error message
          ),
        );
      },
    );
  }
}
