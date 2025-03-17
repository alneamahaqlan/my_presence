part of 'lecture_schedule_bloc.dart';

@freezed
class LectureScheduleEvent with _$LectureScheduleEvent {
  const factory LectureScheduleEvent.fetchSchedules() = FetchLectureSchedules;
  const factory LectureScheduleEvent.addSchedule(LectureSchedule schedule) = AddLectureSchedule;
  const factory LectureScheduleEvent.updateSchedule(String id, LectureSchedule schedule) = UpdateLectureSchedule;
  const factory LectureScheduleEvent.deleteSchedule(String id) = DeleteLectureSchedule;
  // New event for updating attendance
  const factory LectureScheduleEvent.updateAttendance({
    required String lectureId,
     required String scheduleId,
    required AttendanceModel attendance,
  }) = UpdateAttendance;

}