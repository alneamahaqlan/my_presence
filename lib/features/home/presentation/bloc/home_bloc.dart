import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/api_result.dart';
import '../../../../core/models/status.dart';
import '../../../faculty/data/models/faculty_model.dart';
import '../../data/repositories/home_repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _homeRepository;
  HomeBloc( this._homeRepository) : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) {
      event.map(getFaculties: (e) => _onGetFaculties(e, emit));
    });
    add(const HomeEvent.getFaculties());
  }

  Future<void> _onGetFaculties(
    _GetFaculties event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(status: const Status.loading()));

     emit.onEach<ApiResult<List<Faculty>>>(
      _homeRepository.getFaculties(),
      onData: (result) {
        result.when(
          success: (faculties) {
            emit(
              state.copyWith(
                status: const Status.success(),
                faculties: faculties,
              ),
            );
          },
          failure: (error) {
            emit(
              state.copyWith(
                status: const Status.failed(),
                errorMessage: error.toString(),
              ),
            );
          },
        );
      },
      onError: (error, stackTrace) {
        emit(
          state.copyWith(
            status: const Status.failed(),
            errorMessage: 'Failed to fetch faculties. Please try again.',
          ),
        );
      },
    );
  }
}
