import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


import '../../../auth/data/models/user_model.dart';

import '../../data/models/attendance_create_body.dart';
import '../../data/models/attendance_model.dart';
import '../../data/repositories/attendance_repository.dart';

part 'attendance_bloc.freezed.dart';
part 'attendance_event.dart';
part 'attendance_state.dart';
class AttendanceBloc extends Bloc<AttendanceEvent, AttendanceState> {
  final AttendanceRepository repository;

  AttendanceBloc(this.repository) : super(const AttendanceState.initial()) {
    on<AttendanceEvent>((event, emit) async {
      await event.map(
        add: (e) => _addAttendance(e, emit),
      );
    });
  }
Future<void> _addAttendance(
    AddAttendance event,
    Emitter<AttendanceState> emit,
  ) async {
    emit(const AttendanceState.loading());
    try {
  

      final result = await repository.createAttendance(
        attendanceCreateBody: event.attendanceCreateBody,
        member: event.member,
  
      );
      result.when(
        success: (id) {
          emit(AttendanceState.success('Attendance added successfully!'));
        },
        failure: (error) {
          emit(AttendanceState.error(error.message));
        },
      );
    } catch (e) {
      emit(AttendanceState.error('Failed to add attendance: $e'));
    }
  }
}