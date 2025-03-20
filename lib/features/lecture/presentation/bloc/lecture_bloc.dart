import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/models/status.dart';
import '../../../../dependency_injection.dart';
import '../../../department/data/models/department_model.dart';
import '../../../lectureSchedule/data/models/schedule_model.dart';
import '../../data/models/lecture_model.dart';
import '../../data/repositories/lecture_repository.dart';

part 'lecture_bloc.freezed.dart';
part 'lecture_event.dart';
part 'lecture_state.dart';

class LectureBloc extends Bloc<LectureEvent, LectureState> {
  final LectureRepository _repository;

  LectureBloc(this._repository) : super(LectureState.initial()) {
    on<FetchLectures>(_onFetchLectures);
    on<AddLecture>(_onAddLecture);
    on<UpdateLecture>(_onUpdateLecture);
    on<DeleteLecture>(_onDeleteLecture);
    on<SetSchedule>(_onSetSchedule);

    // final router = getIt.call<GoRouter>();
    // final schedule =
    //     (router.state.extra as Map<String, dynamic>?)?['schedule'] as Schedule;
    // final department =
    //     (router.state.extra as Map<String, dynamic>?)?['department']
    //         as Department;

    // add(SetSchedule(schedule: schedule, department: department));
   
  }

  Future<void> _onSetSchedule(
    SetSchedule event,
    Emitter<LectureState> emit,
  ) async {
    emit(
      state.copyWith(schedule: event.schedule, department: event.department),
    );
  }

  Future<void> _onFetchLectures(
    FetchLectures event,
    Emitter<LectureState> emit,
  ) async {
    emit(state.copyWith(status: const Status.loading()));

    final result = await _repository.fetchLectures(
      department: state.department!,
      schedule: state.schedule!,
    );

    result.when(
      success: (lectures) {
        emit(
          state.copyWith(status: const Status.success(), lectures: lectures),
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

  Future<void> _onAddLecture(
    AddLecture event,
    Emitter<LectureState> emit,
  ) async {
    emit(state.copyWith(status: const Status.loading()));

    final result = await _repository.addLecture(
      lecture: event.lecture,
      department: state.department!,
      schedule: state.schedule!,
    );

    result.when(
      success: (_) {
        emit(state.copyWith(status: const Status.success()));
        add(const FetchLectures()); // Refresh the list
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

  Future<void> _onUpdateLecture(
    UpdateLecture event,
    Emitter<LectureState> emit,
  ) async {
    emit(state.copyWith(status: const Status.loading()));

    final result = await _repository.updateLecture(event.lecture);

    result.when(
      success: (_) {
        emit(state.copyWith(status: const Status.success()));
        add(const FetchLectures()); // Refresh the list
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

  Future<void> _onDeleteLecture(
    DeleteLecture event,
    Emitter<LectureState> emit,
  ) async {
    emit(state.copyWith(status: const Status.loading()));

    final result = await _repository.deleteLecture(event.lectureId);

    result.when(
      success: (_) {
        emit(state.copyWith(status: const Status.success()));
        add(const FetchLectures()); // Refresh the list
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
}
