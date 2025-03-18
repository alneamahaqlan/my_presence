import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/error/api_error_handler.dart';
import '../../../../core/models/api_result.dart';
import '../../../../core/services/firestore_service.dart';
import '../../../auth/data/models/user_model.dart';
import '../../../lectureSchedule/data/models/schedule_model.dart';
import '../../../reports/data/models/evaluation_model.dart';
import '../../../reports/data/models/research_model.dart';
import '../../../subject/data/models/subject_model.dart';
import '../models/member_edit_body.dart';

class MemberRepository {
  final FirestoreService _firestoreService;

  MemberRepository(this._firestoreService);

  /// Creates a new expense in the Firestore `members` collection.
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

  Future<ApiResult<List<UserModel>>> getMembers() async {
    try {
      final usersSnapshot =
          await _firestoreService.firestore.collection('users').get();

      List<UserModel> usersWithSchedules = [];

      for (var userDoc in usersSnapshot.docs) {
        final user = UserModel.fromJson(
          userDoc.data(),
        ).copyWith(id: userDoc.id);

        final schedulesSnapshot =
            await _firestoreService.firestore
                .collection('lecture_schedules')
                .get(); // Use .get() instead of .first

        final schedules =
            schedulesSnapshot.docs
                .map(
                  (doc) => Schedule.fromJson(doc.data()).copyWith(id: doc.id),
                )
                .toList()
                // .where((s) => s.user.id == user.id)
                .toList();
        final subjects = <Subject>[];
        // schedules.map((schedule) => schedule).toList();

        usersWithSchedules.add(user.copyWith(subjects: subjects, id: user.id));
      }

      return ApiResult.success(usersWithSchedules);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  Future<ApiResult<void>> addEvaluation(
    String userId,
    Evaluation evaluation,
  ) async {
    try {
      await _firestoreService.firestore.collection('users').doc(userId).update({
        'evaluations': FieldValue.arrayUnion([evaluation.toJson()]),
      });
      return const ApiResult.success(null);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  Future<ApiResult<void>> addResearch(String userId, Research research) async {
    try {
      await _firestoreService.firestore.collection('users').doc(userId).update({
        'researches': FieldValue.arrayUnion([research.toJson()]),
      });
      return const ApiResult.success(null);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  // Future<void> test() async {
  //   FirebaseFirestore firestore = FirebaseFirestore.instance;

  //   // Fetch all user IDs
  //   CollectionReference userCollectionRef = firestore.collection('users');
  //   QuerySnapshot userQuerySnapshot = await userCollectionRef.get();
  //   final usersId = userQuerySnapshot.docs.map((doc) => doc.id).toList();

  //   // Fetch all lecture schedules
  //   CollectionReference collectionRef = firestore.collection(
  //     'lecture_schedules',
  //   );
  //   QuerySnapshot querySnapshot = await collectionRef.get();

  //   List<Map<String, dynamic>> schedules = [];

  //   for (var doc in querySnapshot.docs) {
  //     Map<String, dynamic> schedule = {
  //       'id': doc.id,
  //       ...?doc.data() as Map<String, dynamic>?,
  //     };

  //     // Check if the schedule contains a 'user' field
  //     if (!schedule.containsKey('user') || schedule['user'] == null) {
  //       continue; // Skip if 'user' field is missing
  //     }

  //     // Fetch nested 'lectures' collection
  //     CollectionReference nestedCollectionRef = doc.reference.collection(
  //       'lectures',
  //     );
  //     QuerySnapshot nestedQuerySnapshot = await nestedCollectionRef.get();
  //     List<Map<String, dynamic>> lectures = [];

  //     for (var nestedDoc in nestedQuerySnapshot.docs) {
  //       Map<String, dynamic> lectureData = {
  //         'id': nestedDoc.id,
  //         ...nestedDoc.data() as Map<String, dynamic>,
  //       };

  //       lectures.add(lectureData);
  //     }

  //     schedule['lectures'] = lectures;
  //     schedules.add(schedule);
  //   }

  //   // Extract and filter attendance records for each user
  //   for (var userId in usersId) {
  //     List<dynamic> userAttendances = [];

  //     // Get lectures linked to the user
  //     final lectures =
  //         schedules
  //             .where((schedule) => schedule['user']['id'] == userId)
  //             .expand((schedule) => schedule['lectures'])
  //             .toList();

  //     for (var lecture in lectures) {
  //       if (lecture.containsKey('attendance') &&
  //           lecture['attendance'] != null) {
  //         userAttendances.add(lecture['attendance']);
  //       }
  //     }

  //     // Log only if attendance data is found
  //     if (userAttendances.isNotEmpty) {
  //       log('User $userId Attendance: $userAttendances');
  //     }
  //   }
  // }

  // test() async {
  //   CollectionReference userCollectionRef = FirebaseFirestore.instance
  //       .collection('users');
  //   QuerySnapshot userQuerySnapshot = await userCollectionRef.get();
  //   final usersId = userQuerySnapshot.docs.map((doc) => doc.id).toList();

  //   CollectionReference collectionRef = _firestoreService.firestore.collection(
  //     'lecture_schedules',
  //   );
  //   QuerySnapshot querySnapshot = await collectionRef.get();
  //   List<Map<String, dynamic>> schedules = [];

  //   for (var doc in querySnapshot.docs) {
  //     final Map<String, dynamic> schedule = {
  //       'id': doc.id,
  //       ...?doc.data() as Map<String, dynamic>?,
  //     };

  //     // Fetch nested collection for each document
  //     CollectionReference nestedCollectionRef = doc.reference.collection(
  //       'lectures',
  //     );
  //     QuerySnapshot nestedQuerySnapshot = await nestedCollectionRef.get();
  //     List lectures = [];

  //     for (var nestedDoc in nestedQuerySnapshot.docs) {
  //       // print('Nested Document: ${nestedDoc.id}');
  //       lectures.add({
  //         'id': nestedDoc.id,
  //         ...nestedDoc.data() as Map<String, dynamic>,
  //       });
  //     }

  //     schedule['lectures'] = lectures;

  //     schedules.add(schedule);
  //   }

  //   final userAttendances = [];
  //   // log('**********************************************'.toString());
  //   // log(schedules.toString());
  //   // log('**********************************************'.toString());
  //   // final lectures = schedules.map((e) => e['lectures']).toList();

  //   for (var userId in usersId) {
  //     var userAttendance;
  //     final lectures =
  //         schedules
  //             .where((schedule) => schedule['user']['id'] == userId)
  //             .map((e) => e['lectures'])
  //             .toList();
  //     for (var element in lectures) {
  //       for (var lecture in element) {
  //         userAttendances.add(lecture['attendance']);
  //       }
  //     }

  //     // log('**********************************************'.toString());
  //     log(userAttendances.toString());

  //     // userAttendances.addAll(userAttendance);
  //   }
  // }

  /// Deletes an expense by its document ID.
  Future<ApiResult<bool>> deleteMember(String expenseId) async {
    try {
      final result = await _firestoreService.deleteDocument(
        collectionName: 'users',
        documentId: expenseId,
      );
      return ApiResult.success(result);
    } catch (e) {
      log(e.toString());
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

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

  /// Updates an expense document with provided fields.
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
      log('Error updating expense: $e');
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  Future<void> test() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Get all users
    CollectionReference usersCollection = firestore.collection('users');
    QuerySnapshot usersSnapshot = await usersCollection.get();
    int totalUsers = usersSnapshot.size;

    // Initialize counters
    int totalPresentAttendances = 0;
    int totalEvaluations = 0;
    double totalTeachingPerformance = 0;
    double totalInteractionWithStudents = 0;
    int totalResearches = 0;

    // Process attendance from lecture_schedules
    CollectionReference schedulesCollection = firestore.collection(
      'lecture_schedules',
    );
    QuerySnapshot schedulesSnapshot = await schedulesCollection.get();

    for (var scheduleDoc in schedulesSnapshot.docs) {
      Map<String, dynamic>? scheduleData =
          scheduleDoc.data() as Map<String, dynamic>?;

      if (scheduleData != null && scheduleData.containsKey('lectures')) {
        List<dynamic> lectures = scheduleData['lectures'];

        for (var lecture in lectures) {
          if (lecture is Map<String, dynamic> &&
              lecture.containsKey('attendance')) {
            var attendance = lecture['attendance'];
            if (attendance is Map<String, dynamic>) {
              totalPresentAttendances +=
                  attendance.values
                      .where((status) => status == "present")
                      .length;
            }
          }
        }
      }
    }

    // Process evaluations and researches directly inside users collection
    for (var userDoc in usersSnapshot.docs) {
      Map<String, dynamic>? userData = userDoc.data() as Map<String, dynamic>?;

      if (userData != null) {
        // Evaluations
        if (userData.containsKey('evaluations')) {
          List<dynamic> evaluations = userData['evaluations'];
          for (var evaluation in evaluations) {
            if (evaluation is Map<String, dynamic> &&
                evaluation.containsKey('rateType') &&
                evaluation.containsKey('score')) {
              double score = (evaluation['score'] as num).toDouble();
              totalEvaluations++;

              if (evaluation['rateType'] == "teachingPerformance") {
                totalTeachingPerformance += score;
              } else if (evaluation['rateType'] == "interactionWithStudents") {
                totalInteractionWithStudents += score;
              }
            }
          }
        }

        // Researches
        if (userData.containsKey('researches')) {
          List<dynamic> researches = userData['researches'];
          totalResearches += researches.length;
        }
      }
    }

    // Calculate averages
    double teachingPerformanceAvg =
        (totalEvaluations > 0)
            ? (totalTeachingPerformance / totalEvaluations)
            : 0;
    double interactionWithStudentsAvg =
        (totalEvaluations > 0)
            ? (totalInteractionWithStudents / totalEvaluations)
            : 0;
    double attendanceRate =
        (totalUsers > 0) ? (totalPresentAttendances / totalUsers) : 0;
    double researchRate = (totalUsers > 0) ? (totalResearches / totalUsers) : 0;

    // Return data as a map
    final data = {
      "total_users": totalUsers,
      "attendance_discipline_rate": attendanceRate.toStringAsFixed(2),
      "teaching_performance": teachingPerformanceAvg.toStringAsFixed(2),
      "interaction_with_students": interactionWithStudentsAvg.toStringAsFixed(
        2,
      ),
      "research_publication_rate": researchRate.toStringAsFixed(2),
    };
    log(data.toString());
  }
}
