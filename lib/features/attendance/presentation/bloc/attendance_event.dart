part of 'attendance_bloc.dart';

@freezed
class AttendanceEvent with _$AttendanceEvent {
  // Fetch all attendance records
  const factory AttendanceEvent.fetchAll() = FetchAllAttendance;

  // Add a new attendance record
  const factory AttendanceEvent.add(AttendanceModel attendance) = AddAttendance;

  // Update an existing attendance record
  const factory AttendanceEvent.update(AttendanceModel attendance) = UpdateAttendance;

  // Delete an attendance record
  const factory AttendanceEvent.delete(String id) = DeleteAttendance;
}