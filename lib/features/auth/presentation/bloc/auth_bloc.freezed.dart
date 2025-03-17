// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) emailChanged,
    required TResult Function(String? password) passwordChanged,
    required TResult Function(String? username) usernameChanged,
    required TResult Function() loginSubmitted,
    required TResult Function() signUpSubmitted,
    required TResult Function() signOutRequested,
    required TResult Function() resetPasswordSubmitted,
    required TResult Function() getCurrentUser,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email)? emailChanged,
    TResult? Function(String? password)? passwordChanged,
    TResult? Function(String? username)? usernameChanged,
    TResult? Function()? loginSubmitted,
    TResult? Function()? signUpSubmitted,
    TResult? Function()? signOutRequested,
    TResult? Function()? resetPasswordSubmitted,
    TResult? Function()? getCurrentUser,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? emailChanged,
    TResult Function(String? password)? passwordChanged,
    TResult Function(String? username)? usernameChanged,
    TResult Function()? loginSubmitted,
    TResult Function()? signUpSubmitted,
    TResult Function()? signOutRequested,
    TResult Function()? resetPasswordSubmitted,
    TResult Function()? getCurrentUser,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(LoginSubmitted value) loginSubmitted,
    required TResult Function(SignUpSubmitted value) signUpSubmitted,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(ResetPasswordSubmitted value)
    resetPasswordSubmitted,
    required TResult Function(GetCurrentUser value) getCurrentUser,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(LoginSubmitted value)? loginSubmitted,
    TResult? Function(SignUpSubmitted value)? signUpSubmitted,
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(ResetPasswordSubmitted value)? resetPasswordSubmitted,
    TResult? Function(GetCurrentUser value)? getCurrentUser,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(SignUpSubmitted value)? signUpSubmitted,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(ResetPasswordSubmitted value)? resetPasswordSubmitted,
    TResult Function(GetCurrentUser value)? getCurrentUser,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
    _$EmailChangedImpl value,
    $Res Function(_$EmailChangedImpl) then,
  ) = __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? email});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
    _$EmailChangedImpl _value,
    $Res Function(_$EmailChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = freezed}) {
    return _then(
      _$EmailChangedImpl(
        freezed == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                as String?,
      ),
    );
  }
}

/// @nodoc

class _$EmailChangedImpl implements EmailChanged {
  const _$EmailChangedImpl(this.email);

  @override
  final String? email;

  @override
  String toString() {
    return 'AuthEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) emailChanged,
    required TResult Function(String? password) passwordChanged,
    required TResult Function(String? username) usernameChanged,
    required TResult Function() loginSubmitted,
    required TResult Function() signUpSubmitted,
    required TResult Function() signOutRequested,
    required TResult Function() resetPasswordSubmitted,
    required TResult Function() getCurrentUser,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email)? emailChanged,
    TResult? Function(String? password)? passwordChanged,
    TResult? Function(String? username)? usernameChanged,
    TResult? Function()? loginSubmitted,
    TResult? Function()? signUpSubmitted,
    TResult? Function()? signOutRequested,
    TResult? Function()? resetPasswordSubmitted,
    TResult? Function()? getCurrentUser,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? emailChanged,
    TResult Function(String? password)? passwordChanged,
    TResult Function(String? username)? usernameChanged,
    TResult Function()? loginSubmitted,
    TResult Function()? signUpSubmitted,
    TResult Function()? signOutRequested,
    TResult Function()? resetPasswordSubmitted,
    TResult Function()? getCurrentUser,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(LoginSubmitted value) loginSubmitted,
    required TResult Function(SignUpSubmitted value) signUpSubmitted,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(ResetPasswordSubmitted value)
    resetPasswordSubmitted,
    required TResult Function(GetCurrentUser value) getCurrentUser,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(LoginSubmitted value)? loginSubmitted,
    TResult? Function(SignUpSubmitted value)? signUpSubmitted,
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(ResetPasswordSubmitted value)? resetPasswordSubmitted,
    TResult? Function(GetCurrentUser value)? getCurrentUser,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(SignUpSubmitted value)? signUpSubmitted,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(ResetPasswordSubmitted value)? resetPasswordSubmitted,
    TResult Function(GetCurrentUser value)? getCurrentUser,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements AuthEvent {
  const factory EmailChanged(final String? email) = _$EmailChangedImpl;

  String? get email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(
    _$PasswordChangedImpl value,
    $Res Function(_$PasswordChangedImpl) then,
  ) = __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? password});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
    _$PasswordChangedImpl _value,
    $Res Function(_$PasswordChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? password = freezed}) {
    return _then(
      _$PasswordChangedImpl(
        freezed == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                as String?,
      ),
    );
  }
}

