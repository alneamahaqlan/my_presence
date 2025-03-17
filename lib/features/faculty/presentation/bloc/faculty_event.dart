part of 'faculty_bloc.dart';

@freezed
class FacultyEvent with _$FacultyEvent {
   const factory FacultyEvent.fetchFaculties() = FetchFaculties;
     const factory FacultyEvent.addFaculty(Faculty faculty) = AddFaculty;
  const factory FacultyEvent.updateFaculty(Faculty faculty) = UpdateFaculty;


}