import 'package:my_presence/features/faculty/data/models/faculty_model.dart';

import '../../../../core/error/api_error_handler.dart';
import '../../../../core/models/api_result.dart';
import '../../../../core/services/firestore_service.dart';


class HomeRepository {
  final FirestoreService _firestoreService;

  HomeRepository(this._firestoreService);

 Stream<ApiResult<List<Faculty>>> getFaculties(){
try {
      return _firestoreService.getDocuments(collectionName: 'faculties').map((
        snapshot,
      ) {
        final members =
            snapshot.docs.map((doc) {
              final member = Faculty.fromJson(
                doc.data() as Map<String, dynamic>,
              );
              return member.copyWith(id: doc.id);
            }).toList();
        return ApiResult.success(members);
      });
    } catch (e) {
      return Stream.value(ApiResult.failure(ApiErrorHandler.handle(e)));
    }
 }

 // create new faculty
 Future<ApiResult<String>> createFaculty(Faculty faculty) async {
    try {
      final docRef = await _firestoreService.addDocument(
        collectionName: 'faculties',
        data: faculty.toJson(),
      );
      return ApiResult.success(docRef.id);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  
}