/// @nodoc

class _$PasswordChangedImpl implements PasswordChanged {
  const _$PasswordChangedImpl(this.password);

  @override
  final String? password;

  @override
  String toString() {
    return 'AuthEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) emailChanged,
    required TResult Function(String? password) passwordChanged,
    required TResult Function(String? username) usernameChanged,
    required TResult Function() loginSubmitted,
    required TResult Function() signUpSubmitted,
    required TResult Function() signOutRequested,
    required TResult Function() resetPasswordSubmitted,
    required TResult Function() getCurrentUser,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email)? emailChanged,
    TResult? Function(String? password)? passwordChanged,
    TResult? Function(String? username)? usernameChanged,
    TResult? Function()? loginSubmitted,
    TResult? Function()? signUpSubmitted,
    TResult? Function()? signOutRequested,
    TResult? Function()? resetPasswordSubmitted,
    TResult? Function()? getCurrentUser,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? emailChanged,
    TResult Function(String? password)? passwordChanged,
    TResult Function(String? username)? usernameChanged,
    TResult Function()? loginSubmitted,
    TResult Function()? signUpSubmitted,
    TResult Function()? signOutRequested,
    TResult Function()? resetPasswordSubmitted,
    TResult Function()? getCurrentUser,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(LoginSubmitted value) loginSubmitted,
    required TResult Function(SignUpSubmitted value) signUpSubmitted,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(ResetPasswordSubmitted value)
    resetPasswordSubmitted,
    required TResult Function(GetCurrentUser value) getCurrentUser,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(LoginSubmitted value)? loginSubmitted,
    TResult? Function(SignUpSubmitted value)? signUpSubmitted,
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(ResetPasswordSubmitted value)? resetPasswordSubmitted,
    TResult? Function(GetCurrentUser value)? getCurrentUser,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(SignUpSubmitted value)? signUpSubmitted,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(ResetPasswordSubmitted value)? resetPasswordSubmitted,
    TResult Function(GetCurrentUser value)? getCurrentUser,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements AuthEvent {
  const factory PasswordChanged(final String? password) = _$PasswordChangedImpl;

  String? get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsernameChangedImplCopyWith<$Res> {
  factory _$$UsernameChangedImplCopyWith(
    _$UsernameChangedImpl value,
    $Res Function(_$UsernameChangedImpl) then,
  ) = __$$UsernameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? username});
}

/// @nodoc
class __$$UsernameChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UsernameChangedImpl>
    implements _$$UsernameChangedImplCopyWith<$Res> {
  __$$UsernameChangedImplCopyWithImpl(
    _$UsernameChangedImpl _value,
    $Res Function(_$UsernameChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? username = freezed}) {
    return _then(
      _$UsernameChangedImpl(
        freezed == username
            ? _value.username
            : username // ignore: cast_nullable_to_non_nullable
                as String?,
      ),
    );
  }
}

/// @nodoc

class _$UsernameChangedImpl implements UsernameChanged {
  const _$UsernameChangedImpl(this.username);

  @override
  final String? username;

