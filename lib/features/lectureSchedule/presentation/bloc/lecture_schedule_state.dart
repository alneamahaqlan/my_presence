part of 'lecture_schedule_bloc.dart';

@freezed
class LectureScheduleState with _$LectureScheduleState {
  const factory LectureScheduleState({
    @Default(Status.initial()) Status status, // Add status field
    @Default([]) List<Schedule> schedules, // Rename to schedules
     Department? department,
    String? errorMessage, // Add errorMessage field
  }) = _LectureScheduleState;

  factory LectureScheduleState.initial() => const LectureScheduleState();
}