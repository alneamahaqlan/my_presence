import '../../../../core/error/api_error_handler.dart';
import '../../../../core/models/api_result.dart';
import '../../../../core/services/firestore_service.dart';
import '../../../department/data/models/department_model.dart';
import '../../../lectureSchedule/data/models/schedule_model.dart';
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
      final snapshot = await _firestoreService.firestore
          .collection('faculties')
          .doc(department.facultyId)
          .collection('departments')
          .doc(department.id)
          .collection('schedules')
          .doc(schedule.id)
          .collection('lectures')
          .get();

      final lectures = snapshot.docs.map((doc) {
        final lecture = Lecture.fromJson(doc.data());
        return lecture.copyWith(id: doc.id);
      }).toList();

      return ApiResult.success(lectures);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  /// Add a new lecture
  Future<ApiResult<String>> addLecture({
    required Department department,
    required Schedule schedule,
    required Lecture lecture,
  }) async {
    try {
      final lectureData = {
        'hall': lecture.hall,
        'scheduleId': schedule.id,
        'startTime': lecture.startTime,
        'endTime': lecture.endTime,
        'subject': lecture.subject.toJson(),
        'user':{
          'id': lecture.user.id,
          'name': lecture.user.name,
          'email': lecture.user.email,
          'role': lecture.user.role.name,
          'activityStatus': lecture.user.activityStatus.name,
          'specialization': lecture.user.specialization,
          'academicRank': lecture.user.academicRank,
        
          
        },
      };

      final docRef = await _firestoreService.firestore
          .collection('faculties')
          .doc(department.facultyId)
          .collection('departments')
          .doc(department.id)
          .collection('schedules')
          .doc(schedule.id)
          .collection('lectures')
          .add(lectureData);

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
