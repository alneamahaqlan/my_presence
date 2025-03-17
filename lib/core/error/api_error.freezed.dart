// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ApiError _$ApiErrorFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'firebase':
      return FirebaseError.fromJson(json);
    case 'generic':
      return GenericError.fromJson(json);
    case 'network':
      return NetworkError.fromJson(json);
    case 'unauthorized':
      return UnauthorizedError.fromJson(json);
    case 'notFound':
      return NotFoundError.fromJson(json);
    case 'validation':
      return ValidationError.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'runtimeType',
        'ApiError',
        'Invalid union type "${json['runtimeType']}"!',
      );
  }
}

/// @nodoc
mixin _$ApiError {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String message) firebase,
    required TResult Function(String message) generic,
    required TResult Function(String message) network,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) notFound,
    required TResult Function(String message, Map<String, dynamic> errors)
    validation,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String message)? firebase,
    TResult? Function(String message)? generic,
    TResult? Function(String message)? network,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? notFound,
    TResult? Function(String message, Map<String, dynamic> errors)? validation,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String message)? firebase,
    TResult Function(String message)? generic,
    TResult Function(String message)? network,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? notFound,
    TResult Function(String message, Map<String, dynamic> errors)? validation,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseError value) firebase,
    required TResult Function(GenericError value) generic,
    required TResult Function(NetworkError value) network,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(ValidationError value) validation,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirebaseError value)? firebase,
    TResult? Function(GenericError value)? generic,
    TResult? Function(NetworkError value)? network,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(ValidationError value)? validation,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseError value)? firebase,
    TResult Function(GenericError value)? generic,
    TResult Function(NetworkError value)? network,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(ValidationError value)? validation,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Serializes this ApiError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiErrorCopyWith<ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiErrorCopyWith<$Res> {
  factory $ApiErrorCopyWith(ApiError value, $Res Function(ApiError) then) =
      _$ApiErrorCopyWithImpl<$Res, ApiError>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ApiErrorCopyWithImpl<$Res, $Val extends ApiError>
    implements $ApiErrorCopyWith<$Res> {
  _$ApiErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _value.copyWith(
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FirebaseErrorImplCopyWith<$Res>
    implements $ApiErrorCopyWith<$Res> {
  factory _$$FirebaseErrorImplCopyWith(
    _$FirebaseErrorImpl value,
    $Res Function(_$FirebaseErrorImpl) then,
  ) = __$$FirebaseErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String message});
}

/// @nodoc
class __$$FirebaseErrorImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$FirebaseErrorImpl>
    implements _$$FirebaseErrorImplCopyWith<$Res> {
  __$$FirebaseErrorImplCopyWithImpl(
    _$FirebaseErrorImpl _value,
    $Res Function(_$FirebaseErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? message = null}) {
    return _then(
      _$FirebaseErrorImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FirebaseErrorImpl implements FirebaseError {
  const _$FirebaseErrorImpl({
    required this.code,
    required this.message,
    final String? $type,
  }) : $type = $type ?? 'firebase';

  factory _$FirebaseErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirebaseErrorImplFromJson(json);

  @override
  final String code;
  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiError.firebase(code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseErrorImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseErrorImplCopyWith<_$FirebaseErrorImpl> get copyWith =>
      __$$FirebaseErrorImplCopyWithImpl<_$FirebaseErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String message) firebase,
    required TResult Function(String message) generic,
    required TResult Function(String message) network,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) notFound,
    required TResult Function(String message, Map<String, dynamic> errors)
    validation,
  }) {
    return firebase(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String message)? firebase,
    TResult? Function(String message)? generic,
    TResult? Function(String message)? network,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? notFound,
    TResult? Function(String message, Map<String, dynamic> errors)? validation,
  }) {
    return firebase?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String message)? firebase,
    TResult Function(String message)? generic,
    TResult Function(String message)? network,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? notFound,
    TResult Function(String message, Map<String, dynamic> errors)? validation,
    required TResult orElse(),
  }) {
    if (firebase != null) {
      return firebase(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseError value) firebase,
    required TResult Function(GenericError value) generic,
    required TResult Function(NetworkError value) network,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(ValidationError value) validation,
  }) {
    return firebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirebaseError value)? firebase,
    TResult? Function(GenericError value)? generic,
    TResult? Function(NetworkError value)? network,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(ValidationError value)? validation,
  }) {
    return firebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseError value)? firebase,
    TResult Function(GenericError value)? generic,
    TResult Function(NetworkError value)? network,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(ValidationError value)? validation,
    required TResult orElse(),
  }) {
    if (firebase != null) {
      return firebase(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FirebaseErrorImplToJson(this);
  }
}

abstract class FirebaseError implements ApiError {
  const factory FirebaseError({
    required final String code,
    required final String message,
  }) = _$FirebaseErrorImpl;

  factory FirebaseError.fromJson(Map<String, dynamic> json) =
      _$FirebaseErrorImpl.fromJson;

  String get code;
  @override
  String get message;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirebaseErrorImplCopyWith<_$FirebaseErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenericErrorImplCopyWith<$Res>
    implements $ApiErrorCopyWith<$Res> {
  factory _$$GenericErrorImplCopyWith(
    _$GenericErrorImpl value,
    $Res Function(_$GenericErrorImpl) then,
  ) = __$$GenericErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GenericErrorImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$GenericErrorImpl>
    implements _$$GenericErrorImplCopyWith<$Res> {
  __$$GenericErrorImplCopyWithImpl(
    _$GenericErrorImpl _value,
    $Res Function(_$GenericErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$GenericErrorImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GenericErrorImpl implements GenericError {
  const _$GenericErrorImpl({required this.message, final String? $type})
    : $type = $type ?? 'generic';

  factory _$GenericErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenericErrorImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiError.generic(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericErrorImplCopyWith<_$GenericErrorImpl> get copyWith =>
      __$$GenericErrorImplCopyWithImpl<_$GenericErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String message) firebase,
    required TResult Function(String message) generic,
    required TResult Function(String message) network,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) notFound,
    required TResult Function(String message, Map<String, dynamic> errors)
    validation,
  }) {
    return generic(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String message)? firebase,
    TResult? Function(String message)? generic,
    TResult? Function(String message)? network,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? notFound,
    TResult? Function(String message, Map<String, dynamic> errors)? validation,
  }) {
    return generic?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String message)? firebase,
    TResult Function(String message)? generic,
    TResult Function(String message)? network,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? notFound,
    TResult Function(String message, Map<String, dynamic> errors)? validation,
    required TResult orElse(),
  }) {
    if (generic != null) {
      return generic(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseError value) firebase,
    required TResult Function(GenericError value) generic,
    required TResult Function(NetworkError value) network,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(ValidationError value) validation,
  }) {
    return generic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirebaseError value)? firebase,
    TResult? Function(GenericError value)? generic,
    TResult? Function(NetworkError value)? network,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(ValidationError value)? validation,
  }) {
    return generic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseError value)? firebase,
    TResult Function(GenericError value)? generic,
    TResult Function(NetworkError value)? network,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(ValidationError value)? validation,
    required TResult orElse(),
  }) {
    if (generic != null) {
      return generic(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GenericErrorImplToJson(this);
  }
}

abstract class GenericError implements ApiError {
  const factory GenericError({required final String message}) =
      _$GenericErrorImpl;

  factory GenericError.fromJson(Map<String, dynamic> json) =
      _$GenericErrorImpl.fromJson;

  @override
  String get message;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenericErrorImplCopyWith<_$GenericErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkErrorImplCopyWith<$Res>
    implements $ApiErrorCopyWith<$Res> {
  factory _$$NetworkErrorImplCopyWith(
    _$NetworkErrorImpl value,
    $Res Function(_$NetworkErrorImpl) then,
  ) = __$$NetworkErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NetworkErrorImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$NetworkErrorImpl>
    implements _$$NetworkErrorImplCopyWith<$Res> {
  __$$NetworkErrorImplCopyWithImpl(
    _$NetworkErrorImpl _value,
    $Res Function(_$NetworkErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$NetworkErrorImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NetworkErrorImpl implements NetworkError {
  const _$NetworkErrorImpl({required this.message, final String? $type})
    : $type = $type ?? 'network';

  factory _$NetworkErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$NetworkErrorImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiError.network(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkErrorImplCopyWith<_$NetworkErrorImpl> get copyWith =>
      __$$NetworkErrorImplCopyWithImpl<_$NetworkErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String message) firebase,
    required TResult Function(String message) generic,
    required TResult Function(String message) network,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) notFound,
    required TResult Function(String message, Map<String, dynamic> errors)
    validation,
  }) {
    return network(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String message)? firebase,
    TResult? Function(String message)? generic,
    TResult? Function(String message)? network,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? notFound,
    TResult? Function(String message, Map<String, dynamic> errors)? validation,
  }) {
    return network?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String message)? firebase,
    TResult Function(String message)? generic,
    TResult Function(String message)? network,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? notFound,
    TResult Function(String message, Map<String, dynamic> errors)? validation,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseError value) firebase,
    required TResult Function(GenericError value) generic,
    required TResult Function(NetworkError value) network,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(ValidationError value) validation,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirebaseError value)? firebase,
    TResult? Function(GenericError value)? generic,
    TResult? Function(NetworkError value)? network,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(ValidationError value)? validation,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseError value)? firebase,
    TResult Function(GenericError value)? generic,
    TResult Function(NetworkError value)? network,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(ValidationError value)? validation,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NetworkErrorImplToJson(this);
  }
}

