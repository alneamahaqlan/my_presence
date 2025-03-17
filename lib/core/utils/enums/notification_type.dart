import 'package:json_annotation/json_annotation.dart';

part 'notification_type.g.dart';

@JsonEnum(alwaysCreate: true)
enum NotificationType {
  @JsonValue('academic')
  academic,

  @JsonValue('administrative')
  administrative,

  @JsonValue('research')
  research,
}

String notificationTypeToJson(NotificationType type) => _$NotificationTypeEnumMap[type]!;

NotificationType notificationTypeFromJson(String value) => _$NotificationTypeEnumMap.entries
    .firstWhere((entry) => entry.value == value, orElse: () => MapEntry(NotificationType.administrative, 'administrative'))
    .key;
