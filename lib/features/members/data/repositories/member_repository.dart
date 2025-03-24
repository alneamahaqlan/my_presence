import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_presence/features/subject/data/models/subject_model.dart';

import '../../../../core/error/api_error_handler.dart';
import '../../../../core/models/api_result.dart';
import '../../../../core/services/firestore_service.dart';
import '../../../attendance/data/models/attendance_model.dart';
import '../../../auth/data/models/user_model.dart';
import '../../../lecture/data/models/lecture_model.dart';
import '../../../lecture/data/models/meet_model.dart';
import '../../../reports/data/models/evaluation_model.dart';
import '../../../reports/data/models/research_model.dart';
import '../models/member_create_body.dart';
import '../models/member_edit_body.dart';

class MemberRepository {
  final FirestoreService _firestoreService;

  MemberRepository(this._firestoreService);

  
  //signUpOtherUser
  Future<ApiResult<String>> createMember(MemberCreateBody member) async {
    try {
      final docId = await _firestoreService.signUpOtherUser
      (
       member
      );
      return ApiResult.success(docId);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  // Stream<List<UserModel>> getMembersStream() {
  //   final firestore = _firestoreService.firestore;

  //   return firestore
  //       .collection('users')
  //       .snapshots()
  //       .asyncMap((snapshot) async {
  //         Map<String, UserModel> userMap = {};

  //         for (var userDoc in snapshot.docs) {
  //           try {
  //             final userData = userDoc.data();
  //             final userId = userDoc.id;

  //             // Validate user data
  //             if (userData['name'] == null || userData['email'] == null) {
  //               log('Invalid user data for user ID: $userId');
  //               continue; // Skip invalid user documents
  //             }

  //             final user = UserModel.fromJson({...userData, 'id': userId});

  //             // Fetch additional data for each user
  //             final lectures = await _fetchLecturesForUser(userId);
  //             final researches = await _fetchResearchesForUser(userId);
  //             final evaluations = await _fetchEvaluationsForUser(userId);
  //             final attendances = await _fetchAttendancesForUser(userId);
  //             final subjects = await _fetchSubjectsForUser(userId);

  //             userMap[userId] = user.copyWith(
  //               lectures: lectures,
  //               researches: researches,
  //               evaluations: evaluations,
  //               attendances: attendances,
  //               subjects: subjects,
  //             );
  //           } catch (e, stackTrace) {
  //             log('Error processing user document: $e', stackTrace: stackTrace);
  //           }
  //         }

  //         return userMap.values.toList();
  //       })
  //       .handleError((error, stackTrace) {
  //         log('Error in members stream: $error', stackTrace: stackTrace);
  //         throw error; // Re-throw the error to propagate it to the Bloc
  //       });
  // }

Stream<List<UserModel>> getMembersStream() {
  final firestore = _firestoreService.firestore;

  return firestore
      .collection('users')
      .snapshots()
      .asyncMap((snapshot) async {
        final userFutures = snapshot.docs.map((userDoc) async {
          try {
            final userData = userDoc.data();
            final userId = userDoc.id;

            // Validate user data
            if (userData['name'] == null || userData['email'] == null) {
              log('Invalid user data for user ID: $userId');
              return null; // Skip invalid user documents
            }

            final user = UserModel.fromJson({...userData, 'id': userId});

            // Fetch additional data for each user in parallel
            final futures = await Future.wait([
              _fetchLecturesForUser(userId),
              _fetchResearchesForUser(userId),
              _fetchEvaluationsForUser(userId),
              _fetchAttendancesForUser(userId),
              _fetchSubjectsForUser(userId),
            ]);

            final lectures = futures[0] as List<Lecture>;
            final researches = futures[1] as List<Research>;
            final evaluations = futures[2] as List<Evaluation>;
            final attendances = futures[3] as List<Attendance>;
            final subjects = futures[4] as List<Subject>;

            return user.copyWith(
              lectures: lectures,
              researches: researches,
              evaluations: evaluations,
              attendances: attendances,
              subjects: subjects,
            );
          } catch (e, stackTrace) {
            log('Error processing user document: $e', stackTrace: stackTrace);
            return null;
          }
        }).toList();

        // Wait for all user futures to complete
        final users = await Future.wait(userFutures);

        // Filter out null values (invalid users)
        return users.whereType<UserModel>().toList();
      })
      .handleError((error, stackTrace) {
        log('Error in members stream: $error', stackTrace: stackTrace);
        throw error; // Re-throw the error to propagate it to the Bloc
      });
}
  Future<List<Lecture>> _fetchLecturesForUser(String userId) async {
    final firestore = _firestoreService.firestore;
    final lectures = <Lecture>[];

    try {
      // Fetch lectures for the user
      final facultiesSnapshot = await firestore.collection('faculties').get();
      for (var facultyDoc in facultiesSnapshot.docs) {
        final departmentsSnapshot =
            await facultyDoc.reference.collection('departments').get();
        for (var departmentDoc in departmentsSnapshot.docs) {
          final schedulesSnapshot =
              await departmentDoc.reference.collection('schedules').get();
          for (var scheduleDoc in schedulesSnapshot.docs) {
            final lecturesSnapshot =
                await scheduleDoc.reference.collection('lectures').get();
            for (var lectureDoc in lecturesSnapshot.docs) {
              try {
                final lectureData = lectureDoc.data();
                if (lectureData['user'] != null &&
                    lectureData['user']['id'] == userId) {
                  final lecture = Lecture.fromJson({
                    ...lectureData,
                    'id': lectureDoc.id,
                  });

                  // Fetch meets from attendances
                  final meetsFromAttendances =
                      await _fetchAttendancesMeetsForUser(userId);

                  // Update meet status in the lecture's meetings
                  final updatedMeetings =
                      lecture.meetings.map((meet) {
                        final matchingMeet = meetsFromAttendances.firstWhere(
                          (attendanceMeet) => attendanceMeet.id == meet.id,
                          orElse:
                              () =>
                                  meet, // If no match, return the original meet
                        );

                        // If a matching meet is found, update the status
                        return matchingMeet.id == meet.id
                            ? meet.copyWith(
                              status: matchingMeet.status,
                              byUser: matchingMeet.byUser,
                            )
                            : meet;
                      }).toList();

                  // Update the lecture with the updated meetings
                  lectures.add(lecture.copyWith(meetings: updatedMeetings));
                }
              } catch (e, stackTrace) {
                log(
                  'Error processing lecture document: $e',
                  stackTrace: stackTrace,
                );
              }
            }
          }
        }
      }
    } catch (e, stackTrace) {
      log(
        'Error fetching lectures for user $userId: $e',
        stackTrace: stackTrace,
      );
    }

    return lectures;
  }

  Future<List<Subject>> _fetchSubjectsForUser(String userId) async {
    final firestore = _firestoreService.firestore;
    final subjectsMap =
        <String, Subject>{}; // Use a Map to track unique subjects by ID

    try {
      // Fetch all faculties
      final facultiesSnapshot = await firestore.collection('faculties').get();
      for (var facultyDoc in facultiesSnapshot.docs) {
        // Fetch all departments under each faculty
        final departmentsSnapshot =
            await facultyDoc.reference.collection('departments').get();
        for (var departmentDoc in departmentsSnapshot.docs) {
          // Fetch all schedules under each department
          final schedulesSnapshot =
              await departmentDoc.reference.collection('schedules').get();
          for (var scheduleDoc in schedulesSnapshot.docs) {
            // Fetch all lectures under each schedule
            final lecturesSnapshot =
                await scheduleDoc.reference.collection('lectures').get();
            for (var lectureDoc in lecturesSnapshot.docs) {
              try {
                final lectureData = lectureDoc.data();
                // Check if the lecture belongs to the specified user
                if (lectureData['user'] != null &&
                    lectureData['user']['id'] == userId) {
                  // Extract the subject from the lecture data
                  final subjectData = lectureData['subject'];
                  if (subjectData != null) {
                    // Convert the subject data to a Subject object
                    final subject = Subject.fromJson(subjectData);
                    // Add the subject to the map if it's not already present (using ID as the key)
                    if (!subjectsMap.containsKey(subject.id)) {
                      subjectsMap[subject.id] = subject;
                    }
                  }
                }
              } catch (e, stackTrace) {
                log(
                  'Error processing lecture document: $e',
                  stackTrace: stackTrace,
                );
              }
            }
          }
        }
      }
    } catch (e, stackTrace) {
      log(
        'Error fetching subjects for user $userId: $e',
        stackTrace: stackTrace,
      );
    }

    // Convert the map values to a list of unique subjects
    return subjectsMap.values.toList();
  }

  /// Fetches researches for a specific user.
  Future<List<Research>> _fetchResearchesForUser(String userId) async {
    final firestore = _firestoreService.firestore;
    final researchesSnapshot =
        await firestore
            .collection('users')
            .doc(userId)
            .collection('researches')
            .get();
    return researchesSnapshot.docs
        .map((doc) => Research.fromJson({...doc.data(), 'id': doc.id}))
        .toList();
  }

  /// Fetches evaluations for a specific user.
  Future<List<Evaluation>> _fetchEvaluationsForUser(String userId) async {
    final firestore = _firestoreService.firestore;
    final evaluationsSnapshot =
        await firestore
            .collection('users')
            .doc(userId)
            .collection('evaluations')
            .get();
    return evaluationsSnapshot.docs
        .map((doc) => Evaluation.fromJson({...doc.data(), 'id': doc.id}))
        .toList();
  }

  /// Fetches attendances for a specific user.
  Future<List<Attendance>> _fetchAttendancesForUser(String userId) async {
    final firestore = _firestoreService.firestore;
    final attendancesSnapshot =
        await firestore
            .collection('users')
            .doc(userId)
            .collection('attendances')
            .get();
    return attendancesSnapshot.docs
        .map((doc) => Attendance.fromJson({...doc.data(), 'id': doc.id}))
        .toList();
  }

  /// Adds an evaluation for a specific user.
  Future<ApiResult<String>> addEvaluation(
    String userId,
    Evaluation evaluation,
  ) async {
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
  Future<ApiResult<String>> addResearch(
    String userId,
    Research research,
  ) async {
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
  Future<ApiResult<String>> updateMember({
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
      DocumentReference docRef = _firestoreService.firestore
          .collection('users')
          .doc(documentId);
      await docRef.update(updateData);
      return ApiResult.success(docRef.id);
    } catch (e) {
      log('Error updating member: $e');
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  Future<Map<String, dynamic>?> getLectureById(String lectureId) async {
    try {
      final firestore = _firestoreService.firestore;
      // Perform a collection group query to find the lecture
      final querySnapshot =
          await firestore
              .collectionGroup(
                'lectures',
              ) // Search across all lectures subcollections
              .where(
                FieldPath.documentId,
                isEqualTo: lectureId,
              ) // Match the lectureId
              .limit(1) // Limit to 1 result
              .get();

      if (querySnapshot.docs.isNotEmpty) {
        // Return the lecture data as a Map
        final lectureDoc = querySnapshot.docs.first;
        return lectureDoc.data();
      } else {
        print('Lecture not found!');
        return null;
      }
    } catch (e) {
      print('Error fetching lecture: $e');
      return null;
    }
  }

  /// Fetches meets for a specific user from their attendances.
  Future<List<Meet>> _fetchAttendancesMeetsForUser(String userId) async {
    final firestore = _firestoreService.firestore;
    final meets = <Meet>[];

    try {
      // Fetch attendances for the user
      final attendancesSnapshot =
          await firestore
              .collection('users')
              .doc(userId)
              .collection('attendances')
              .get();

      for (var doc in attendancesSnapshot.docs) {
        try {
          final attendanceData = doc.data();

          // Fetch the associated meet for the attendance
          final meetData = attendanceData['meet'];
          if (meetData != null) {
            final meet = Meet.fromJson(meetData);
            meets.add(meet);
          }
        } catch (e, stackTrace) {
          log(
            'Error processing attendance document: $e',
            stackTrace: stackTrace,
          );
        }
      }
    } catch (e, stackTrace) {
      log('Error fetching meets for user $userId: $e', stackTrace: stackTrace);
    }

    return meets;
  }
}