  @override
  String toString() {
    return 'AuthEvent.usernameChanged(username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsernameChangedImpl &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsernameChangedImplCopyWith<_$UsernameChangedImpl> get copyWith =>
      __$$UsernameChangedImplCopyWithImpl<_$UsernameChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) emailChanged,
    required TResult Function(String? password) passwordChanged,
    required TResult Function(String? username) usernameChanged,
    required TResult Function() loginSubmitted,
    required TResult Function() signUpSubmitted,
    required TResult Function() signOutRequested,
    required TResult Function() resetPasswordSubmitted,
    required TResult Function() getCurrentUser,
  }) {
    return usernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email)? emailChanged,
    TResult? Function(String? password)? passwordChanged,
    TResult? Function(String? username)? usernameChanged,
    TResult? Function()? loginSubmitted,
    TResult? Function()? signUpSubmitted,
    TResult? Function()? signOutRequested,
    TResult? Function()? resetPasswordSubmitted,
    TResult? Function()? getCurrentUser,
  }) {
    return usernameChanged?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? emailChanged,
    TResult Function(String? password)? passwordChanged,
    TResult Function(String? username)? usernameChanged,
    TResult Function()? loginSubmitted,
    TResult Function()? signUpSubmitted,
    TResult Function()? signOutRequested,
    TResult Function()? resetPasswordSubmitted,
    TResult Function()? getCurrentUser,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(LoginSubmitted value) loginSubmitted,
    required TResult Function(SignUpSubmitted value) signUpSubmitted,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(ResetPasswordSubmitted value)
    resetPasswordSubmitted,
    required TResult Function(GetCurrentUser value) getCurrentUser,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(LoginSubmitted value)? loginSubmitted,
    TResult? Function(SignUpSubmitted value)? signUpSubmitted,
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(ResetPasswordSubmitted value)? resetPasswordSubmitted,
    TResult? Function(GetCurrentUser value)? getCurrentUser,
  }) {
    return usernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(SignUpSubmitted value)? signUpSubmitted,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(ResetPasswordSubmitted value)? resetPasswordSubmitted,
    TResult Function(GetCurrentUser value)? getCurrentUser,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements AuthEvent {
  const factory UsernameChanged(final String? username) = _$UsernameChangedImpl;

  String? get username;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsernameChangedImplCopyWith<_$UsernameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginSubmittedImplCopyWith<$Res> {
  factory _$$LoginSubmittedImplCopyWith(
    _$LoginSubmittedImpl value,
    $Res Function(_$LoginSubmittedImpl) then,
  ) = __$$LoginSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginSubmittedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginSubmittedImpl>
    implements _$$LoginSubmittedImplCopyWith<$Res> {
  __$$LoginSubmittedImplCopyWithImpl(
    _$LoginSubmittedImpl _value,
    $Res Function(_$LoginSubmittedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginSubmittedImpl implements LoginSubmitted {
  const _$LoginSubmittedImpl();

  @override
  String toString() {
    return 'AuthEvent.loginSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) emailChanged,
    required TResult Function(String? password) passwordChanged,
    required TResult Function(String? username) usernameChanged,
    required TResult Function() loginSubmitted,
    required TResult Function() signUpSubmitted,
    required TResult Function() signOutRequested,
    required TResult Function() resetPasswordSubmitted,
    required TResult Function() getCurrentUser,
  }) {
    return loginSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email)? emailChanged,
    TResult? Function(String? password)? passwordChanged,
    TResult? Function(String? username)? usernameChanged,
    TResult? Function()? loginSubmitted,
    TResult? Function()? signUpSubmitted,
    TResult? Function()? signOutRequested,
    TResult? Function()? resetPasswordSubmitted,
    TResult? Function()? getCurrentUser,
  }) {
    return loginSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? emailChanged,
    TResult Function(String? password)? passwordChanged,
    TResult Function(String? username)? usernameChanged,
    TResult Function()? loginSubmitted,
    TResult Function()? signUpSubmitted,
    TResult Function()? signOutRequested,
    TResult Function()? resetPasswordSubmitted,
    TResult Function()? getCurrentUser,
    required TResult orElse(),
  }) {
    if (loginSubmitted != null) {
      return loginSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(LoginSubmitted value) loginSubmitted,
    required TResult Function(SignUpSubmitted value) signUpSubmitted,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(ResetPasswordSubmitted value)
    resetPasswordSubmitted,
    required TResult Function(GetCurrentUser value) getCurrentUser,
  }) {
    return loginSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(LoginSubmitted value)? loginSubmitted,
    TResult? Function(SignUpSubmitted value)? signUpSubmitted,
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(ResetPasswordSubmitted value)? resetPasswordSubmitted,
    TResult? Function(GetCurrentUser value)? getCurrentUser,
  }) {
    return loginSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(SignUpSubmitted value)? signUpSubmitted,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(ResetPasswordSubmitted value)? resetPasswordSubmitted,
    TResult Function(GetCurrentUser value)? getCurrentUser,
    required TResult orElse(),
  }) {
    if (loginSubmitted != null) {
      return loginSubmitted(this);
    }
    return orElse();
  }
}

