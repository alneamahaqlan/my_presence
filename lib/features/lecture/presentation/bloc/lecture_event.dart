part of 'lecture_bloc.dart';


@freezed
class LectureEvent with _$LectureEvent {
  // Fetch all lectures
  const factory LectureEvent.fetchLectures(Schedule schedule) = FetchLectures;

  // Add a new lecture
  const factory LectureEvent.addLecture(LectureCreateBody lectureCreateBody) = AddLecture;

  // Update an existing lecture
  const factory LectureEvent.updateLecture(Lecture lecture) = UpdateLecture;

  // Delete a lecture
  const factory LectureEvent.deleteLecture(String lectureId) = DeleteLecture;

   
}