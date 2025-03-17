import 'package:cloud_firestore/cloud_firestore.dart';

import 'api_error.dart';

class ApiErrorHandler {
  static ApiError handle(dynamic error) {
    if (error is FirebaseException) {
      return _handleFirebaseException(error);
    } else if (error is Exception) {
      return _handleGenericException(error);
    } else {
      return const ApiError.generic(message: 'An unexpected error occurred.');
    }
  }

  static ApiError _handleFirebaseException(FirebaseException error) {
    switch (error.code) {
      case 'permission-denied':
        return ApiError.firebase(
          code: error.code,
          message: 'You do not have permission to access this resource.',
        );
      case 'unavailable':
        return ApiError.firebase(
          code: error.code,
          message:
              'The service is currently unavailable. Please try again later.',
        );
      case 'invalid-argument':
        return ApiError.firebase(
          code: error.code,
          message: 'Invalid data provided. Please check your input.',
        );
      case 'not-found':
        return ApiError.firebase(
          code: error.code,
          message: 'The requested resource was not found.',
        );
      default:
        return ApiError.firebase(
          code: error.code,
          message: 'A Firebase error occurred: ${error.message}',
        );
    }
  }

  static ApiError _handleGenericException(Exception error) {
    if (error is FormatException) {
      return ApiError.generic(message: 'Data format error: ${error.message}');
    } else if (error is ArgumentError) {
      return ApiError.generic(message: 'Invalid argument: $error');
    } else if (error is StateError) {
      return ApiError.generic(message: 'State error: $error');
    } else {
      return ApiError.generic(
          message: 'An unexpected error occurred: ${error.toString()}');
    }
  }
}
