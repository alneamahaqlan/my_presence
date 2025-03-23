import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/error/api_error_handler.dart';
import '../../../../core/models/api_result.dart';
import '../../../../core/services/firestore_service.dart';
import '../../../department/data/models/department_model.dart';
import '../models/faculty_create_body.dart';
import '../models/faculty_model.dart';

class FacultyRepository {
  final FirestoreService _firestoreService;

  FacultyRepository(this._firestoreService);

  Future<ApiResult<List<Faculty>>> getAllFaculties() async {
    try {
      final firestore = _firestoreService.firestore;

      // Fetch all faculties
      QuerySnapshot facultiesSnapshot =
          await firestore
              .collection('faculties')
              .orderBy('createdAt', descending: true)
              .get();

      // Fetch all departments using a collection group query
      QuerySnapshot departmentsSnapshot =
          await firestore.collectionGroup('departments').get();

      // Group departments by faculty ID
      Map<String, List<Department>> departmentsByFaculty = {};
      for (var departmentDoc in departmentsSnapshot.docs) {
        // Get the faculty ID from the department's path
        String facultyId = departmentDoc.reference.parent.parent!.id;

        if (!departmentsByFaculty.containsKey(facultyId)) {
          departmentsByFaculty[facultyId] = [];
        }

        final departmentData = departmentDoc.data() as Map<String, dynamic>;

        // Create Department object using fromJson
        departmentsByFaculty[facultyId]!.add(
          Department.fromJson(departmentData),
        );
      }

      // Build the faculties list
      List<Faculty> faculties =
          facultiesSnapshot.docs.map((facultyDoc) {
            // log( departmentsByFaculty[facultyDoc.id].toString());
            return Faculty(
              id: facultyDoc.id,
              name: facultyDoc['name'],

              departments: departmentsByFaculty[facultyDoc.id] ?? [],
              createdAt: facultyDoc['createdAt'],
              updatedAt: facultyDoc['updatedAt'],
            );
          }).toList();

      return ApiResult.success(faculties);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  // create new faculty
  Future<ApiResult<String>> createFaculty({
    required FacultyCreateBody facultyCreateBody,
  }) async {
    try {
      final docRef = await _firestoreService.addDocument(
        collectionName: 'faculties',
        data: facultyCreateBody.toJson(),
      );
      return ApiResult.success(docRef.id);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  Future<ApiResult<void>> updateFaculty(Faculty faculty) async {
    try {
      await _firestoreService.updateDocument(
        collectionName: 'faculties',
        documentId: faculty.id,
        data: faculty.toJson(),
      );
      return const ApiResult.success(null);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