abstract class NetworkError implements ApiError {
  const factory NetworkError({required final String message}) =
      _$NetworkErrorImpl;

  factory NetworkError.fromJson(Map<String, dynamic> json) =
      _$NetworkErrorImpl.fromJson;

  @override
  String get message;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkErrorImplCopyWith<_$NetworkErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedErrorImplCopyWith<$Res>
    implements $ApiErrorCopyWith<$Res> {
  factory _$$UnauthorizedErrorImplCopyWith(
    _$UnauthorizedErrorImpl value,
    $Res Function(_$UnauthorizedErrorImpl) then,
  ) = __$$UnauthorizedErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnauthorizedErrorImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$UnauthorizedErrorImpl>
    implements _$$UnauthorizedErrorImplCopyWith<$Res> {
  __$$UnauthorizedErrorImplCopyWithImpl(
    _$UnauthorizedErrorImpl _value,
    $Res Function(_$UnauthorizedErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$UnauthorizedErrorImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UnauthorizedErrorImpl implements UnauthorizedError {
  const _$UnauthorizedErrorImpl({required this.message, final String? $type})
    : $type = $type ?? 'unauthorized';

  factory _$UnauthorizedErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnauthorizedErrorImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiError.unauthorized(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedErrorImplCopyWith<_$UnauthorizedErrorImpl> get copyWith =>
      __$$UnauthorizedErrorImplCopyWithImpl<_$UnauthorizedErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String message) firebase,
    required TResult Function(String message) generic,
    required TResult Function(String message) network,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) notFound,
    required TResult Function(String message, Map<String, dynamic> errors)
    validation,
  }) {
    return unauthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String message)? firebase,
    TResult? Function(String message)? generic,
    TResult? Function(String message)? network,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? notFound,
    TResult? Function(String message, Map<String, dynamic> errors)? validation,
  }) {
    return unauthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String message)? firebase,
    TResult Function(String message)? generic,
    TResult Function(String message)? network,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? notFound,
    TResult Function(String message, Map<String, dynamic> errors)? validation,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseError value) firebase,
    required TResult Function(GenericError value) generic,
    required TResult Function(NetworkError value) network,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(ValidationError value) validation,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirebaseError value)? firebase,
    TResult? Function(GenericError value)? generic,
    TResult? Function(NetworkError value)? network,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(ValidationError value)? validation,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseError value)? firebase,
    TResult Function(GenericError value)? generic,
    TResult Function(NetworkError value)? network,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(ValidationError value)? validation,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnauthorizedErrorImplToJson(this);
  }
}

