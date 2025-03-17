// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faculty_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FacultyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFaculties,
    required TResult Function(Faculty faculty) addFaculty,
    required TResult Function(Faculty faculty) updateFaculty,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFaculties,
    TResult? Function(Faculty faculty)? addFaculty,
    TResult? Function(Faculty faculty)? updateFaculty,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFaculties,
    TResult Function(Faculty faculty)? addFaculty,
    TResult Function(Faculty faculty)? updateFaculty,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFaculties value) fetchFaculties,
    required TResult Function(AddFaculty value) addFaculty,
    required TResult Function(UpdateFaculty value) updateFaculty,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFaculties value)? fetchFaculties,
    TResult? Function(AddFaculty value)? addFaculty,
    TResult? Function(UpdateFaculty value)? updateFaculty,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFaculties value)? fetchFaculties,
    TResult Function(AddFaculty value)? addFaculty,
    TResult Function(UpdateFaculty value)? updateFaculty,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacultyEventCopyWith<$Res> {
  factory $FacultyEventCopyWith(
    FacultyEvent value,
    $Res Function(FacultyEvent) then,
  ) = _$FacultyEventCopyWithImpl<$Res, FacultyEvent>;
}

/// @nodoc
class _$FacultyEventCopyWithImpl<$Res, $Val extends FacultyEvent>
    implements $FacultyEventCopyWith<$Res> {
  _$FacultyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FacultyEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchFacultiesImplCopyWith<$Res> {
  factory _$$FetchFacultiesImplCopyWith(
    _$FetchFacultiesImpl value,
    $Res Function(_$FetchFacultiesImpl) then,
  ) = __$$FetchFacultiesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchFacultiesImplCopyWithImpl<$Res>
    extends _$FacultyEventCopyWithImpl<$Res, _$FetchFacultiesImpl>
    implements _$$FetchFacultiesImplCopyWith<$Res> {
  __$$FetchFacultiesImplCopyWithImpl(
    _$FetchFacultiesImpl _value,
    $Res Function(_$FetchFacultiesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FacultyEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchFacultiesImpl implements FetchFaculties {
  const _$FetchFacultiesImpl();

  @override
  String toString() {
    return 'FacultyEvent.fetchFaculties()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchFacultiesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFaculties,
    required TResult Function(Faculty faculty) addFaculty,
    required TResult Function(Faculty faculty) updateFaculty,
  }) {
    return fetchFaculties();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFaculties,
    TResult? Function(Faculty faculty)? addFaculty,
    TResult? Function(Faculty faculty)? updateFaculty,
  }) {
    return fetchFaculties?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFaculties,
    TResult Function(Faculty faculty)? addFaculty,
    TResult Function(Faculty faculty)? updateFaculty,
    required TResult orElse(),
  }) {
    if (fetchFaculties != null) {
      return fetchFaculties();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFaculties value) fetchFaculties,
    required TResult Function(AddFaculty value) addFaculty,
    required TResult Function(UpdateFaculty value) updateFaculty,
  }) {
    return fetchFaculties(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFaculties value)? fetchFaculties,
    TResult? Function(AddFaculty value)? addFaculty,
    TResult? Function(UpdateFaculty value)? updateFaculty,
  }) {
    return fetchFaculties?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFaculties value)? fetchFaculties,
    TResult Function(AddFaculty value)? addFaculty,
    TResult Function(UpdateFaculty value)? updateFaculty,
    required TResult orElse(),
  }) {
    if (fetchFaculties != null) {
      return fetchFaculties(this);
    }
    return orElse();
  }
}

abstract class FetchFaculties implements FacultyEvent {
  const factory FetchFaculties() = _$FetchFacultiesImpl;
}

/// @nodoc
abstract class _$$AddFacultyImplCopyWith<$Res> {
  factory _$$AddFacultyImplCopyWith(
    _$AddFacultyImpl value,
    $Res Function(_$AddFacultyImpl) then,
  ) = __$$AddFacultyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Faculty faculty});

  $FacultyCopyWith<$Res> get faculty;
}

/// @nodoc
class __$$AddFacultyImplCopyWithImpl<$Res>
    extends _$FacultyEventCopyWithImpl<$Res, _$AddFacultyImpl>
    implements _$$AddFacultyImplCopyWith<$Res> {
  __$$AddFacultyImplCopyWithImpl(
    _$AddFacultyImpl _value,
    $Res Function(_$AddFacultyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FacultyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? faculty = null}) {
    return _then(
      _$AddFacultyImpl(
        null == faculty
            ? _value.faculty
            : faculty // ignore: cast_nullable_to_non_nullable
                as Faculty,
      ),
    );
  }

  /// Create a copy of FacultyEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FacultyCopyWith<$Res> get faculty {
    return $FacultyCopyWith<$Res>(_value.faculty, (value) {
      return _then(_value.copyWith(faculty: value));
    });
  }
}

