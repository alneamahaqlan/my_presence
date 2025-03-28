import 'dart:developer';

import '../../../../core/error/api_error_handler.dart';
import '../../../../core/models/api_result.dart';
import '../../../../core/services/firestore_service.dart';
import '../../../attendance/data/models/attendance_model.dart';
import '../../../department/data/models/department_model.dart';
import '../models/schedule_create_body.dart';
import '../models/schedule_model.dart';

class LectureScheduleRepository {
  final FirestoreService _firestoreService;

  LectureScheduleRepository(this._firestoreService);
  Future<ApiResult<List<Schedule>>> fetchLectureSchedules({
    required Department department,
  }) async {
    try {
      final snapshot =
          await _firestoreService.firestore
              .collection('faculties')
              .doc(department.faculty?.id)
              .collection('departments')
              .doc(department.id)
              .collection('schedules')
              .orderBy('createdAt', descending: true)
              .get();
      final schedules =
          snapshot.docs.map((doc) {
            final schedule = Schedule.fromJson(doc.data());
            return schedule.copyWith(id: doc.id);
          }).toList();

      return ApiResult.success(schedules);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
  //

  Future<ApiResult<String>> createSchedule({
    required ScheduleCreateBody scheduleCreateBody,
  }) async {
    try {


      final docRef = await _firestoreService.firestore
          .collection('faculties')
          .doc(scheduleCreateBody.department.faculty?.id)
          .collection('departments')
          .doc(scheduleCreateBody.department.id)
          .collection('schedules')
          .add(scheduleCreateBody.toJson());
      return ApiResult.success(docRef.id);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  /// Add a new lecture schedule
  Future<ApiResult<void>> addLectureSchedule({
    required Schedule schedule,
  }) async {
    try {
      // final member = schedule.user;
      await _firestoreService.addWithSubDocuments(
        mainCollection: 'lecture_schedules',
        mainData: {
          'id': schedule.id,
          'termStart': schedule.termStart,
          'termEnd': schedule.termEnd,
        },
        subCollection: 'lectures',
        subDataList:
            schedule.lectures.map((lecture) {
              final data = lecture.toJson();
              data.remove('id');
              return data;
            }).toList() ??
            [],
      );
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  /// Update an existing lecture schedule
  Future<ApiResult<void>> updateLectureSchedule(
    String id,
    Schedule schedule,
  ) async {
    try {
      await _firestoreService.updateDocument(
        collectionName: 'lecture_schedules',
        documentId: id,
        data: schedule.toJson(),
      );
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  /// Delete a lecture schedule
  Future<ApiResult<void>> deleteLectureSchedule(String id) async {
    try {
      await _firestoreService.deleteDocument(
        collectionName: 'lecture_schedules',
        documentId: id,
      );
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<void>> updateAttendance({
    required String lectureId,
    required String scheduleId,
    required Attendance attendance,
  }) async {
    try {
      await _firestoreService.updateSubDocument(
        mainCollection: 'lecture_schedules',
        subCollection: 'lectures',
        subDocumentId: lectureId,
        mainDocumentId: scheduleId,
        data: {
          'attendance': {
            'status': attendance.status,
            'arrivalDate': attendance.arrivalDate,

            'byUser': {
              'id': attendance.byUser.id,
              'name': attendance.byUser.name,
              'email': attendance.byUser.email,
              'role': attendance.byUser.role.name,
              'activityStatus': attendance.byUser.activityStatus.name,
              'specialization': attendance.byUser.specialization,
              'academicRank': attendance.byUser.academicRank,
            },
          },
        },
      );
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
