import '../../../../core/error/api_error_handler.dart';
import '../../../../core/models/api_result.dart';
import '../../../../core/services/firestore_service.dart';
import '../models/subject_model.dart';

class SubjectRepository {
  final FirestoreService _firestoreService;

  SubjectRepository(this._firestoreService);

  //Get Subjects

  Stream<ApiResult<List<Subject>>> getSubjects() {
    try {
      return _firestoreService.getDocuments(collectionName: 'subjects').map((
        snapshot,
      ) {
        final subjects =
            snapshot.docs.map((doc) {
              final member = Subject.fromJson(
                doc.data() as Map<String, dynamic>,
              );
              return member.copyWith(id: doc.id);
            }).toList();
        return ApiResult.success(subjects);
      });
    } catch (e) {
      return Stream.value(ApiResult.failure(ApiErrorHandler.handle(e)));
    }
  }

  //create subject
  Future<ApiResult<String>> createSubject(Subject subject) async {
    try {
    
      final docRef = await _firestoreService.addDocument(
        collectionName: 'subjects',
        data: {
          'name': subject.name,
        
          'code': subject.code,
          'number': subject.number,
        },
      );
      return ApiResult.success(docRef.id);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  //update subject
  Future<ApiResult<void>> updateSubject(Subject subject) async {
    try {
      await _firestoreService.updateDocument(
        collectionName: 'subjects',
        documentId: subject.id,
        data: subject.toJson(),
      );
      return const ApiResult.success(null);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