/// @nodoc

class _$AddFacultyImpl implements AddFaculty {
  const _$AddFacultyImpl(this.faculty);

  @override
  final Faculty faculty;

  @override
  String toString() {
    return 'FacultyEvent.addFaculty(faculty: $faculty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFacultyImpl &&
            (identical(other.faculty, faculty) || other.faculty == faculty));
  }

  @override
  int get hashCode => Object.hash(runtimeType, faculty);

  /// Create a copy of FacultyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFacultyImplCopyWith<_$AddFacultyImpl> get copyWith =>
      __$$AddFacultyImplCopyWithImpl<_$AddFacultyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFaculties,
    required TResult Function(Faculty faculty) addFaculty,
    required TResult Function(Faculty faculty) updateFaculty,
  }) {
    return addFaculty(faculty);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFaculties,
    TResult? Function(Faculty faculty)? addFaculty,
    TResult? Function(Faculty faculty)? updateFaculty,
  }) {
    return addFaculty?.call(faculty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFaculties,
    TResult Function(Faculty faculty)? addFaculty,
    TResult Function(Faculty faculty)? updateFaculty,
    required TResult orElse(),
  }) {
    if (addFaculty != null) {
      return addFaculty(faculty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFaculties value) fetchFaculties,
    required TResult Function(AddFaculty value) addFaculty,
    required TResult Function(UpdateFaculty value) updateFaculty,
  }) {
    return addFaculty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFaculties value)? fetchFaculties,
    TResult? Function(AddFaculty value)? addFaculty,
    TResult? Function(UpdateFaculty value)? updateFaculty,
  }) {
    return addFaculty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFaculties value)? fetchFaculties,
    TResult Function(AddFaculty value)? addFaculty,
    TResult Function(UpdateFaculty value)? updateFaculty,
    required TResult orElse(),
  }) {
    if (addFaculty != null) {
      return addFaculty(this);
    }
    return orElse();
  }
}

abstract class AddFaculty implements FacultyEvent {
  const factory AddFaculty(final Faculty faculty) = _$AddFacultyImpl;

  Faculty get faculty;

  /// Create a copy of FacultyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddFacultyImplCopyWith<_$AddFacultyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateFacultyImplCopyWith<$Res> {
  factory _$$UpdateFacultyImplCopyWith(
    _$UpdateFacultyImpl value,
    $Res Function(_$UpdateFacultyImpl) then,
  ) = __$$UpdateFacultyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Faculty faculty});

  $FacultyCopyWith<$Res> get faculty;
}

/// @nodoc
class __$$UpdateFacultyImplCopyWithImpl<$Res>
    extends _$FacultyEventCopyWithImpl<$Res, _$UpdateFacultyImpl>
    implements _$$UpdateFacultyImplCopyWith<$Res> {
  __$$UpdateFacultyImplCopyWithImpl(
    _$UpdateFacultyImpl _value,
    $Res Function(_$UpdateFacultyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FacultyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? faculty = null}) {
    return _then(
      _$UpdateFacultyImpl(
        null == faculty
            ? _value.faculty
            : faculty // ignore: cast_nullable_to_non_nullable
                as Faculty,
      ),
    );
  }

  /// Create a copy of FacultyEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FacultyCopyWith<$Res> get faculty {
    return $FacultyCopyWith<$Res>(_value.faculty, (value) {
      return _then(_value.copyWith(faculty: value));
    });
  }
}

/// @nodoc

class _$UpdateFacultyImpl implements UpdateFaculty {
  const _$UpdateFacultyImpl(this.faculty);

  @override
  final Faculty faculty;

