import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error.freezed.dart';
part 'api_error.g.dart';

@freezed
class ApiError with _$ApiError {
  const factory ApiError.firebase({
    required String code,
    required String message,
  }) = FirebaseError;

  const factory ApiError.generic({
    required String message,
  }) = GenericError;

  const factory ApiError.network({
    required String message,
  }) = NetworkError;

  const factory ApiError.unauthorized({
    required String message,
  }) = UnauthorizedError;

  const factory ApiError.notFound({
    required String message,
  }) = NotFoundError;

  const factory ApiError.validation({
    required String message,
    required Map<String, dynamic> errors,
  }) = ValidationError;

  factory ApiError.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorFromJson(json);
}