abstract class UnauthorizedError implements ApiError {
  const factory UnauthorizedError({required final String message}) =
      _$UnauthorizedErrorImpl;

  factory UnauthorizedError.fromJson(Map<String, dynamic> json) =
      _$UnauthorizedErrorImpl.fromJson;

  @override
  String get message;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnauthorizedErrorImplCopyWith<_$UnauthorizedErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundErrorImplCopyWith<$Res>
    implements $ApiErrorCopyWith<$Res> {
  factory _$$NotFoundErrorImplCopyWith(
    _$NotFoundErrorImpl value,
    $Res Function(_$NotFoundErrorImpl) then,
  ) = __$$NotFoundErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NotFoundErrorImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$NotFoundErrorImpl>
    implements _$$NotFoundErrorImplCopyWith<$Res> {
  __$$NotFoundErrorImplCopyWithImpl(
    _$NotFoundErrorImpl _value,
    $Res Function(_$NotFoundErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$NotFoundErrorImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotFoundErrorImpl implements NotFoundError {
  const _$NotFoundErrorImpl({required this.message, final String? $type})
    : $type = $type ?? 'notFound';

  factory _$NotFoundErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotFoundErrorImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiError.notFound(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundErrorImplCopyWith<_$NotFoundErrorImpl> get copyWith =>
      __$$NotFoundErrorImplCopyWithImpl<_$NotFoundErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String message) firebase,
    required TResult Function(String message) generic,
    required TResult Function(String message) network,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) notFound,
    required TResult Function(String message, Map<String, dynamic> errors)
    validation,
  }) {
    return notFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String message)? firebase,
    TResult? Function(String message)? generic,
    TResult? Function(String message)? network,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? notFound,
    TResult? Function(String message, Map<String, dynamic> errors)? validation,
  }) {
    return notFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String message)? firebase,
    TResult Function(String message)? generic,
    TResult Function(String message)? network,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? notFound,
    TResult Function(String message, Map<String, dynamic> errors)? validation,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseError value) firebase,
    required TResult Function(GenericError value) generic,
    required TResult Function(NetworkError value) network,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(ValidationError value) validation,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirebaseError value)? firebase,
    TResult? Function(GenericError value)? generic,
    TResult? Function(NetworkError value)? network,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(ValidationError value)? validation,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseError value)? firebase,
    TResult Function(GenericError value)? generic,
    TResult Function(NetworkError value)? network,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(ValidationError value)? validation,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NotFoundErrorImplToJson(this);
  }
}

