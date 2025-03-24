import 'dart:developer';

import '../../../../core/error/api_error_handler.dart';
import '../../../../core/models/api_result.dart';
import '../../../../core/services/firestore_service.dart';
import '../../../auth/data/models/user_model.dart';
import '../models/attendance_create_body.dart';

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
    required AttendanceCreateBody attendanceCreateBody,
    required UserModel member,
  }) async {
    try {
      log('Creating attendance record for member: ${member.id}');
      log('Attendance data: ${attendanceCreateBody.toJson()}');
      // Add the attendance record to Firestore
      final docRef = await _firestoreService.firestore
          .collection('users')
          .doc(member.id)
          .collection('attendances')
          .add(attendanceCreateBody.toJson());

      // Return the document ID as a success result
      return ApiResult.success(docRef.id);
    } catch (e) {
      // Handle any errors and return a failure result
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
