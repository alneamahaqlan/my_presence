part of 'lecture_schedule_bloc.dart';

@freezed
class LectureScheduleState with _$LectureScheduleState {
  const factory LectureScheduleState.initial() = LectureScheduleInitial;
  const factory LectureScheduleState.loading() = LectureScheduleLoading;
  const factory LectureScheduleState.loaded(List<LectureSchedule> schedules) = LectureScheduleLoaded;
  const factory LectureScheduleState.error(String message) = LectureScheduleError;
}