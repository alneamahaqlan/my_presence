import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/api_result.dart';
import '../../../../core/models/status.dart';
import '../../data/models/subject_model.dart';
import '../../data/repositories/subject_repository.dart';

part 'subject_bloc.freezed.dart';
part 'subject_event.dart';
part 'subject_state.dart';
class SubjectBloc extends Bloc<SubjectEvent, SubjectState> {
  final SubjectRepository repository;

  SubjectBloc(this.repository) : super(SubjectState.initial()) {
    on<_FetchSubjects>(_onFetchSubjects);
    on<AddSubject>(_onAddSubject);
    on<UpdateSubject>(_onUpdateSubject);

    add(const _FetchSubjects());
  }

  Future<void> _onFetchSubjects(
    _FetchSubjects event,
    Emitter<SubjectState> emit,
  ) async {
    emit(state.copyWith(status: const Status.loading()));
    await emit.onEach<ApiResult<List<Subject>>>(
      repository.getSubjects(),
      onData: (result) {
        result.when(
          success: (subjects) {
            emit(state.copyWith(
              status: const Status.success(),
              subjects: subjects,
            ));
          },
          failure: (error) {
            emit(state.copyWith(
              status: const Status.failed(),
              message: error.toString(),
            ));
          },
        );
      },
      onError: (error, stackTrace) {
        emit(state.copyWith(
          status: const Status.failed(),
          message: 'Failed to fetch subjects. Please try again.',
        ));
      },
    );
  }

  Future<void> _onAddSubject(
    AddSubject event,
    Emitter<SubjectState> emit,
  ) async {
    emit(state.copyWith(createStatus: const Status.loading()));
    final result = await repository.createSubject(event.subject);
    result.when(
      success: (id) {
           emit(state.copyWith(createStatus: const Status.success()));
       
      },
      failure: (error) {
        emit(state.copyWith(
          createStatus: const Status.failed(),
          message: error.toString(),
        ));
      },
    );
  }

  Future<void> _onUpdateSubject(
    UpdateSubject event,
    Emitter<SubjectState> emit,
  ) async {
    final result = await repository.updateSubject(event.subject);
    result.when(
      success: (_) {
        // Refresh the list of subjects
        add(const _FetchSubjects());
      },
      failure: (error) {
        emit(state.copyWith(
          status: const Status.failed(),
          message: error.toString(),
        ));
      },
    );
  }
}