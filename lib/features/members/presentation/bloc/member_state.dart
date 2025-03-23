part of 'member_bloc.dart';

@freezed
class MemberState with _$MemberState {
  const factory MemberState({
    @Default(Status.initial()) Status status,
    @Default(Status.initial()) Status createStatus,
      @Default(Status.initial()) Status editStatus,
    @Default([]) List<UserModel> members,
    String? errorMessage,
  }) = _MemberState;

  factory MemberState.initial() => const MemberState();
}