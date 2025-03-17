part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
    const factory HomeState({
    @Default(Status.initial()) Status status,
    @Default([]) List<Faculty> faculties,
    String? errorMessage,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState();
}