abstract class NotFoundError implements ApiError {
  const factory NotFoundError({required final String message}) =
      _$NotFoundErrorImpl;

  factory NotFoundError.fromJson(Map<String, dynamic> json) =
      _$NotFoundErrorImpl.fromJson;

  @override
  String get message;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotFoundErrorImplCopyWith<_$NotFoundErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidationErrorImplCopyWith<$Res>
    implements $ApiErrorCopyWith<$Res> {
  factory _$$ValidationErrorImplCopyWith(
    _$ValidationErrorImpl value,
    $Res Function(_$ValidationErrorImpl) then,
  ) = __$$ValidationErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Map<String, dynamic> errors});
}

/// @nodoc
class __$$ValidationErrorImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$ValidationErrorImpl>
    implements _$$ValidationErrorImplCopyWith<$Res> {
  __$$ValidationErrorImplCopyWithImpl(
    _$ValidationErrorImpl _value,
    $Res Function(_$ValidationErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? errors = null}) {
    return _then(
      _$ValidationErrorImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        errors:
            null == errors
                ? _value._errors
                : errors // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidationErrorImpl implements ValidationError {
  const _$ValidationErrorImpl({
    required this.message,
    required final Map<String, dynamic> errors,
    final String? $type,
  }) : _errors = errors,
       $type = $type ?? 'validation';

  factory _$ValidationErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidationErrorImplFromJson(json);

  @override
  final String message;
  final Map<String, dynamic> _errors;
  @override
  Map<String, dynamic> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiError.validation(message: $message, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    message,
    const DeepCollectionEquality().hash(_errors),
  );

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationErrorImplCopyWith<_$ValidationErrorImpl> get copyWith =>
      __$$ValidationErrorImplCopyWithImpl<_$ValidationErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String message) firebase,
    required TResult Function(String message) generic,
    required TResult Function(String message) network,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) notFound,
    required TResult Function(String message, Map<String, dynamic> errors)
    validation,
  }) {
    return validation(message, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String message)? firebase,
    TResult? Function(String message)? generic,
    TResult? Function(String message)? network,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? notFound,
    TResult? Function(String message, Map<String, dynamic> errors)? validation,
  }) {
    return validation?.call(message, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String message)? firebase,
    TResult Function(String message)? generic,
    TResult Function(String message)? network,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? notFound,
    TResult Function(String message, Map<String, dynamic> errors)? validation,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(message, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseError value) firebase,
    required TResult Function(GenericError value) generic,
    required TResult Function(NetworkError value) network,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(ValidationError value) validation,
  }) {
    return validation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirebaseError value)? firebase,
    TResult? Function(GenericError value)? generic,
    TResult? Function(NetworkError value)? network,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(ValidationError value)? validation,
  }) {
    return validation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseError value)? firebase,
    TResult Function(GenericError value)? generic,
    TResult Function(NetworkError value)? network,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(ValidationError value)? validation,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidationErrorImplToJson(this);
  }
}

abstract class ValidationError implements ApiError {
  const factory ValidationError({
    required final String message,
    required final Map<String, dynamic> errors,
  }) = _$ValidationErrorImpl;

  factory ValidationError.fromJson(Map<String, dynamic> json) =
      _$ValidationErrorImpl.fromJson;

  @override
  String get message;
  Map<String, dynamic> get errors;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationErrorImplCopyWith<_$ValidationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