abstract class LoginSubmitted implements AuthEvent {
  const factory LoginSubmitted() = _$LoginSubmittedImpl;
}

/// @nodoc
abstract class _$$SignUpSubmittedImplCopyWith<$Res> {
  factory _$$SignUpSubmittedImplCopyWith(
    _$SignUpSubmittedImpl value,
    $Res Function(_$SignUpSubmittedImpl) then,
  ) = __$$SignUpSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpSubmittedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpSubmittedImpl>
    implements _$$SignUpSubmittedImplCopyWith<$Res> {
  __$$SignUpSubmittedImplCopyWithImpl(
    _$SignUpSubmittedImpl _value,
    $Res Function(_$SignUpSubmittedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignUpSubmittedImpl implements SignUpSubmitted {
  const _$SignUpSubmittedImpl();

  @override
  String toString() {
    return 'AuthEvent.signUpSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) emailChanged,
    required TResult Function(String? password) passwordChanged,
    required TResult Function(String? username) usernameChanged,
    required TResult Function() loginSubmitted,
    required TResult Function() signUpSubmitted,
    required TResult Function() signOutRequested,
    required TResult Function() resetPasswordSubmitted,
    required TResult Function() getCurrentUser,
  }) {
    return signUpSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email)? emailChanged,
    TResult? Function(String? password)? passwordChanged,
    TResult? Function(String? username)? usernameChanged,
    TResult? Function()? loginSubmitted,
    TResult? Function()? signUpSubmitted,
    TResult? Function()? signOutRequested,
    TResult? Function()? resetPasswordSubmitted,
    TResult? Function()? getCurrentUser,
  }) {
    return signUpSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? emailChanged,
    TResult Function(String? password)? passwordChanged,
    TResult Function(String? username)? usernameChanged,
    TResult Function()? loginSubmitted,
    TResult Function()? signUpSubmitted,
    TResult Function()? signOutRequested,
    TResult Function()? resetPasswordSubmitted,
    TResult Function()? getCurrentUser,
    required TResult orElse(),
  }) {
    if (signUpSubmitted != null) {
      return signUpSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(LoginSubmitted value) loginSubmitted,
    required TResult Function(SignUpSubmitted value) signUpSubmitted,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(ResetPasswordSubmitted value)
    resetPasswordSubmitted,
    required TResult Function(GetCurrentUser value) getCurrentUser,
  }) {
    return signUpSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(LoginSubmitted value)? loginSubmitted,
    TResult? Function(SignUpSubmitted value)? signUpSubmitted,
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(ResetPasswordSubmitted value)? resetPasswordSubmitted,
    TResult? Function(GetCurrentUser value)? getCurrentUser,
  }) {
    return signUpSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(SignUpSubmitted value)? signUpSubmitted,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(ResetPasswordSubmitted value)? resetPasswordSubmitted,
    TResult Function(GetCurrentUser value)? getCurrentUser,
    required TResult orElse(),
  }) {
    if (signUpSubmitted != null) {
      return signUpSubmitted(this);
    }
    return orElse();
  }
}

abstract class SignUpSubmitted implements AuthEvent {
  const factory SignUpSubmitted() = _$SignUpSubmittedImpl;
}

