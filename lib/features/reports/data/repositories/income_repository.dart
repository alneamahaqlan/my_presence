import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/error/api_error_handler.dart';
import '../../../../core/models/api_result.dart';
import '../../../../core/services/firestore_service.dart';
import '../models/income_edit_body.dart';
import '../models/income_model.dart';

class IncomeRepository {
  final FirestoreService _firestoreService;

  IncomeRepository(this._firestoreService);

  Future<ApiResult<String>> createIncome(Income income) async {
    try {
      DocumentReference<Map<String, dynamic>> docRef = await _firestoreService
          .addDocument(
            collectionName: 'incomes',
            data: {
              'name': income.name,
              'currency': income.currency,
              'amount': income.amount,
              'description': income.description,
              'date': income.date,
              'category': income.category?.toJson(), // Fix: Serialize category
            },
          );
      return ApiResult.success(docRef.id);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  Future<ApiResult<Map<String, dynamic>>> getUserStatistics() async {
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;

      // Get all users
      CollectionReference usersCollection = firestore.collection('users');
      QuerySnapshot usersSnapshot = await usersCollection.get();
      int totalUsers = usersSnapshot.size;

      // Initialize counters
      int totalPresentAttendances = 0;
      int totalRecordedAttendances = 0;
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
                totalRecordedAttendances +=
                    attendance.length; // Count all attendance records
              }
            }
          }
        }
      }

      // Process evaluations and researches inside users collection
      for (var userDoc in usersSnapshot.docs) {
        Map<String, dynamic>? userData =
            userDoc.data() as Map<String, dynamic>?;

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

                if (evaluation['rateType'] == "teaching_performance") {
                  totalTeachingPerformance += score;
                } else if (evaluation['rateType'] ==
                    "interaction_with_students") {
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

      // Calculate averages and rates
      double teachingPerformanceAvg =
          (totalEvaluations > 0)
              ? (totalTeachingPerformance / totalEvaluations)
              : 0;
      double interactionWithStudentsAvg =
          (totalEvaluations > 0)
              ? (totalInteractionWithStudents / totalEvaluations)
              : 0;
      double attendanceRate =
          (totalRecordedAttendances > 0)
              ? ((totalPresentAttendances / totalRecordedAttendances) * 100)
              : 0;
      double researchRate =
          (totalUsers > 0) ? (totalResearches / totalUsers) : 0;

      // Return data as a map
      final stats = {
        "total_users": totalUsers,
        "attendance_discipline_rate": attendanceRate.toStringAsFixed(2),
        "teaching_performance": teachingPerformanceAvg.toStringAsFixed(2),
        "interaction_with_students": interactionWithStudentsAvg.toStringAsFixed(
          2,
        ),
        "research_publication_rate": researchRate.toStringAsFixed(2),
      };
      return ApiResult.success(stats);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  Future<ApiResult<void>> deleteIncome(String incomeId) async {
    try {
      await _firestoreService.deleteUserDocument(
        collectionName: 'incomes',
        documentId: incomeId,
      );
      return ApiResult.success(null);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  Future<ApiResult<void>> updateIncome({
    required IncomeEditBody income,
    required String documentId,
  }) async {
    // Validate documentId
    if (documentId.isEmpty) {
      return ApiResult.failure(
        ApiErrorHandler.handle(Exception('Document ID cannot be empty')),
      );
    }

    // Check if there are any fields to update
    final data = {
      if (income.name != null) 'name': income.name,
      if (income.currency != null) 'currency': income.currency,
      if (income.amount != null) 'amount': income.amount,
      if (income.description != null) 'description': income.description,
      if (income.date != null) 'date': income.date,
      if (income.category != null) 'category': income.category?.toJson(),
    };

    if (data.isEmpty) {
      // No fields to update
      return ApiResult.failure(
        ApiErrorHandler.handle(Exception('No fields provided for update')),
      );
    }

    try {
      await _firestoreService.updateUserDocument(
        collectionName: 'incomes',
        documentId: documentId,
        data: data,
      );
      return ApiResult.success(null);
    } catch (e) {
      // Log the error for debugging
      log('Error updating income: $e');
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
