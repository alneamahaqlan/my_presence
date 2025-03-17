import 'package:json_annotation/json_annotation.dart';

part 'attendance_status.g.dart';

@JsonEnum(alwaysCreate: true)
enum AttendanceStatus {
  @JsonValue('present')
  present,

  @JsonValue('absent')
  absent,

  @JsonValue('late')
  late,

  @JsonValue('excused')
  excused,
}

String attendanceStatusToJson(AttendanceStatus status) => _$AttendanceStatusEnumMap[status]!;

AttendanceStatus attendanceStatusFromJson(String value) => _$AttendanceStatusEnumMap.entries
    .firstWhere((entry) => entry.value == value, orElse: () => MapEntry(AttendanceStatus.absent, 'absent'))
    .key;
