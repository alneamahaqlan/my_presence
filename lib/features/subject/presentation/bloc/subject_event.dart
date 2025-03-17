part of 'subject_bloc.dart';

@freezed
class SubjectEvent with _$SubjectEvent {
   const factory SubjectEvent.fetchSubjects() = _FetchSubjects;
     const factory SubjectEvent.addSubject(Subject subject) = AddSubject;
  const factory SubjectEvent.updateSubject(Subject subject) = UpdateSubject;
}