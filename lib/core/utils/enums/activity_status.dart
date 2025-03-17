import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_status.g.dart';

@JsonEnum(alwaysCreate: true)
enum ActivityStatus {
  @JsonValue('available')
  available,

  @JsonValue('busy')
  busy,

  @JsonValue('in_lecture')
  inLecture,

  @JsonValue('unknown')
  unknown;

  const ActivityStatus();

  factory ActivityStatus.fromJson(String value) => _$ActivityStatusEnumMap.entries
      .firstWhere(
        (entry) => entry.value == value,
        orElse: () => MapEntry(ActivityStatus.unknown, 'unknown'),
      )
      .key;

  String toJson() => _$ActivityStatusEnumMap[this]!;
}
