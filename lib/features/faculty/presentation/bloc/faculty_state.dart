part of 'faculty_bloc.dart';

@freezed
class FacultyState with _$FacultyState {
  const factory FacultyState({
    @Default(Status.initial()) Status status,
    @Default([]) List<Faculty> faculties,
    String? message,
  }) = _FacultyState;

  factory FacultyState.initial() => const FacultyState();
}
