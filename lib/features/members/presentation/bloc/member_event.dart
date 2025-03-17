part of 'member_bloc.dart';


@freezed
class MemberEvent with _$MemberEvent {
  const factory MemberEvent.saveMember(UserModel user) = SaveMember;
  const factory MemberEvent.loadMembers() = LoadMembers;
  const factory MemberEvent.deleteMember({required String userId ,required bool isActive}) = DeleteMember;
  const factory MemberEvent.editMember({
    required String userId,
    required MemberEditBody memberEditBody,
  }) = EditMember;
   const factory MemberEvent.addEvaluation(String userId, Evaluation evaluation) = AddEvaluation;
     const factory MemberEvent.addResearch({
    required String userId,
    required Research research,
  }) = AddResearch;
}