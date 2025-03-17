import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/auth_status.dart';
import '../../../../core/models/status.dart';
import '../../data/models/user_model.dart';
import '../../data/repositories/auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc(this._authRepository) : super(const AuthState()) {
    on<EmailChanged>(_onEmailChanged);
    on<GetCurrentUser>(_onGetCurrentUser);
    on<PasswordChanged>(_onPasswordChanged);
    on<UsernameChanged>(_onUsernameChanged);
    on<LoginSubmitted>(_onLoginSubmitted);
    on<SignUpSubmitted>(_onSignUpSubmitted);
    on<SignOutRequested>(_onSignOutRequested);
    on<ResetPasswordSubmitted>(_onResetPasswordSubmitted);
 
  }
  void _onGetCurrentUser(GetCurrentUser event, Emitter<AuthState> emit) async {
    emit(state.copyWith(errorMessage: null, status: AuthStatus.loading()));
    final result = await _authRepository.getCurrentUser();
    result.when(
      success: (user) => emit(state.copyWith(
          status: user == null
              ? AuthStatus.unAuthenticated()
              : AuthStatus.authenticated(),
          user: user)),
      failure: (error) => emit(state.copyWith(
          errorMessage: error.message, status: AuthStatus.failed())),
    );
  }

  void _onResetPasswordSubmitted(
      ResetPasswordSubmitted event, Emitter<AuthState> emit) async {
    emit(state.copyWith(errorMessage: null, status: AuthStatus.loading()));
    final result = await _authRepository.resetPassword(state.email);
    result.when(
      success: (user) =>
          emit(state.copyWith(resetPasswordStatus: Status.success())),
      failure: (error) => emit(state.copyWith(
        errorMessage: error.message,
        resetPasswordStatus: Status.failed(),
      )),
    );
  }

  void _onEmailChanged(EmailChanged event, Emitter<AuthState> emit) {
    emit(state.copyWith(email: event.email!, errorMessage: null));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<AuthState> emit) {
    emit(state.copyWith(password: event.password!, errorMessage: null));
  }

  void _onUsernameChanged(UsernameChanged event, Emitter<AuthState> emit) {
    emit(state.copyWith(username: event.username!, errorMessage: null));
  }

  Future<void> _onLoginSubmitted(
      LoginSubmitted event, Emitter<AuthState> emit) async {
    if (state.email.isEmpty || state.password.isEmpty) {
      emit(state.copyWith(errorMessage: "Please fill in all fields"));
      return;
    }

    emit(state.copyWith(errorMessage: null, status: AuthStatus.loading()));
    final result = await _authRepository.signInWithEmailAndPassword(
        state.email, state.password);
    result.when(
      success: (user) =>
          emit(state.copyWith(status: AuthStatus.authenticated(), user: user)),
      failure: (error) => emit(state.copyWith(
          errorMessage: error.message, status: AuthStatus.failed())),
    );
  }

  Future<void> _onSignUpSubmitted(
      SignUpSubmitted event, Emitter<AuthState> emit) async {
    if (state.email.isEmpty ||
        state.password.isEmpty ||
        state.username.isEmpty) {
      emit(state.copyWith(errorMessage: "Please fill in all fields"));
      return;
    }

    emit(state.copyWith(errorMessage: null, status: AuthStatus.loading()));
    final result = await _authRepository.signUpWithEmailAndPassword(
        state.email, state.password, state.username);
    result.when(
      success: (user) =>
          emit(state.copyWith(status: AuthStatus.authenticated(), user: user)),
      failure: (error) => emit(state.copyWith(
          errorMessage: error.message, status: AuthStatus.failed())),
    );
  }

  Future<void> _onSignOutRequested(
      SignOutRequested event, Emitter<AuthState> emit) async {
    emit(const AuthState(status: AuthStatus.loading()));
    await _authRepository.signOut();
    emit(const AuthState(status: AuthStatus.unAuthenticated()));
  }
}
