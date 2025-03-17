part of 'member_bloc.dart';

@freezed
class MemberState with _$MemberState {
  const factory MemberState({
    @Default(Status.initial()) Status status,
    @Default([]) List<UserModel> members,
    String? errorMessage,
  }) = _MemberState;

  factory MemberState.initial() => const MemberState();
}