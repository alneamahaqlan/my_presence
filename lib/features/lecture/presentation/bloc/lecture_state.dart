part of 'lecture_bloc.dart';

@freezed
class LectureState with _$LectureState {
  const factory LectureState({
    @Default(Status.initial()) Status status,
        @Default(Status.initial()) Status createStatus,
    @Default([]) List<Lecture> lectures,

    String? errorMessage,
  }) = _LectureState;

  factory LectureState.initial() => const LectureState();
  
}