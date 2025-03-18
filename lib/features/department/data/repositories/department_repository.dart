import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/error/api_error_handler.dart';
import '../../../../core/models/api_result.dart';
import '../../../../core/services/firestore_service.dart';
import '../models/department_create_body.dart';
import '../models/department_model.dart';

class DepartmentRepository {
  final FirestoreService _firestoreService;

  DepartmentRepository(this._firestoreService);

  Stream<ApiResult<List<Department>>> getDepartments() {
    try {
      return _firestoreService.getDocuments(collectionName: 'departments').map((
        snapshot,
      ) {
        final departments =
            snapshot.docs.map((doc) {
              final member = Department.fromJson(
                doc.data() as Map<String, dynamic>,
              );
              return member.copyWith(id: doc.id);
            }).toList();
        return ApiResult.success(departments);
      });
    } catch (e) {
      return Stream.value(ApiResult.failure(ApiErrorHandler.handle(e)));
    }
  }

  //create department
  Future<ApiResult<String>> createDepartment({
    required String facultyId,
    required DepartmentCreateBody departmentCreateBody,
  }) async {
    try {
        final departmentData = {
      ...departmentCreateBody.toJson(),
      'createdAt': Timestamp.now(),
      'updatedAt': Timestamp.now(),
    };
      final docRef = await _firestoreService.firestore
          .collection('faculties')
          .doc(facultyId)
          .collection('departments')
          .add(departmentData);
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
    final querySnapshot = await _firestoreService.firestore
        .collectionGroup('departments')
        .get();

    // Convert Firestore documents to a list of Department objects
    final departments = querySnapshot.docs.map((doc) {
   
      return Department(
        id: doc.id, 
        name: doc['name'], 
      );
    }).toList();

    return ApiResult.success(departments);
  } catch (e) {
    return ApiResult.failure(ApiErrorHandler.handle(e));
  }
}
}
