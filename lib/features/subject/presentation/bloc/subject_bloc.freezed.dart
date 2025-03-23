// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SubjectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSubjects,
    required TResult Function(Subject subject) addSubject,
    required TResult Function(Subject subject) updateSubject,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchSubjects,
    TResult? Function(Subject subject)? addSubject,
    TResult? Function(Subject subject)? updateSubject,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSubjects,
    TResult Function(Subject subject)? addSubject,
    TResult Function(Subject subject)? updateSubject,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSubjects value) fetchSubjects,
    required TResult Function(AddSubject value) addSubject,
    required TResult Function(UpdateSubject value) updateSubject,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSubjects value)? fetchSubjects,
    TResult? Function(AddSubject value)? addSubject,
    TResult? Function(UpdateSubject value)? updateSubject,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSubjects value)? fetchSubjects,
    TResult Function(AddSubject value)? addSubject,
    TResult Function(UpdateSubject value)? updateSubject,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectEventCopyWith<$Res> {
  factory $SubjectEventCopyWith(
    SubjectEvent value,
    $Res Function(SubjectEvent) then,
  ) = _$SubjectEventCopyWithImpl<$Res, SubjectEvent>;
}

/// @nodoc
class _$SubjectEventCopyWithImpl<$Res, $Val extends SubjectEvent>
    implements $SubjectEventCopyWith<$Res> {
  _$SubjectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubjectEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchSubjectsImplCopyWith<$Res> {
  factory _$$FetchSubjectsImplCopyWith(
    _$FetchSubjectsImpl value,
    $Res Function(_$FetchSubjectsImpl) then,
  ) = __$$FetchSubjectsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchSubjectsImplCopyWithImpl<$Res>
    extends _$SubjectEventCopyWithImpl<$Res, _$FetchSubjectsImpl>
    implements _$$FetchSubjectsImplCopyWith<$Res> {
  __$$FetchSubjectsImplCopyWithImpl(
    _$FetchSubjectsImpl _value,
    $Res Function(_$FetchSubjectsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubjectEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchSubjectsImpl implements _FetchSubjects {
  const _$FetchSubjectsImpl();

  @override
  String toString() {
    return 'SubjectEvent.fetchSubjects()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchSubjectsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSubjects,
    required TResult Function(Subject subject) addSubject,
    required TResult Function(Subject subject) updateSubject,
  }) {
    return fetchSubjects();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchSubjects,
    TResult? Function(Subject subject)? addSubject,
    TResult? Function(Subject subject)? updateSubject,
  }) {
    return fetchSubjects?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSubjects,
    TResult Function(Subject subject)? addSubject,
    TResult Function(Subject subject)? updateSubject,
    required TResult orElse(),
  }) {
    if (fetchSubjects != null) {
      return fetchSubjects();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSubjects value) fetchSubjects,
    required TResult Function(AddSubject value) addSubject,
    required TResult Function(UpdateSubject value) updateSubject,
  }) {
    return fetchSubjects(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSubjects value)? fetchSubjects,
    TResult? Function(AddSubject value)? addSubject,
    TResult? Function(UpdateSubject value)? updateSubject,
  }) {
    return fetchSubjects?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSubjects value)? fetchSubjects,
    TResult Function(AddSubject value)? addSubject,
    TResult Function(UpdateSubject value)? updateSubject,
    required TResult orElse(),
  }) {
    if (fetchSubjects != null) {
      return fetchSubjects(this);
    }
    return orElse();
  }
}

abstract class _FetchSubjects implements SubjectEvent {
  const factory _FetchSubjects() = _$FetchSubjectsImpl;
}

/// @nodoc
abstract class _$$AddSubjectImplCopyWith<$Res> {
  factory _$$AddSubjectImplCopyWith(
    _$AddSubjectImpl value,
    $Res Function(_$AddSubjectImpl) then,
  ) = __$$AddSubjectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Subject subject});

  $SubjectCopyWith<$Res> get subject;
}

/// @nodoc
class __$$AddSubjectImplCopyWithImpl<$Res>
    extends _$SubjectEventCopyWithImpl<$Res, _$AddSubjectImpl>
    implements _$$AddSubjectImplCopyWith<$Res> {
  __$$AddSubjectImplCopyWithImpl(
    _$AddSubjectImpl _value,
    $Res Function(_$AddSubjectImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? subject = null}) {
    return _then(
      _$AddSubjectImpl(
        null == subject
            ? _value.subject
            : subject // ignore: cast_nullable_to_non_nullable
                as Subject,
      ),
    );
  }

  /// Create a copy of SubjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubjectCopyWith<$Res> get subject {
    return $SubjectCopyWith<$Res>(_value.subject, (value) {
      return _then(_value.copyWith(subject: value));
    });
  }
}

