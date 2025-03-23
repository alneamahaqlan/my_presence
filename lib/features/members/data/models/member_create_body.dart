import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_create_body.freezed.dart';
part 'member_create_body.g.dart';

@freezed
class MemberCreateBody with _$MemberCreateBody {
  const factory MemberCreateBody({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'role') required String role,
    @JsonKey(name: 'activityStatus') required String activityStatus,
    @JsonKey(name: 'specialization') required String specialization,
    @JsonKey(name: 'academic_rank') required String academicRank,
    @JsonKey(name: 'isActive') @Default(true) bool isActive,
  }) = _MemberCreateBody;

  factory MemberCreateBody.fromJson(Map<String, dynamic> json) =>
      _$MemberCreateBodyFromJson(json);
}
