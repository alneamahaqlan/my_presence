import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_presence/features/department/data/models/department_model.dart';
import 'package:my_presence/features/faculty/data/models/faculty_model.dart';
import '../../../../core/error/api_error_handler.dart';
import '../../../../core/models/api_result.dart';
import '../../../../core/services/firestore_service.dart';
import '../../../attendance/data/models/attendance_model.dart';
import '../../../auth/data/models/user_model.dart';
import '../../../lecture/data/models/lecture_model.dart';
import '../../../lectureSchedule/data/models/schedule_model.dart';
import '../../../reports/data/models/evaluation_model.dart';
import '../../../reports/data/models/research_model.dart';
import '../../../subject/data/models/subject_model.dart';
import '../models/member_edit_body.dart';

class MemberRepository {
  final FirestoreService _firestoreService;

  MemberRepository(this._firestoreService);

  /// Creates a new member in the Firestore `users` collection.
  Future<ApiResult<String>> createMember(UserModel member) async {
    try {
      final docRef = await _firestoreService.addDocument(
        collectionName: 'users',
        data: {
          'name': member.name,
          'email': member.email,
          'role': member.role.name,
          'activityStatus': member.activityStatus.name,
          'specialization': member.specialization,
          'academicRank': member.academicRank,
        },
      );
      return ApiResult.success(docRef.id);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

Stream<List<UserModel>> getMembersStream() {
  final firestore = _firestoreService.firestore;

  return firestore.collection('users').snapshots().asyncMap((snapshot) async {
    Map<String, UserModel> userMap = {};

    for (var userDoc in snapshot.docs) {
      try {
        final userData = userDoc.data();
        final userId = userDoc.id;

        // Validate user data
        if (userData['name'] == null || userData['email'] == null) {
          log('Invalid user data for user ID: $userId');
          continue; // Skip invalid user documents
        }

        final user = UserModel.fromJson({
          ...userData,
          'id': userId,
        });

        // Fetch additional data for each user
        final lectures = await _fetchLecturesForUser(userId);
        final researches = await _fetchResearchesForUser(userId);
        final evaluations = await _fetchEvaluationsForUser(userId);
        final attendances = await _fetchAttendancesForUser(userId);

        userMap[userId] = user.copyWith(
          lectures: lectures,
          researches: researches,
          evaluations: evaluations,
          attendances: attendances,
        );
      } catch (e, stackTrace) {
        log('Error processing user document: $e', stackTrace: stackTrace);
      }
    }

    return userMap.values.toList();
  }).handleError((error, stackTrace) {
    log('Error in members stream: $error', stackTrace: stackTrace);
    throw error; // Re-throw the error to propagate it to the Bloc
  });
}

Future<List<Lecture>> _fetchLecturesForUser(String userId) async {
  final firestore = _firestoreService.firestore;
  final lectures = <Lecture>[];

  try {
    final facultiesSnapshot = await firestore.collection('faculties').get();
    for (var facultyDoc in facultiesSnapshot.docs) {
      final departmentsSnapshot = await facultyDoc.reference.collection('departments').get();
      for (var departmentDoc in departmentsSnapshot.docs) {
        final schedulesSnapshot = await departmentDoc.reference.collection('schedules').get();
        for (var scheduleDoc in schedulesSnapshot.docs) {
          final lecturesSnapshot = await scheduleDoc.reference.collection('lectures').get();
          for (var lectureDoc in lecturesSnapshot.docs) {
            try {
              final lectureData = lectureDoc.data();
              if (lectureData['user'] != null && lectureData['user']['id'] == userId) {
                lectures.add(Lecture.fromJson({
                  ...lectureData,
                  'id': lectureDoc.id,
                }));
              }
            } catch (e, stackTrace) {
              log('Error processing lecture document: $e', stackTrace: stackTrace);
            }
          }
        }
      }
    }
  } catch (e, stackTrace) {
    log('Error fetching lectures for user $userId: $e', stackTrace: stackTrace);
  }

  return lectures;
}



  /// Fetches researches for a specific user.
  Future<List<Research>> _fetchResearchesForUser(String userId) async {
    final firestore = _firestoreService.firestore;
    final researchesSnapshot = await firestore.collection('users').doc(userId).collection('researches').get();
    return researchesSnapshot.docs.map((doc) => Research.fromJson({
      ...doc.data(),
      'id': doc.id,
    })).toList();
  }

  /// Fetches evaluations for a specific user.
  Future<List<Evaluation>> _fetchEvaluationsForUser(String userId) async {
    final firestore = _firestoreService.firestore;
    final evaluationsSnapshot = await firestore.collection('users').doc(userId).collection('evaluations').get();
    return evaluationsSnapshot.docs.map((doc) => Evaluation.fromJson({
      ...doc.data(),
      'id': doc.id,
    })).toList();
  }

  /// Fetches attendances for a specific user.
  Future<List<Attendance>> _fetchAttendancesForUser(String userId) async {
    final firestore = _firestoreService.firestore;
    final attendancesSnapshot = await firestore.collection('users').doc(userId).collection('attendances').get();
    return attendancesSnapshot.docs.map((doc) => Attendance.fromJson({
      ...doc.data(),
      'id': doc.id,
    })).toList();
  }

  /// Adds an evaluation for a specific user.
  Future<ApiResult<String>> addEvaluation(String userId, Evaluation evaluation) async {
    try {
      final docRef = await _firestoreService.firestore
          .collection('users')
          .doc(userId)
          .collection('evaluations')
          .add(evaluation.toJson());
      return ApiResult.success(docRef.id);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  /// Adds a research for a specific user.
  Future<ApiResult<String>> addResearch(String userId, Research research) async {
    try {
      final docRef = await _firestoreService.firestore
          .collection('users')
          .doc(userId)
          .collection('researches')
          .add(research.toJson());
      return ApiResult.success(docRef.id);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  /// Deletes a member by their document ID.
  Future<ApiResult<bool>> deleteMember(String userId) async {
    try {
      final result = await _firestoreService.deleteDocument(
        collectionName: 'users',
        documentId: userId,
      );
      return ApiResult.success(result);
    } catch (e) {
      log(e.toString());
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  /// Updates the activity status of a member.
  Future<ApiResult<bool>> setMemberStatus({
    required String userId,
    required bool isActive,
  }) async {
    try {
      final result = await _firestoreService.updateDocument(
        collectionName: 'users',
        documentId: userId,
        data: {'isActive': isActive},
      );
      return ApiResult.success(result);
    } catch (e) {
      log(e.toString());
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  /// Updates a member's details.
  Future<ApiResult<bool>> updateMember({
    required MemberEditBody memberEditBody,
    required String documentId,
  }) async {
    if (documentId.isEmpty) {
      return ApiResult.failure(
        ApiErrorHandler.handle(Exception('Document ID cannot be empty')),
      );
    }

    final updateData = {
      if (memberEditBody.name != null) 'name': memberEditBody.name,
      if (memberEditBody.email != null) 'email': memberEditBody.email,
      if (memberEditBody.role != null) 'role': memberEditBody.role,
      if (memberEditBody.activityStatus != null)
        'activityStatus': memberEditBody.activityStatus,
      if (memberEditBody.specialization != null)
        'specialization': memberEditBody.specialization,
      if (memberEditBody.academicRank != null)
        'academicRank': memberEditBody.academicRank,
    };
    log(updateData.toString());

    try {
      final result = await _firestoreService.updateDocument(
        collectionName: 'users',
        documentId: documentId,
        data: updateData,
      );
      return ApiResult.success(result);
    } catch (e) {
      log('Error updating member: $e');
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}