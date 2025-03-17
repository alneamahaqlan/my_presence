
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/attendance_model.dart';

part 'attendance_event.dart';
part 'attendance_state.dart';
part 'attendance_bloc.freezed.dart';


class AttendanceBloc extends Bloc<AttendanceEvent, AttendanceState> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  AttendanceBloc() : super(const AttendanceState.initial()) {
    on<AttendanceEvent>((event, emit) async {
      await event.map(
        fetchAll: (_) => _fetchAllAttendance(emit),
        add: (e) => _addAttendance(e, emit),
        update: (e) => _updateAttendance(e, emit),
        delete: (e) => _deleteAttendance(e, emit),
      );
    });
  }

  // Fetch all attendance records
  Future<void> _fetchAllAttendance(Emitter<AttendanceState> emit) async {
    emit(const AttendanceState.loading());
    try {
      final QuerySnapshot snapshot = await _firestore.collection('attendance').get();
      final List<AttendanceModel> attendanceList = snapshot.docs
          .map((doc) => AttendanceModel.fromJson(doc.data() as Map<String, dynamic>))
          .toList();
      emit(AttendanceState.loaded(attendanceList));
    } catch (e) {
      emit(AttendanceState.error('Failed to fetch attendance records: $e'));
    }
  }

  // Add a new attendance record
  Future<void> _addAttendance(AddAttendance event, Emitter<AttendanceState> emit) async {
    emit(const AttendanceState.loading());
    try {
      await _firestore.collection('attendance').add(event.attendance.toJson());
      emit(const AttendanceState.success('Attendance added successfully!'));
    } catch (e) {
      emit(AttendanceState.error('Failed to add attendance: $e'));
    }
  }

  // Update an existing attendance record
  Future<void> _updateAttendance(UpdateAttendance event, Emitter<AttendanceState> emit) async {
    emit(const AttendanceState.loading());
    try {
      await _firestore
          .collection('attendance')
          .doc(event.attendance.id)
          .update(event.attendance.toJson());
      emit(const AttendanceState.success('Attendance updated successfully!'));
    } catch (e) {
      emit(AttendanceState.error('Failed to update attendance: $e'));
    }
  }

  // Delete an attendance record
  Future<void> _deleteAttendance(DeleteAttendance event, Emitter<AttendanceState> emit) async {
    emit(const AttendanceState.loading());
    try {
      await _firestore.collection('attendance').doc(event.id).delete();
      emit(const AttendanceState.success('Attendance deleted successfully!'));
    } catch (e) {
      emit(AttendanceState.error('Failed to delete attendance: $e'));
    }
  }
}
