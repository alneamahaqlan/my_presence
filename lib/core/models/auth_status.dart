import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_status.freezed.dart';

@freezed
class AuthStatus with _$AuthStatus {
  const factory AuthStatus.initial() = _Initial;
  const factory AuthStatus.loading() = _Loading;
  const factory AuthStatus.authenticated() = _Authenticated;
  const factory AuthStatus.unAuthenticated() = _UnAuthenticated;
  const factory AuthStatus.failed() = _Failed;
}