  @override
  String toString() {
    return 'FacultyEvent.updateFaculty(faculty: $faculty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFacultyImpl &&
            (identical(other.faculty, faculty) || other.faculty == faculty));
  }

  @override
  int get hashCode => Object.hash(runtimeType, faculty);

  /// Create a copy of FacultyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFacultyImplCopyWith<_$UpdateFacultyImpl> get copyWith =>
      __$$UpdateFacultyImplCopyWithImpl<_$UpdateFacultyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFaculties,
    required TResult Function(Faculty faculty) addFaculty,
    required TResult Function(Faculty faculty) updateFaculty,
  }) {
    return updateFaculty(faculty);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFaculties,
    TResult? Function(Faculty faculty)? addFaculty,
    TResult? Function(Faculty faculty)? updateFaculty,
  }) {
    return updateFaculty?.call(faculty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFaculties,
    TResult Function(Faculty faculty)? addFaculty,
    TResult Function(Faculty faculty)? updateFaculty,
    required TResult orElse(),
  }) {
    if (updateFaculty != null) {
      return updateFaculty(faculty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFaculties value) fetchFaculties,
    required TResult Function(AddFaculty value) addFaculty,
    required TResult Function(UpdateFaculty value) updateFaculty,
  }) {
    return updateFaculty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFaculties value)? fetchFaculties,
    TResult? Function(AddFaculty value)? addFaculty,
    TResult? Function(UpdateFaculty value)? updateFaculty,
  }) {
    return updateFaculty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFaculties value)? fetchFaculties,
    TResult Function(AddFaculty value)? addFaculty,
    TResult Function(UpdateFaculty value)? updateFaculty,
    required TResult orElse(),
  }) {
    if (updateFaculty != null) {
      return updateFaculty(this);
    }
    return orElse();
  }
}

abstract class UpdateFaculty implements FacultyEvent {
  const factory UpdateFaculty(final Faculty faculty) = _$UpdateFacultyImpl;

  Faculty get faculty;

  /// Create a copy of FacultyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFacultyImplCopyWith<_$UpdateFacultyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FacultyState {
  Status get status => throw _privateConstructorUsedError;
  List<Faculty> get faculties => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Create a copy of FacultyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FacultyStateCopyWith<FacultyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacultyStateCopyWith<$Res> {
  factory $FacultyStateCopyWith(
    FacultyState value,
    $Res Function(FacultyState) then,
  ) = _$FacultyStateCopyWithImpl<$Res, FacultyState>;
  @useResult
  $Res call({Status status, List<Faculty> faculties, String? message});

  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class _$FacultyStateCopyWithImpl<$Res, $Val extends FacultyState>
    implements $FacultyStateCopyWith<$Res> {
  _$FacultyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FacultyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? faculties = null,
    Object? message = freezed,
  }) {
    return _then(
      _value.copyWith(
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as Status,
            faculties:
                null == faculties
                    ? _value.faculties
                    : faculties // ignore: cast_nullable_to_non_nullable
                        as List<Faculty>,
            message:
                freezed == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of FacultyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FacultyStateImplCopyWith<$Res>
    implements $FacultyStateCopyWith<$Res> {
  factory _$$FacultyStateImplCopyWith(
    _$FacultyStateImpl value,
    $Res Function(_$FacultyStateImpl) then,
  ) = __$$FacultyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, List<Faculty> faculties, String? message});

  @override
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$FacultyStateImplCopyWithImpl<$Res>
    extends _$FacultyStateCopyWithImpl<$Res, _$FacultyStateImpl>
    implements _$$FacultyStateImplCopyWith<$Res> {
  __$$FacultyStateImplCopyWithImpl(
    _$FacultyStateImpl _value,
    $Res Function(_$FacultyStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FacultyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? faculties = null,
    Object? message = freezed,
  }) {
    return _then(
      _$FacultyStateImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as Status,
        faculties:
            null == faculties
                ? _value._faculties
                : faculties // ignore: cast_nullable_to_non_nullable
                    as List<Faculty>,
        message:
            freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$FacultyStateImpl implements _FacultyState {
  const _$FacultyStateImpl({
    this.status = const Status.initial(),
    final List<Faculty> faculties = const [],
    this.message,
  }) : _faculties = faculties;

  @override
  @JsonKey()
  final Status status;
  final List<Faculty> _faculties;
  @override
  @JsonKey()
  List<Faculty> get faculties {
    if (_faculties is EqualUnmodifiableListView) return _faculties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_faculties);
  }

  @override
  final String? message;

  @override
  String toString() {
    return 'FacultyState(status: $status, faculties: $faculties, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacultyStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(
              other._faculties,
              _faculties,
            ) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_faculties),
    message,
  );

  /// Create a copy of FacultyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FacultyStateImplCopyWith<_$FacultyStateImpl> get copyWith =>
      __$$FacultyStateImplCopyWithImpl<_$FacultyStateImpl>(this, _$identity);
}

abstract class _FacultyState implements FacultyState {
  const factory _FacultyState({
    final Status status,
    final List<Faculty> faculties,
    final String? message,
  }) = _$FacultyStateImpl;

  @override
  Status get status;
  @override
  List<Faculty> get faculties;
  @override
  String? get message;

  /// Create a copy of FacultyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FacultyStateImplCopyWith<_$FacultyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
