part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default("") String email,
    @Default("") String password,
    @Default("") String username,
    UserModel? user,
    String? errorMessage,
    @Default(AuthStatus.initial()) AuthStatus status,
    @Default(Status.initial()) Status resetPasswordStatus,
  }) = _AuthState;
}
