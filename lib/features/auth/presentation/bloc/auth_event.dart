part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.emailChanged(String? email) = EmailChanged;
  const factory AuthEvent.passwordChanged(String? password) = PasswordChanged;
  const factory AuthEvent.usernameChanged(String? username) = UsernameChanged;
  const factory AuthEvent.loginSubmitted() = LoginSubmitted;
  const factory AuthEvent.signUpSubmitted() = SignUpSubmitted;
  const factory AuthEvent.signOutRequested() = SignOutRequested;
  const factory AuthEvent.resetPasswordSubmitted() = ResetPasswordSubmitted;
   const factory AuthEvent.getCurrentUser( ) = GetCurrentUser;
}
