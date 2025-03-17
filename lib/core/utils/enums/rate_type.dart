import 'package:json_annotation/json_annotation.dart';

part 'rate_type.g.dart';

@JsonEnum(alwaysCreate: true)
enum RateType {
  @JsonValue('teaching_performance')
  teachingPerformance,

  @JsonValue('interaction_with_students')
  interactionWithStudents,

  @JsonValue('management')
  management,
}

String rateTypeToJson(RateType type) => _$RateTypeEnumMap[type]!;

RateType rateTypeFromJson(String value) => _$RateTypeEnumMap.entries
    .firstWhere((entry) => entry.value == value, orElse: () => MapEntry(RateType.management, 'management'))
    .key;