/// @nodoc

class _$AddSubjectImpl implements AddSubject {
  const _$AddSubjectImpl(this.subject);

  @override
  final Subject subject;

  @override
  String toString() {
    return 'SubjectEvent.addSubject(subject: $subject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSubjectImpl &&
            (identical(other.subject, subject) || other.subject == subject));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subject);

  /// Create a copy of SubjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSubjectImplCopyWith<_$AddSubjectImpl> get copyWith =>
      __$$AddSubjectImplCopyWithImpl<_$AddSubjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSubjects,
    required TResult Function(Subject subject) addSubject,
    required TResult Function(Subject subject) updateSubject,
  }) {
    return addSubject(subject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchSubjects,
    TResult? Function(Subject subject)? addSubject,
    TResult? Function(Subject subject)? updateSubject,
  }) {
    return addSubject?.call(subject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSubjects,
    TResult Function(Subject subject)? addSubject,
    TResult Function(Subject subject)? updateSubject,
    required TResult orElse(),
  }) {
    if (addSubject != null) {
      return addSubject(subject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSubjects value) fetchSubjects,
    required TResult Function(AddSubject value) addSubject,
    required TResult Function(UpdateSubject value) updateSubject,
  }) {
    return addSubject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSubjects value)? fetchSubjects,
    TResult? Function(AddSubject value)? addSubject,
    TResult? Function(UpdateSubject value)? updateSubject,
  }) {
    return addSubject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSubjects value)? fetchSubjects,
    TResult Function(AddSubject value)? addSubject,
    TResult Function(UpdateSubject value)? updateSubject,
    required TResult orElse(),
  }) {
    if (addSubject != null) {
      return addSubject(this);
    }
    return orElse();
  }
}

abstract class AddSubject implements SubjectEvent {
  const factory AddSubject(final Subject subject) = _$AddSubjectImpl;

  Subject get subject;

  /// Create a copy of SubjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddSubjectImplCopyWith<_$AddSubjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSubjectImplCopyWith<$Res> {
  factory _$$UpdateSubjectImplCopyWith(
    _$UpdateSubjectImpl value,
    $Res Function(_$UpdateSubjectImpl) then,
  ) = __$$UpdateSubjectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Subject subject});

  $SubjectCopyWith<$Res> get subject;
}

/// @nodoc
class __$$UpdateSubjectImplCopyWithImpl<$Res>
    extends _$SubjectEventCopyWithImpl<$Res, _$UpdateSubjectImpl>
    implements _$$UpdateSubjectImplCopyWith<$Res> {
  __$$UpdateSubjectImplCopyWithImpl(
    _$UpdateSubjectImpl _value,
    $Res Function(_$UpdateSubjectImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? subject = null}) {
    return _then(
      _$UpdateSubjectImpl(
        null == subject
            ? _value.subject
            : subject // ignore: cast_nullable_to_non_nullable
                as Subject,
      ),
    );
  }

  /// Create a copy of SubjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubjectCopyWith<$Res> get subject {
    return $SubjectCopyWith<$Res>(_value.subject, (value) {
      return _then(_value.copyWith(subject: value));
    });
  }
}

/// @nodoc

class _$UpdateSubjectImpl implements UpdateSubject {
  const _$UpdateSubjectImpl(this.subject);

  @override
  final Subject subject;

  @override
  String toString() {
    return 'SubjectEvent.updateSubject(subject: $subject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSubjectImpl &&
            (identical(other.subject, subject) || other.subject == subject));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subject);

  /// Create a copy of SubjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSubjectImplCopyWith<_$UpdateSubjectImpl> get copyWith =>
      __$$UpdateSubjectImplCopyWithImpl<_$UpdateSubjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSubjects,
    required TResult Function(Subject subject) addSubject,
    required TResult Function(Subject subject) updateSubject,
  }) {
    return updateSubject(subject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchSubjects,
    TResult? Function(Subject subject)? addSubject,
    TResult? Function(Subject subject)? updateSubject,
  }) {
    return updateSubject?.call(subject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSubjects,
    TResult Function(Subject subject)? addSubject,
    TResult Function(Subject subject)? updateSubject,
    required TResult orElse(),
  }) {
    if (updateSubject != null) {
      return updateSubject(subject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSubjects value) fetchSubjects,
    required TResult Function(AddSubject value) addSubject,
    required TResult Function(UpdateSubject value) updateSubject,
  }) {
    return updateSubject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSubjects value)? fetchSubjects,
    TResult? Function(AddSubject value)? addSubject,
    TResult? Function(UpdateSubject value)? updateSubject,
  }) {
    return updateSubject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSubjects value)? fetchSubjects,
    TResult Function(AddSubject value)? addSubject,
    TResult Function(UpdateSubject value)? updateSubject,
    required TResult orElse(),
  }) {
    if (updateSubject != null) {
      return updateSubject(this);
    }
    return orElse();
  }
}