/// @nodoc
abstract class _$$SignOutRequestedImplCopyWith<$Res> {
  factory _$$SignOutRequestedImplCopyWith(
    _$SignOutRequestedImpl value,
    $Res Function(_$SignOutRequestedImpl) then,
  ) = __$$SignOutRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutRequestedImpl>
    implements _$$SignOutRequestedImplCopyWith<$Res> {
  __$$SignOutRequestedImplCopyWithImpl(
    _$SignOutRequestedImpl _value,
    $Res Function(_$SignOutRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignOutRequestedImpl implements SignOutRequested {
  const _$SignOutRequestedImpl();

  @override
  String toString() {
    return 'AuthEvent.signOutRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) emailChanged,
    required TResult Function(String? password) passwordChanged,
    required TResult Function(String? username) usernameChanged,
    required TResult Function() loginSubmitted,
    required TResult Function() signUpSubmitted,
    required TResult Function() signOutRequested,
    required TResult Function() resetPasswordSubmitted,
    required TResult Function() getCurrentUser,
  }) {
    return signOutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email)? emailChanged,
    TResult? Function(String? password)? passwordChanged,
    TResult? Function(String? username)? usernameChanged,
    TResult? Function()? loginSubmitted,
    TResult? Function()? signUpSubmitted,
    TResult? Function()? signOutRequested,
    TResult? Function()? resetPasswordSubmitted,
    TResult? Function()? getCurrentUser,
  }) {
    return signOutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? emailChanged,
    TResult Function(String? password)? passwordChanged,
    TResult Function(String? username)? usernameChanged,
    TResult Function()? loginSubmitted,
    TResult Function()? signUpSubmitted,
    TResult Function()? signOutRequested,
    TResult Function()? resetPasswordSubmitted,
    TResult Function()? getCurrentUser,
    required TResult orElse(),
  }) {
    if (signOutRequested != null) {
      return signOutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(LoginSubmitted value) loginSubmitted,
    required TResult Function(SignUpSubmitted value) signUpSubmitted,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(ResetPasswordSubmitted value)
    resetPasswordSubmitted,
    required TResult Function(GetCurrentUser value) getCurrentUser,
  }) {
    return signOutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(LoginSubmitted value)? loginSubmitted,
    TResult? Function(SignUpSubmitted value)? signUpSubmitted,
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(ResetPasswordSubmitted value)? resetPasswordSubmitted,
    TResult? Function(GetCurrentUser value)? getCurrentUser,
  }) {
    return signOutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(SignUpSubmitted value)? signUpSubmitted,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(ResetPasswordSubmitted value)? resetPasswordSubmitted,
    TResult Function(GetCurrentUser value)? getCurrentUser,
    required TResult orElse(),
  }) {
    if (signOutRequested != null) {
      return signOutRequested(this);
    }
    return orElse();
  }
}

abstract class SignOutRequested implements AuthEvent {
  const factory SignOutRequested() = _$SignOutRequestedImpl;
}

