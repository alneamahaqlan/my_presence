import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/error/api_error_handler.dart';
import '../../../../core/models/api_result.dart';
import '../../../../core/services/firestore_service.dart';
import '../../../auth/data/models/user_model.dart';
import '../models/attendance_model.dart';

class AttendanceRepository {
  final FirestoreService _firestoreService;

  AttendanceRepository(this._firestoreService);

  /// Creates a new attendance record for a specific member.
  ///
  /// Parameters:
  /// - [attendance]: The attendance data to be added.
  /// - [member]: The member for whom the attendance is being recorded.
  /// - [byUser]: The user who is recording the attendance.
  ///
  /// Returns:
  /// - [ApiResult<String>]: Success with the document ID if the operation is successful,
  ///   or failure with an error message if an exception occurs.
  Future<ApiResult<String>> createAttendance({
    required Attendance attendance,
    required UserModel member,
    required UserModel byUser,
  }) async {
    try {
      // Prepare the attendance data
      final attendanceData = {
        'arrivalDate': attendance.arrivalDate,
        'status': attendance.status,
        'byUser': {
          'id': byUser.id,
          'name': byUser.name,
          'email': byUser.email,
          'role': byUser.role.name,
          'activityStatus': byUser.activityStatus.name,
          'specialization': byUser.specialization,
          'academicRank': byUser.academicRank,
        },
        'lecture': {
          'id': attendance.lecture.id,
          'startTime': attendance.lecture.startTime,
          'endTime': attendance.lecture.endTime,
          'hall': attendance.lecture.hall,
          'scheduleId': attendance.lecture.scheduleId,
          'subject': attendance.lecture.subject.toJson(),
          'user':{
             'id': attendance.lecture.user.id,
          'name': attendance.lecture.user.name,
          'email': attendance.lecture.user.email,
          'role': attendance.lecture.user.role.name,
          'activityStatus': attendance.lecture.user.activityStatus.name,
          'specialization': attendance.lecture.user.specialization,
          'academicRank': attendance.lecture.user.academicRank,
          }
        },
        'createdAt': Timestamp.now(),
        'updatedAt': Timestamp.now(),
      };
  
      // Add the attendance record to Firestore
      final docRef = await _firestoreService.firestore
          .collection('users')
          .doc(member.id)
          .collection('attendances')
          .add(attendanceData);

    

      // Return the document ID as a success result
      return ApiResult.success(docRef.id);
    } catch (e) {
      // Handle any errors and return a failure result
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
