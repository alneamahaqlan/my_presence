import 'dart:developer';

import 'package:my_presence/features/faculty/data/models/faculty_model.dart';

import '../../../../core/error/api_error_handler.dart';
import '../../../../core/models/api_result.dart';
import '../../../../core/services/firestore_service.dart';
import '../../../lectureSchedule/data/models/schedule_model.dart';
import '../models/department_create_body.dart';
import '../models/department_model.dart';

class DepartmentRepository {
  final FirestoreService _firestoreService;

  DepartmentRepository(this._firestoreService);

  //create department
  Future<ApiResult<String>> createDepartment({
    required String facultyId,
    required DepartmentCreateBody departmentCreateBody,
  }) async {
    try {
      log('Creating department...');
      log('Faculty ID: $facultyId');
      log('Department create body: ${departmentCreateBody.toJson()}');
      final docRef = await _firestoreService.firestore
          .collection('faculties')
          .doc(facultyId)
          .collection('departments')
          .add(departmentCreateBody.toJson());
      return ApiResult.success(docRef.id);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  //update Future
  Future<ApiResult<void>> updateDepartment(Department department) async {
    try {
      await _firestoreService.updateDocument(
        collectionName: 'departments',
        documentId: department.id,
        data: department.toJson(),
      );
      return const ApiResult.success(null);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  Future<ApiResult<List<Department>>> getAllDepartments() async {
    try {
      // Perform a collection group query on the "departments" subcollection
      final querySnapshot =
          await _firestoreService.firestore
              .collectionGroup('departments')
              .get();

      // Convert Firestore documents to a list of Department objects
      final departments = await Future.wait(
        querySnapshot.docs.map((doc) async {
          final data = doc.data(); // Get the document data as a Map

          // Fetch the schedules subcollection for the current department (if needed)
          final schedulesSnapshot =
              await doc.reference.collection('schedules').get();

          // Map schedules subcollection documents to Schedule objects
          final schedules =
              schedulesSnapshot.docs.map((scheduleDoc) {
                return Schedule.fromJson(scheduleDoc.data());
              }).toList();

          return Department(
            id: doc.id, // Use the document ID as the department ID
            name: data['name'] ?? '', // Ensure name is not null
            faculty: Faculty.fromJson(
              data['faculty'],
            ), // Ensure facultyName is not null
            // Ensure facultyId is not null
            schedules: schedules, // Assign parsed schedules
            createdAt: data['createdAt'], // Can be null
            updatedAt: data['updatedAt'], // Can be null
          );
        }).toList(),
      );

      return ApiResult.success(departments);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
