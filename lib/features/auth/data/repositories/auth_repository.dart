import '../../../../core/error/api_error_handler.dart';
import '../../../../core/models/api_result.dart';
import '../../../../core/services/firestore_service.dart';
import '../models/user_model.dart';

class AuthRepository {
  final FirestoreService _firestoreService;

  AuthRepository(this._firestoreService);

  Future<ApiResult<UserModel?>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final user = await _firestoreService.signIn(
        email: email,
        password: password,
      );
      return ApiResult.success(user);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  //signUpWithEmailAndPassword

  Future<ApiResult<UserModel?>> signUpWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      final user = await _firestoreService.signUp(
        email: email,
        password: password,
        name: name,
      );
      return ApiResult.success(user);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  // signOut
  Future<ApiResult<void>> signOut() async {
    try {
      await _firestoreService.signOut();
      return const ApiResult.success(null);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  // reset Password
  Future<ApiResult<void>> resetPassword(String email) async {
    try {
      await _firestoreService.resetPassword(email: email);
      return const ApiResult.success(null);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
  //get CurrentUser

  Future<ApiResult<UserModel?>> getCurrentUser() async {
    try {
      UserModel? userModel = await _firestoreService.getUserData();
      return ApiResult.success(userModel);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
