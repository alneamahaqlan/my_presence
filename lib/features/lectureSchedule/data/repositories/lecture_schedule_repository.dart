import '../../../../core/error/api_error_handler.dart';
import '../../../../core/models/api_result.dart';
import '../../../../core/services/firestore_service.dart';
import '../../../attendance/data/models/attendance_model.dart';
import '../models/lecture.dart';
import '../models/lecture_schedule.dart';

class LectureScheduleRepository {
  final FirestoreService _firestoreService;

  LectureScheduleRepository(this._firestoreService);
  Future<ApiResult<List<LectureSchedule>>> fetchLectureSchedules() async {
    try {
      final snapshot =
          await _firestoreService
              .getWithSubDocuments(
                mainCollection: 'lecture_schedules',
                subCollection: 'lectures',
              )
              .first;

      final schedules =
          snapshot.map((doc) {
            // Extract main document data with ID
            final Map<String, dynamic> mainData = {
              'id': doc['mainDocument']['id'], // Ensure main doc ID is included
              ...doc['mainDocument'],
            };

            // Extract and transform subcollection data with IDs
            final List<Lecture> lectures =
                (doc['subCollection'] as List)
                    .map(
                      (subDoc) => Lecture.fromJson({
                        'id': subDoc['id'], // Ensure subdoc ID is included
                        ...subDoc,
                      }),
                    )
                    .toList();

            // Convert to LectureSchedule model
            return LectureSchedule.fromJson(
              mainData,
            ).copyWith(lectures: lectures);
          }).toList();

      return ApiResult.success(schedules);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  /// Add a new lecture schedule
  Future<ApiResult<void>> addLectureSchedule({
    required LectureSchedule schedule,
  }) async {
    try {
      // final member = schedule.user;
      await _firestoreService.addWithSubDocuments(
        mainCollection: 'lecture_schedules',
        mainData: {
          'id': schedule.id,
        'termStart': schedule.termStart,
        'termEnd': schedule.termEnd,
          // 'subject': {
          //   'id': schedule.subject.id,
          //   'name': schedule.subject.name,
            
          //   'code': schedule.subject.code,
          //   'number': schedule.subject.number,
          // },
          // 'hall': schedule.hall,

          // 'date': schedule.date,
          // 'endDate': schedule.endDate,
          // 'user': {
          //   'id': member.id,
          //   'name': member.name,
          //   'email': member.email,
          //   'role': member.role.name,
          //   'activityStatus': member.activityStatus.name,
          //   'specialization': member.specialization,
          //   'academicRank': member.academicRank,
          // },
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
    LectureSchedule schedule,
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
    required AttendanceModel attendance,
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
