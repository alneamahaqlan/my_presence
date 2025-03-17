part of 'subject_bloc.dart';

@freezed
class SubjectState with _$SubjectState {
    const factory SubjectState({
    @Default(Status.initial()) Status status,
   
     @Default([]) List<Subject> subjects,
    String? message,
  }) = _SubjectState;

  factory SubjectState.initial() => const SubjectState();
}
