import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart'; // Import Uuid package

import '../../../../core/converters/timestamp_converter.dart';
import '../../../auth/data/models/user_model.dart';
import '../../../lectureSchedule/data/models/schedule_model.dart';
import '../../../subject/data/models/subject_model.dart';
import 'meet_model.dart';

part 'lecture_create_body.g.dart';

@JsonSerializable()
class LectureCreateBody {
  @JsonKey(name: 'subject')
  final Subject subject;

  @JsonKey(name: 'user')
  final UserModel user;

  @JsonKey(name: 'schedule')
  final Schedule schedule;

  @TimestampConverter()
  @JsonKey(name: 'startTime')
  final Timestamp startTime;

  @TimestampConverter()
  @JsonKey(name: 'endTime')
  final Timestamp endTime;

  @JsonKey(name: 'hall')
  final String hall;

  @JsonKey(name: 'meetings')
  final List<Meet> meetings;

  @TimestampConverter()
  @JsonKey(name: 'createdAt')
  final Timestamp? createdAt;

  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  final Timestamp? updatedAt;

  LectureCreateBody({
    required this.subject,
    required this.user,
    required this.schedule,
    required this.startTime,
    required this.endTime,
    required this.hall,
    this.meetings = const [],
    this.createdAt,
    this.updatedAt,
  });

  factory LectureCreateBody.fromJson(Map<String, dynamic> json) =>
      _$LectureCreateBodyFromJson(json);

Map<String, dynamic> toJson() {
  // Generate meeting dates based on the schedule's termStart and termEnd
  final meetingDates = calculateMeetingDates(
    schedule.termStart.toDate(),
    schedule.termEnd.toDate(),
  );

  // Generate meetings using the generateMeetings method
  final generatedMeetings = generateMeetings(meetingDates, schedule);

  return {
    'subject': subject.toJson(),
    'user': {
      'id': user.id,
      'name': user.name,
      'email': user.email,
      'role': user.role.name,
      'activityStatus': user.activityStatus.name,
      'specialization': user.specialization,
      'academicRank': user.academicRank,
    },
    'schedule': {
      'id': schedule.id,
      'termStart': schedule.termStart,
      'termEnd': schedule.termEnd,
      'title': schedule.title,
      'level': schedule.level,
      'division': schedule.division,
      'department': {
        'id': schedule.department.id,
        'name': schedule.department.name,
        'faculty': schedule.department.faculty?.toJson(),
        'schedules': schedule.department.schedules,
        'createdAt': schedule.department.createdAt,
        'updatedAt': schedule.department.updatedAt,
      },
      'createdAt': schedule.createdAt,
      'updatedAt': schedule.updatedAt,
    },
    'startTime': startTime,
    'endTime': endTime,
    'hall': hall,
    'meetings': generatedMeetings.map((e) => e.toJson()).toList(), // Serialize meetings
    'createdAt': createdAt ?? Timestamp.now(),
    'updatedAt': updatedAt ?? Timestamp.now(),
  };
}

  // Generate meetings with the same hour and minute as schedule.startTime and schedule.endTime
  static List<Meet> generateMeetings(
    List<DateTime> meetingDates,
    Schedule schedule,
  ) {
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
        startTime: Timestamp.fromDate(startTime), // Use Timestamp
        endTime: Timestamp.fromDate(endTime), // Use Timestamp
      );
    }).toList();
  }

  // Calculate meeting dates
  static List<DateTime> calculateMeetingDates(
    DateTime termStart,
    DateTime termEnd,
  ) {
    List<DateTime> meetingDates = [];
    DateTime currentDate = termStart;

    while (currentDate.isBefore(termEnd) ||
        currentDate.isAtSameMomentAs(termEnd)) {
      meetingDates.add(currentDate);
      currentDate = currentDate.add(const Duration(days: 7)); // Weekly meetings
    }

    return meetingDates;
  }
}
