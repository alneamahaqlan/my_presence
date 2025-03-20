part of 'lecture_bloc.dart';


@freezed
class LectureEvent with _$LectureEvent {
  // Fetch all lectures
  const factory LectureEvent.fetchLectures() = FetchLectures;

  // Add a new lecture
  const factory LectureEvent.addLecture(Lecture lecture) = AddLecture;

  // Update an existing lecture
  const factory LectureEvent.updateLecture(Lecture lecture) = UpdateLecture;

  // Delete a lecture
  const factory LectureEvent.deleteLecture(String lectureId) = DeleteLecture;

    const factory LectureEvent.setSchedule({
    required  Schedule schedule,
    required Department department
  }) = SetSchedule;
}