import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_edit_body.freezed.dart';
part 'member_edit_body.g.dart';

@freezed
class MemberEditBody with _$MemberEditBody {
  const factory MemberEditBody({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'activityStatus') String? activityStatus,
    @JsonKey(name: 'specialization') String? specialization,
    @JsonKey(name: 'academic_rank') String? academicRank,
    
  }) = _MemberEditBody;

  factory MemberEditBody.fromJson(Map<String, dynamic> json) =>
      _$MemberEditBodyFromJson(json);
}