abstract class UpdateSubject implements SubjectEvent {
  const factory UpdateSubject(final Subject subject) = _$UpdateSubjectImpl;

  Subject get subject;

  /// Create a copy of SubjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSubjectImplCopyWith<_$UpdateSubjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubjectState {
  Status get status => throw _privateConstructorUsedError;
  Status get createStatus => throw _privateConstructorUsedError;
  List<Subject> get subjects => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Create a copy of SubjectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubjectStateCopyWith<SubjectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectStateCopyWith<$Res> {
  factory $SubjectStateCopyWith(
    SubjectState value,
    $Res Function(SubjectState) then,
  ) = _$SubjectStateCopyWithImpl<$Res, SubjectState>;
  @useResult
  $Res call({
    Status status,
    Status createStatus,
    List<Subject> subjects,
    String? message,
  });

  $StatusCopyWith<$Res> get status;
  $StatusCopyWith<$Res> get createStatus;
}

/// @nodoc
class _$SubjectStateCopyWithImpl<$Res, $Val extends SubjectState>
    implements $SubjectStateCopyWith<$Res> {
  _$SubjectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubjectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? createStatus = null,
    Object? subjects = null,
    Object? message = freezed,
  }) {
    return _then(
      _value.copyWith(
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as Status,
            createStatus:
                null == createStatus
                    ? _value.createStatus
                    : createStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            subjects:
                null == subjects
                    ? _value.subjects
                    : subjects // ignore: cast_nullable_to_non_nullable
                        as List<Subject>,
            message:
                freezed == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of SubjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of SubjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get createStatus {
    return $StatusCopyWith<$Res>(_value.createStatus, (value) {
      return _then(_value.copyWith(createStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubjectStateImplCopyWith<$Res>
    implements $SubjectStateCopyWith<$Res> {
  factory _$$SubjectStateImplCopyWith(
    _$SubjectStateImpl value,
    $Res Function(_$SubjectStateImpl) then,
  ) = __$$SubjectStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status status,
    Status createStatus,
    List<Subject> subjects,
    String? message,
  });

  @override
  $StatusCopyWith<$Res> get status;
  @override
  $StatusCopyWith<$Res> get createStatus;
}

/// @nodoc
class __$$SubjectStateImplCopyWithImpl<$Res>
    extends _$SubjectStateCopyWithImpl<$Res, _$SubjectStateImpl>
    implements _$$SubjectStateImplCopyWith<$Res> {
  __$$SubjectStateImplCopyWithImpl(
    _$SubjectStateImpl _value,
    $Res Function(_$SubjectStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubjectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? createStatus = null,
    Object? subjects = null,
    Object? message = freezed,
  }) {
    return _then(
      _$SubjectStateImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as Status,
        createStatus:
            null == createStatus
                ? _value.createStatus
                : createStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        subjects:
            null == subjects
                ? _value._subjects
                : subjects // ignore: cast_nullable_to_non_nullable
                    as List<Subject>,
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

class _$SubjectStateImpl implements _SubjectState {
  const _$SubjectStateImpl({
    this.status = const Status.initial(),
    this.createStatus = const Status.initial(),
    final List<Subject> subjects = const [],
    this.message,
  }) : _subjects = subjects;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Status createStatus;
  final List<Subject> _subjects;
  @override
  @JsonKey()
  List<Subject> get subjects {
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subjects);
  }

  @override
  final String? message;

  @override
  String toString() {
    return 'SubjectState(status: $status, createStatus: $createStatus, subjects: $subjects, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createStatus, createStatus) ||
                other.createStatus == createStatus) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    createStatus,
    const DeepCollectionEquality().hash(_subjects),
    message,
  );

  /// Create a copy of SubjectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectStateImplCopyWith<_$SubjectStateImpl> get copyWith =>
      __$$SubjectStateImplCopyWithImpl<_$SubjectStateImpl>(this, _$identity);
}

abstract class _SubjectState implements SubjectState {
  const factory _SubjectState({
    final Status status,
    final Status createStatus,
    final List<Subject> subjects,
    final String? message,
  }) = _$SubjectStateImpl;

  @override
  Status get status;
  @override
  Status get createStatus;
  @override
  List<Subject> get subjects;
  @override
  String? get message;

  /// Create a copy of SubjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubjectStateImplCopyWith<_$SubjectStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
