import 'dart:developer';

import 'package:uuid/uuid.dart';

import '../../../../core/error/api_error_handler.dart';
import '../../../../core/models/api_result.dart';
import '../../../../core/services/firestore_service.dart';
import '../../../department/data/models/department_model.dart';
import '../../../lectureSchedule/data/models/schedule_model.dart';
import '../models/lecture_create_body.dart';
import '../models/lecture_model.dart';

class LectureRepository {
  final FirestoreService _firestoreService;

  LectureRepository(this._firestoreService);

  // Fetch all lectures for a specific schedule
  Future<ApiResult<List<Lecture>>> fetchLectures({
    required Department department,
    required Schedule schedule,
  }) async {
    try {
      final snapshot =
          await _firestoreService.firestore
              .collection('faculties')
              .doc(department.faculty?.id)
              .collection('departments')
              .doc(department.id)
              .collection('schedules')
              .doc(schedule.id)
              .collection('lectures')
              .get();

      final lectures =
          snapshot.docs.map((doc) {
            final lecture = Lecture.fromJson(doc.data());

            // Ensure each Meet has a unique ID
            final meetingsWithIds =
                lecture.meetings.map((meet) {
                  return meet.copyWith(
                    id:
                        meet.id ??
                        const Uuid().v4(), // Generate a new ID if none exists
                  );
                }).toList();

            return lecture.copyWith(id: doc.id, meetings: meetingsWithIds);
          }).toList();

      return ApiResult.success(lectures);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  // Calculate meeting dates between termStart and termEnd

  // Add a new lecture with generated meetings
  Future<ApiResult<String>> addLecture(
    LectureCreateBody lectureCreateBody,
  ) async {
    try {
      log('LectureCreateBody: ${lectureCreateBody.toJson()}');

      final docRef = await _firestoreService.firestore
          .collection('faculties')
          .doc(lectureCreateBody.schedule.department.faculty?.id)
          .collection('departments')
          .doc(lectureCreateBody.schedule.department.id)
          .collection('schedules')
          .doc(lectureCreateBody.schedule.id)
          .collection('lectures')
          .add(lectureCreateBody.toJson());

      return ApiResult.success(docRef.id);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  /// Update an existing lecture
  Future<ApiResult<void>> updateLecture(Lecture lecture) async {
    try {
      if (lecture.id == null) {
        throw Exception('Lecture ID is required for updating');
      }

      await _firestoreService.firestore
          .collection('lectures')
          .doc(lecture.id)
          .update(lecture.toJson());

      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  /// Delete a lecture
  Future<ApiResult<void>> deleteLecture(String lectureId) async {
    try {
      await _firestoreService.firestore
          .collection('lectures')
          .doc(lectureId)
          .delete();

      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
