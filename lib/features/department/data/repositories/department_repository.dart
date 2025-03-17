import '../../../../core/error/api_error_handler.dart';
import '../../../../core/models/api_result.dart';
import '../../../../core/services/firestore_service.dart';
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
    required Department department,
  }) async {
    try {
      final docRef = await _firestoreService.firestore
          .collection('faculties')
          .doc(facultyId)
          .collection('departments')
          .add(department.toJson());
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
}
