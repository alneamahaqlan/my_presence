import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/error/api_error_handler.dart';
import '../../../../core/models/api_result.dart';
import '../../../../core/services/firestore_service.dart';
import '../../../department/data/models/department_model.dart';
import '../../../lectureSchedule/data/models/schedule_model.dart';
import '../models/lecture_model.dart';
import '../models/meet_model.dart';

class LectureRepository {
  final FirestoreService _firestoreService;

  LectureRepository(this._firestoreService);

  // Fetch all lectures for a specific schedule
  Future<ApiResult<List<Lecture>>> fetchLectures({
    required Department department,
    required Schedule schedule,
  }) async {
    try {
      final snapshot =
          await _firestoreService.firestore
              .collection('faculties')
              .doc(department.faculty.id)
              .collection('departments')
              .doc(department.id)
              .collection('schedules')
              .doc(schedule.id)
              .collection('lectures')
              .get();

      final lectures =
          snapshot.docs.map((doc) {
            final lecture = Lecture.fromJson(doc.data());

            // Ensure each Meet has a unique ID
            final meetingsWithIds =
                lecture.meetings.map((meet) {
                  return meet.copyWith(
                    id:
                        meet.id ??
                        const Uuid().v4(), // Generate a new ID if none exists
                  );
                }).toList();

            return lecture.copyWith(id: doc.id, meetings: meetingsWithIds);
          }).toList();

      return ApiResult.success(lectures);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  // Calculate meeting dates between termStart and termEnd
  List<DateTime> calculateMeetingDates(DateTime termStart, DateTime termEnd) {
    List<DateTime> meetingDates = [];
    DateTime currentDate = termStart;

    while (currentDate.isBefore(termEnd) ||
        currentDate.isAtSameMomentAs(termEnd)) {
      meetingDates.add(currentDate);
      currentDate = currentDate.add(const Duration(days: 7)); // Weekly meetings
    }

    return meetingDates;
  }

  // Generate Meet instances from meeting dates
  List<Meet> generateMeetings(List<DateTime> meetingDates, Schedule schedule) {
    final uuid = Uuid(); // Create an instance of Uuid

    // Extract hour and minute from schedule.startTime and schedule.endTime
    final scheduleStartTime = schedule.termStart.toDate();
    final scheduleEndTime = schedule.termEnd.toDate();

    final startHour = scheduleStartTime.hour;
    final startMinute = scheduleStartTime.minute;
    final endHour = scheduleEndTime.hour;
    final endMinute = scheduleEndTime.minute;

    return meetingDates.map((date) {
      // Set startTime and endTime for each Meet
      final startTime = DateTime(
        date.year,
        date.month,
        date.day,
        startHour,
        startMinute,
      );

      final endTime = DateTime(
        date.year,
        date.month,
        date.day,
        endHour,
        endMinute,
      );

      return Meet(
        id: uuid.v4(), // Generate a unique ID
        startTime: Timestamp.fromDate(startTime), // Set startTime
        endTime: Timestamp.fromDate(endTime), // Set endTime
      );
    }).toList();
  }

  // Add a new lecture with generated meetings
  Future<ApiResult<String>> addLecture({
    required Department department,
    required Schedule schedule,
    required Lecture lecture,
  }) async {
    try {
      // Calculate meeting dates
      final meetingDates = calculateMeetingDates(
        schedule.termStart.toDate(),
        schedule.termEnd.toDate(),
      );

      // Generate meetings with the same hour and minute as schedule.startTime and schedule.endTime
      final meetings = generateMeetings(meetingDates, schedule);

      // Add meetings to the lecture
      final lectureWithMeetings = lecture.copyWith(meetings: meetings);

      final lectureData = {
        'hall': lectureWithMeetings.hall,
        'scheduleId': schedule.id,
        'startTime': lectureWithMeetings.startTime,
        'endTime': lectureWithMeetings.endTime,
        'subject': lectureWithMeetings.subject.toJson(),
        'user': {
          'id': lectureWithMeetings.user.id,
          'name': lectureWithMeetings.user.name,
          'email': lectureWithMeetings.user.email,
          'role': lectureWithMeetings.user.role.name,
          'activityStatus': lectureWithMeetings.user.activityStatus.name,
          'specialization': lectureWithMeetings.user.specialization,
          'academicRank': lectureWithMeetings.user.academicRank,
        },
        'meetings': meetings.map((meet) => meet.toJson()).toList(),
      };

      final docRef = await _firestoreService.firestore
          .collection('faculties')
          .doc(department.faculty.id)
          .collection('departments')
          .doc(department.id)
          .collection('schedules')
          .doc(schedule.id)
          .collection('lectures')
          .add(lectureData);

      return ApiResult.success(docRef.id);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  /// Update an existing lecture
  Future<ApiResult<void>> updateLecture(Lecture lecture) async {
    try {
      if (lecture.id == null) {
        throw Exception('Lecture ID is required for updating');
      }

      await _firestoreService.firestore
          .collection('lectures')
          .doc(lecture.id)
          .update(lecture.toJson());

      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  /// Delete a lecture
  Future<ApiResult<void>> deleteLecture(String lectureId) async {
    try {
      await _firestoreService.firestore
          .collection('lectures')
          .doc(lectureId)
          .delete();

      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