/// @nodoc
abstract class _$$ResetPasswordSubmittedImplCopyWith<$Res> {
  factory _$$ResetPasswordSubmittedImplCopyWith(
    _$ResetPasswordSubmittedImpl value,
    $Res Function(_$ResetPasswordSubmittedImpl) then,
  ) = __$$ResetPasswordSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetPasswordSubmittedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ResetPasswordSubmittedImpl>
    implements _$$ResetPasswordSubmittedImplCopyWith<$Res> {
  __$$ResetPasswordSubmittedImplCopyWithImpl(
    _$ResetPasswordSubmittedImpl _value,
    $Res Function(_$ResetPasswordSubmittedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetPasswordSubmittedImpl implements ResetPasswordSubmitted {
  const _$ResetPasswordSubmittedImpl();

  @override
  String toString() {
    return 'AuthEvent.resetPasswordSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) emailChanged,
    required TResult Function(String? password) passwordChanged,
    required TResult Function(String? username) usernameChanged,
    required TResult Function() loginSubmitted,
    required TResult Function() signUpSubmitted,
    required TResult Function() signOutRequested,
    required TResult Function() resetPasswordSubmitted,
    required TResult Function() getCurrentUser,
  }) {
    return resetPasswordSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email)? emailChanged,
    TResult? Function(String? password)? passwordChanged,
    TResult? Function(String? username)? usernameChanged,
    TResult? Function()? loginSubmitted,
    TResult? Function()? signUpSubmitted,
    TResult? Function()? signOutRequested,
    TResult? Function()? resetPasswordSubmitted,
    TResult? Function()? getCurrentUser,
  }) {
    return resetPasswordSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? emailChanged,
    TResult Function(String? password)? passwordChanged,
    TResult Function(String? username)? usernameChanged,
    TResult Function()? loginSubmitted,
    TResult Function()? signUpSubmitted,
    TResult Function()? signOutRequested,
    TResult Function()? resetPasswordSubmitted,
    TResult Function()? getCurrentUser,
    required TResult orElse(),
  }) {
    if (resetPasswordSubmitted != null) {
      return resetPasswordSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(LoginSubmitted value) loginSubmitted,
    required TResult Function(SignUpSubmitted value) signUpSubmitted,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(ResetPasswordSubmitted value)
    resetPasswordSubmitted,
    required TResult Function(GetCurrentUser value) getCurrentUser,
  }) {
    return resetPasswordSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(LoginSubmitted value)? loginSubmitted,
    TResult? Function(SignUpSubmitted value)? signUpSubmitted,
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(ResetPasswordSubmitted value)? resetPasswordSubmitted,
    TResult? Function(GetCurrentUser value)? getCurrentUser,
  }) {
    return resetPasswordSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(SignUpSubmitted value)? signUpSubmitted,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(ResetPasswordSubmitted value)? resetPasswordSubmitted,
    TResult Function(GetCurrentUser value)? getCurrentUser,
    required TResult orElse(),
  }) {
    if (resetPasswordSubmitted != null) {
      return resetPasswordSubmitted(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordSubmitted implements AuthEvent {
  const factory ResetPasswordSubmitted() = _$ResetPasswordSubmittedImpl;
}

/// @nodoc
abstract class _$$GetCurrentUserImplCopyWith<$Res> {
  factory _$$GetCurrentUserImplCopyWith(
    _$GetCurrentUserImpl value,
    $Res Function(_$GetCurrentUserImpl) then,
  ) = __$$GetCurrentUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurrentUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetCurrentUserImpl>
    implements _$$GetCurrentUserImplCopyWith<$Res> {
  __$$GetCurrentUserImplCopyWithImpl(
    _$GetCurrentUserImpl _value,
    $Res Function(_$GetCurrentUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCurrentUserImpl implements GetCurrentUser {
  const _$GetCurrentUserImpl();

  @override
  String toString() {
    return 'AuthEvent.getCurrentUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCurrentUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) emailChanged,
    required TResult Function(String? password) passwordChanged,
    required TResult Function(String? username) usernameChanged,
    required TResult Function() loginSubmitted,
    required TResult Function() signUpSubmitted,
    required TResult Function() signOutRequested,
    required TResult Function() resetPasswordSubmitted,
    required TResult Function() getCurrentUser,
  }) {
    return getCurrentUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email)? emailChanged,
    TResult? Function(String? password)? passwordChanged,
    TResult? Function(String? username)? usernameChanged,
    TResult? Function()? loginSubmitted,
    TResult? Function()? signUpSubmitted,
    TResult? Function()? signOutRequested,
    TResult? Function()? resetPasswordSubmitted,
    TResult? Function()? getCurrentUser,
  }) {
    return getCurrentUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? emailChanged,
    TResult Function(String? password)? passwordChanged,
    TResult Function(String? username)? usernameChanged,
    TResult Function()? loginSubmitted,
    TResult Function()? signUpSubmitted,
    TResult Function()? signOutRequested,
    TResult Function()? resetPasswordSubmitted,
    TResult Function()? getCurrentUser,
    required TResult orElse(),
  }) {
    if (getCurrentUser != null) {
      return getCurrentUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(LoginSubmitted value) loginSubmitted,
    required TResult Function(SignUpSubmitted value) signUpSubmitted,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(ResetPasswordSubmitted value)
    resetPasswordSubmitted,
    required TResult Function(GetCurrentUser value) getCurrentUser,
  }) {
    return getCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(LoginSubmitted value)? loginSubmitted,
    TResult? Function(SignUpSubmitted value)? signUpSubmitted,
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(ResetPasswordSubmitted value)? resetPasswordSubmitted,
    TResult? Function(GetCurrentUser value)? getCurrentUser,
  }) {
    return getCurrentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(SignUpSubmitted value)? signUpSubmitted,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(ResetPasswordSubmitted value)? resetPasswordSubmitted,
    TResult Function(GetCurrentUser value)? getCurrentUser,
    required TResult orElse(),
  }) {
    if (getCurrentUser != null) {
      return getCurrentUser(this);
    }
    return orElse();
  }
}

abstract class GetCurrentUser implements AuthEvent {
  const factory GetCurrentUser() = _$GetCurrentUserImpl;
}

/// @nodoc
mixin _$AuthState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  AuthStatus get status => throw _privateConstructorUsedError;
  Status get resetPasswordStatus => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({
    String email,
    String password,
    String username,
    UserModel? user,
    String? errorMessage,
    AuthStatus status,
    Status resetPasswordStatus,
  });

  $UserModelCopyWith<$Res>? get user;
  $AuthStatusCopyWith<$Res> get status;
  $StatusCopyWith<$Res> get resetPasswordStatus;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? username = null,
    Object? user = freezed,
    Object? errorMessage = freezed,
    Object? status = null,
    Object? resetPasswordStatus = null,
  }) {
    return _then(
      _value.copyWith(
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String,
            password:
                null == password
                    ? _value.password
                    : password // ignore: cast_nullable_to_non_nullable
                        as String,
            username:
                null == username
                    ? _value.username
                    : username // ignore: cast_nullable_to_non_nullable
                        as String,
            user:
                freezed == user
                    ? _value.user
                    : user // ignore: cast_nullable_to_non_nullable
                        as UserModel?,
            errorMessage:
                freezed == errorMessage
                    ? _value.errorMessage
                    : errorMessage // ignore: cast_nullable_to_non_nullable
                        as String?,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as AuthStatus,
            resetPasswordStatus:
                null == resetPasswordStatus
                    ? _value.resetPasswordStatus
                    : resetPasswordStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
          )
          as $Val,
    );
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthStatusCopyWith<$Res> get status {
    return $AuthStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get resetPasswordStatus {
    return $StatusCopyWith<$Res>(_value.resetPasswordStatus, (value) {
      return _then(_value.copyWith(resetPasswordStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
    _$AuthStateImpl value,
    $Res Function(_$AuthStateImpl) then,
  ) = __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String email,
    String password,
    String username,
    UserModel? user,
    String? errorMessage,
    AuthStatus status,
    Status resetPasswordStatus,
  });

  @override
  $UserModelCopyWith<$Res>? get user;
  @override
  $AuthStatusCopyWith<$Res> get status;
  @override
  $StatusCopyWith<$Res> get resetPasswordStatus;
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
    _$AuthStateImpl _value,
    $Res Function(_$AuthStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? username = null,
    Object? user = freezed,
    Object? errorMessage = freezed,
    Object? status = null,
    Object? resetPasswordStatus = null,
  }) {
    return _then(
      _$AuthStateImpl(
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        password:
            null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                    as String,
        username:
            null == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                    as String,
        user:
            freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as UserModel?,
        errorMessage:
            freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                    as String?,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as AuthStatus,
        resetPasswordStatus:
            null == resetPasswordStatus
                ? _value.resetPasswordStatus
                : resetPasswordStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
      ),
    );
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl({
    this.email = "",
    this.password = "",
    this.username = "",
    this.user,
    this.errorMessage,
    this.status = const AuthStatus.initial(),
    this.resetPasswordStatus = const Status.initial(),
  });

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String username;
  @override
  final UserModel? user;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final AuthStatus status;
  @override
  @JsonKey()
  final Status resetPasswordStatus;

  @override
  String toString() {
    return 'AuthState(email: $email, password: $password, username: $username, user: $user, errorMessage: $errorMessage, status: $status, resetPasswordStatus: $resetPasswordStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.resetPasswordStatus, resetPasswordStatus) ||
                other.resetPasswordStatus == resetPasswordStatus));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    email,
    password,
    username,
    user,
    errorMessage,
    status,
    resetPasswordStatus,
  );

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState({
    final String email,
    final String password,
    final String username,
    final UserModel? user,
    final String? errorMessage,
    final AuthStatus status,
    final Status resetPasswordStatus,
  }) = _$AuthStateImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  String get username;
  @override
  UserModel? get user;
  @override
  String? get errorMessage;
  @override
  AuthStatus get status;
  @override
  Status get resetPasswordStatus;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
