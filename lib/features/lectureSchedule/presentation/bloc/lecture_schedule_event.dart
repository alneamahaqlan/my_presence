part of 'lecture_schedule_bloc.dart';

@freezed
class LectureScheduleEvent with _$LectureScheduleEvent {
  const factory LectureScheduleEvent.fetchSchedules({
    required String departmentId,
  }) = FetchLectureSchedules;
  const factory LectureScheduleEvent.addSchedule({
    required String departmentId,
    required ScheduleCreateBody scheduleCreateBody,
  }) = AddLectureSchedule;
  const factory LectureScheduleEvent.updateSchedule(
    String id,
    Schedule schedule,
  ) = UpdateLectureSchedule;
  const factory LectureScheduleEvent.deleteSchedule(String id) =
      DeleteLectureSchedule;
  // New event for updating attendance
  const factory LectureScheduleEvent.updateAttendance({
    required String lectureId,
    required String scheduleId,
    required Attendance attendance,
  }) = UpdateAttendance;
}
