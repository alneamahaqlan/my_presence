part of 'root_bloc.dart';

@freezed
class RootState with _$RootState {
  const factory RootState({
    @Default(0) int currentIndex,
  }) = _RootState;

}