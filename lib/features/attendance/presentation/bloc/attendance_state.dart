part of 'attendance_bloc.dart';

@freezed
class AttendanceState with _$AttendanceState {
  // Initial state
  const factory AttendanceState.initial() = _Initial;

  // Loading state
  const factory AttendanceState.loading() = _Loading;

  // Loaded state with a list of attendance records
  const factory AttendanceState.loaded(List<AttendanceModel> attendanceList) = _Loaded;

  // Error state
  const factory AttendanceState.error(String message) = _Error;

  // Success state for add, update, or delete operations
  const factory AttendanceState.success(String message) = _Success;
}
