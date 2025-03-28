import 'package:freezed_annotation/freezed_annotation.dart';

part 'role.g.dart';

@JsonEnum(alwaysCreate: true)
enum Role {
  @JsonValue('admin')
  admin,

  @JsonValue('teacher')
  teacher,

  @JsonValue('teaching_assistant')
  teachingAssistant,

  @JsonValue('lecturer')
  lecturer,

  @JsonValue('assistant_professor')
  assistantProfessor,

  @JsonValue('associate_professor')
  associateProfessor;

  const Role();

  factory Role.fromJson(String value) => _$RoleEnumMap.entries
      .firstWhere(
        (entry) => entry.value == value,
        orElse: () => MapEntry(Role.teacher, 'teacher'),
      )
      .key;

  String toJson() => _$RoleEnumMap[this]!;
}
