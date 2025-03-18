import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:my_presence/dependency_injection.dart';

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
  Department? department;

  LectureScheduleBloc(this._repository)
    : super(const LectureScheduleState.initial()) {
    on<FetchLectureSchedules>(_onFetchSchedules);
    on<AddLectureSchedule>(_onAddSchedule);
    on<UpdateLectureSchedule>(_onUpdateSchedule);
    on<DeleteLectureSchedule>(_onDeleteSchedule);
    on<UpdateAttendance>(_onUpdateAttendance);

    final router = getIt.call<GoRouter>;
    log(router.call().state.extra.toString());
    department = router.call().state.extra as Department;
    add(FetchLectureSchedules(departmentId: department!.id));
  }

  Future<void> _onUpdateAttendance(
    UpdateAttendance event,
    Emitter<LectureScheduleState> emit,
  ) async {
    try {
      // Call the repository to update attendance
      await _repository.updateAttendance(
        scheduleId: event.scheduleId,
        lectureId: event.lectureId,
        attendance: event.attendance,
      );

      // Show success message
      if (state is LectureScheduleLoaded) {
        // If the current state is LectureScheduleLoaded, use its schedules
        final currentState = state as LectureScheduleLoaded;
        emit(LectureScheduleState.loaded(currentState.schedules));
      } else {
        // If the current state is not LectureScheduleLoaded, emit a new state with an empty list
        emit(const LectureScheduleState.loaded([]));
      }
    } catch (e) {
      emit(LectureScheduleState.error('Failed to update attendance: $e'));
    }
  }

  Future<void> _onFetchSchedules(
    FetchLectureSchedules event,
    Emitter<LectureScheduleState> emit,
  ) async {
    emit(const LectureScheduleState.loading());
    final result = await _repository.fetchLectureSchedules(
      departmentId: event.departmentId,
    );
    result.when(
      success: (schedules) {
        emit(LectureScheduleState.loaded(schedules));
      },
      failure: (error) => emit(LectureScheduleState.error(error.message)),
    );
  }

  Future<void> _onAddSchedule(
    AddLectureSchedule event,
    Emitter<LectureScheduleState> emit,
  ) async {
    final result = await _repository.createSchedule(
      departmentId: event.departmentId,
      scheduleCreateBody: event.scheduleCreateBody,
    );
    result.when(
      success:
          (_) => add(
            FetchLectureSchedules(departmentId: department!.id),
          ), // Refresh data
      failure: (error) => emit(LectureScheduleState.error(error.message)),
    );
  }

  Future<void> _onUpdateSchedule(
    UpdateLectureSchedule event,
    Emitter<LectureScheduleState> emit,
  ) async {
    final result = await _repository.updateLectureSchedule(
      event.id,
      event.schedule,
    );
    result.when(
      success:
          (_) => add(
            FetchLectureSchedules(departmentId: department!.id),
          ), // Refresh data
      failure: (error) => emit(LectureScheduleState.error(error.message)),
    );
  }

  Future<void> _onDeleteSchedule(
    DeleteLectureSchedule event,
    Emitter<LectureScheduleState> emit,
  ) async {
    final result = await _repository.deleteLectureSchedule(event.id);
    result.when(
      success:
          (_) => add(
            FetchLectureSchedules(departmentId: department!.id),
          ), // Refresh data
      failure: (error) => emit(LectureScheduleState.error(error.message)),
    );
  }
}
