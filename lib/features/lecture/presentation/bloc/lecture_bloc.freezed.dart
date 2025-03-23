// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecture_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LectureEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLectures,
    required TResult Function(Lecture lecture) addLecture,
    required TResult Function(Lecture lecture) updateLecture,
    required TResult Function(String lectureId) deleteLecture,
    required TResult Function(Schedule schedule, Department department)
    setSchedule,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLectures,
    TResult? Function(Lecture lecture)? addLecture,
    TResult? Function(Lecture lecture)? updateLecture,
    TResult? Function(String lectureId)? deleteLecture,
    TResult? Function(Schedule schedule, Department department)? setSchedule,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLectures,
    TResult Function(Lecture lecture)? addLecture,
    TResult Function(Lecture lecture)? updateLecture,
    TResult Function(String lectureId)? deleteLecture,
    TResult Function(Schedule schedule, Department department)? setSchedule,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchLectures value) fetchLectures,
    required TResult Function(AddLecture value) addLecture,
    required TResult Function(UpdateLecture value) updateLecture,
    required TResult Function(DeleteLecture value) deleteLecture,
    required TResult Function(SetSchedule value) setSchedule,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchLectures value)? fetchLectures,
    TResult? Function(AddLecture value)? addLecture,
    TResult? Function(UpdateLecture value)? updateLecture,
    TResult? Function(DeleteLecture value)? deleteLecture,
    TResult? Function(SetSchedule value)? setSchedule,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchLectures value)? fetchLectures,
    TResult Function(AddLecture value)? addLecture,
    TResult Function(UpdateLecture value)? updateLecture,
    TResult Function(DeleteLecture value)? deleteLecture,
    TResult Function(SetSchedule value)? setSchedule,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LectureEventCopyWith<$Res> {
  factory $LectureEventCopyWith(
    LectureEvent value,
    $Res Function(LectureEvent) then,
  ) = _$LectureEventCopyWithImpl<$Res, LectureEvent>;
}

/// @nodoc
class _$LectureEventCopyWithImpl<$Res, $Val extends LectureEvent>
    implements $LectureEventCopyWith<$Res> {
  _$LectureEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LectureEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchLecturesImplCopyWith<$Res> {
  factory _$$FetchLecturesImplCopyWith(
    _$FetchLecturesImpl value,
    $Res Function(_$FetchLecturesImpl) then,
  ) = __$$FetchLecturesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchLecturesImplCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res, _$FetchLecturesImpl>
    implements _$$FetchLecturesImplCopyWith<$Res> {
  __$$FetchLecturesImplCopyWithImpl(
    _$FetchLecturesImpl _value,
    $Res Function(_$FetchLecturesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LectureEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchLecturesImpl implements FetchLectures {
  const _$FetchLecturesImpl();

  @override
  String toString() {
    return 'LectureEvent.fetchLectures()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchLecturesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLectures,
    required TResult Function(Lecture lecture) addLecture,
    required TResult Function(Lecture lecture) updateLecture,
    required TResult Function(String lectureId) deleteLecture,
    required TResult Function(Schedule schedule, Department department)
    setSchedule,
  }) {
    return fetchLectures();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLectures,
    TResult? Function(Lecture lecture)? addLecture,
    TResult? Function(Lecture lecture)? updateLecture,
    TResult? Function(String lectureId)? deleteLecture,
    TResult? Function(Schedule schedule, Department department)? setSchedule,
  }) {
    return fetchLectures?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLectures,
    TResult Function(Lecture lecture)? addLecture,
    TResult Function(Lecture lecture)? updateLecture,
    TResult Function(String lectureId)? deleteLecture,
    TResult Function(Schedule schedule, Department department)? setSchedule,
    required TResult orElse(),
  }) {
    if (fetchLectures != null) {
      return fetchLectures();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchLectures value) fetchLectures,
    required TResult Function(AddLecture value) addLecture,
    required TResult Function(UpdateLecture value) updateLecture,
    required TResult Function(DeleteLecture value) deleteLecture,
    required TResult Function(SetSchedule value) setSchedule,
  }) {
    return fetchLectures(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchLectures value)? fetchLectures,
    TResult? Function(AddLecture value)? addLecture,
    TResult? Function(UpdateLecture value)? updateLecture,
    TResult? Function(DeleteLecture value)? deleteLecture,
    TResult? Function(SetSchedule value)? setSchedule,
  }) {
    return fetchLectures?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchLectures value)? fetchLectures,
    TResult Function(AddLecture value)? addLecture,
    TResult Function(UpdateLecture value)? updateLecture,
    TResult Function(DeleteLecture value)? deleteLecture,
    TResult Function(SetSchedule value)? setSchedule,
    required TResult orElse(),
  }) {
    if (fetchLectures != null) {
      return fetchLectures(this);
    }
    return orElse();
  }
}

abstract class FetchLectures implements LectureEvent {
  const factory FetchLectures() = _$FetchLecturesImpl;
}

/// @nodoc
abstract class _$$AddLectureImplCopyWith<$Res> {
  factory _$$AddLectureImplCopyWith(
    _$AddLectureImpl value,
    $Res Function(_$AddLectureImpl) then,
  ) = __$$AddLectureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Lecture lecture});

  $LectureCopyWith<$Res> get lecture;
}

/// @nodoc
class __$$AddLectureImplCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res, _$AddLectureImpl>
    implements _$$AddLectureImplCopyWith<$Res> {
  __$$AddLectureImplCopyWithImpl(
    _$AddLectureImpl _value,
    $Res Function(_$AddLectureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LectureEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lecture = null}) {
    return _then(
      _$AddLectureImpl(
        null == lecture
            ? _value.lecture
            : lecture // ignore: cast_nullable_to_non_nullable
                as Lecture,
      ),
    );
  }

  /// Create a copy of LectureEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LectureCopyWith<$Res> get lecture {
    return $LectureCopyWith<$Res>(_value.lecture, (value) {
      return _then(_value.copyWith(lecture: value));
    });
  }
}

/// @nodoc

class _$AddLectureImpl implements AddLecture {
  const _$AddLectureImpl(this.lecture);

  @override
  final Lecture lecture;

  @override
  String toString() {
    return 'LectureEvent.addLecture(lecture: $lecture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddLectureImpl &&
            (identical(other.lecture, lecture) || other.lecture == lecture));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lecture);

  /// Create a copy of LectureEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddLectureImplCopyWith<_$AddLectureImpl> get copyWith =>
      __$$AddLectureImplCopyWithImpl<_$AddLectureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLectures,
    required TResult Function(Lecture lecture) addLecture,
    required TResult Function(Lecture lecture) updateLecture,
    required TResult Function(String lectureId) deleteLecture,
    required TResult Function(Schedule schedule, Department department)
    setSchedule,
  }) {
    return addLecture(lecture);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLectures,
    TResult? Function(Lecture lecture)? addLecture,
    TResult? Function(Lecture lecture)? updateLecture,
    TResult? Function(String lectureId)? deleteLecture,
    TResult? Function(Schedule schedule, Department department)? setSchedule,
  }) {
    return addLecture?.call(lecture);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLectures,
    TResult Function(Lecture lecture)? addLecture,
    TResult Function(Lecture lecture)? updateLecture,
    TResult Function(String lectureId)? deleteLecture,
    TResult Function(Schedule schedule, Department department)? setSchedule,
    required TResult orElse(),
  }) {
    if (addLecture != null) {
      return addLecture(lecture);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchLectures value) fetchLectures,
    required TResult Function(AddLecture value) addLecture,
    required TResult Function(UpdateLecture value) updateLecture,
    required TResult Function(DeleteLecture value) deleteLecture,
    required TResult Function(SetSchedule value) setSchedule,
  }) {
    return addLecture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchLectures value)? fetchLectures,
    TResult? Function(AddLecture value)? addLecture,
    TResult? Function(UpdateLecture value)? updateLecture,
    TResult? Function(DeleteLecture value)? deleteLecture,
    TResult? Function(SetSchedule value)? setSchedule,
  }) {
    return addLecture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchLectures value)? fetchLectures,
    TResult Function(AddLecture value)? addLecture,
    TResult Function(UpdateLecture value)? updateLecture,
    TResult Function(DeleteLecture value)? deleteLecture,
    TResult Function(SetSchedule value)? setSchedule,
    required TResult orElse(),
  }) {
    if (addLecture != null) {
      return addLecture(this);
    }
    return orElse();
  }
}

abstract class AddLecture implements LectureEvent {
  const factory AddLecture(final Lecture lecture) = _$AddLectureImpl;

  Lecture get lecture;

  /// Create a copy of LectureEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddLectureImplCopyWith<_$AddLectureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateLectureImplCopyWith<$Res> {
  factory _$$UpdateLectureImplCopyWith(
    _$UpdateLectureImpl value,
    $Res Function(_$UpdateLectureImpl) then,
  ) = __$$UpdateLectureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Lecture lecture});

  $LectureCopyWith<$Res> get lecture;
}

/// @nodoc
class __$$UpdateLectureImplCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res, _$UpdateLectureImpl>
    implements _$$UpdateLectureImplCopyWith<$Res> {
  __$$UpdateLectureImplCopyWithImpl(
    _$UpdateLectureImpl _value,
    $Res Function(_$UpdateLectureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LectureEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lecture = null}) {
    return _then(
      _$UpdateLectureImpl(
        null == lecture
            ? _value.lecture
            : lecture // ignore: cast_nullable_to_non_nullable
                as Lecture,
      ),
    );
  }

  /// Create a copy of LectureEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LectureCopyWith<$Res> get lecture {
    return $LectureCopyWith<$Res>(_value.lecture, (value) {
      return _then(_value.copyWith(lecture: value));
    });
  }
}

/// @nodoc

class _$UpdateLectureImpl implements UpdateLecture {
  const _$UpdateLectureImpl(this.lecture);

  @override
  final Lecture lecture;

  @override
  String toString() {
    return 'LectureEvent.updateLecture(lecture: $lecture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLectureImpl &&
            (identical(other.lecture, lecture) || other.lecture == lecture));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lecture);

  /// Create a copy of LectureEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLectureImplCopyWith<_$UpdateLectureImpl> get copyWith =>
      __$$UpdateLectureImplCopyWithImpl<_$UpdateLectureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLectures,
    required TResult Function(Lecture lecture) addLecture,
    required TResult Function(Lecture lecture) updateLecture,
    required TResult Function(String lectureId) deleteLecture,
    required TResult Function(Schedule schedule, Department department)
    setSchedule,
  }) {
    return updateLecture(lecture);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLectures,
    TResult? Function(Lecture lecture)? addLecture,
    TResult? Function(Lecture lecture)? updateLecture,
    TResult? Function(String lectureId)? deleteLecture,
    TResult? Function(Schedule schedule, Department department)? setSchedule,
  }) {
    return updateLecture?.call(lecture);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLectures,
    TResult Function(Lecture lecture)? addLecture,
    TResult Function(Lecture lecture)? updateLecture,
    TResult Function(String lectureId)? deleteLecture,
    TResult Function(Schedule schedule, Department department)? setSchedule,
    required TResult orElse(),
  }) {
    if (updateLecture != null) {
      return updateLecture(lecture);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchLectures value) fetchLectures,
    required TResult Function(AddLecture value) addLecture,
    required TResult Function(UpdateLecture value) updateLecture,
    required TResult Function(DeleteLecture value) deleteLecture,
    required TResult Function(SetSchedule value) setSchedule,
  }) {
    return updateLecture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchLectures value)? fetchLectures,
    TResult? Function(AddLecture value)? addLecture,
    TResult? Function(UpdateLecture value)? updateLecture,
    TResult? Function(DeleteLecture value)? deleteLecture,
    TResult? Function(SetSchedule value)? setSchedule,
  }) {
    return updateLecture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchLectures value)? fetchLectures,
    TResult Function(AddLecture value)? addLecture,
    TResult Function(UpdateLecture value)? updateLecture,
    TResult Function(DeleteLecture value)? deleteLecture,
    TResult Function(SetSchedule value)? setSchedule,
    required TResult orElse(),
  }) {
    if (updateLecture != null) {
      return updateLecture(this);
    }
    return orElse();
  }
}

abstract class UpdateLecture implements LectureEvent {
  const factory UpdateLecture(final Lecture lecture) = _$UpdateLectureImpl;

  Lecture get lecture;

  /// Create a copy of LectureEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateLectureImplCopyWith<_$UpdateLectureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteLectureImplCopyWith<$Res> {
  factory _$$DeleteLectureImplCopyWith(
    _$DeleteLectureImpl value,
    $Res Function(_$DeleteLectureImpl) then,
  ) = __$$DeleteLectureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String lectureId});
}

/// @nodoc
class __$$DeleteLectureImplCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res, _$DeleteLectureImpl>
    implements _$$DeleteLectureImplCopyWith<$Res> {
  __$$DeleteLectureImplCopyWithImpl(
    _$DeleteLectureImpl _value,
    $Res Function(_$DeleteLectureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LectureEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lectureId = null}) {
    return _then(
      _$DeleteLectureImpl(
        null == lectureId
            ? _value.lectureId
            : lectureId // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$DeleteLectureImpl implements DeleteLecture {
  const _$DeleteLectureImpl(this.lectureId);

  @override
  final String lectureId;

  @override
  String toString() {
    return 'LectureEvent.deleteLecture(lectureId: $lectureId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteLectureImpl &&
            (identical(other.lectureId, lectureId) ||
                other.lectureId == lectureId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lectureId);

  /// Create a copy of LectureEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteLectureImplCopyWith<_$DeleteLectureImpl> get copyWith =>
      __$$DeleteLectureImplCopyWithImpl<_$DeleteLectureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLectures,
    required TResult Function(Lecture lecture) addLecture,
    required TResult Function(Lecture lecture) updateLecture,
    required TResult Function(String lectureId) deleteLecture,
    required TResult Function(Schedule schedule, Department department)
    setSchedule,
  }) {
    return deleteLecture(lectureId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLectures,
    TResult? Function(Lecture lecture)? addLecture,
    TResult? Function(Lecture lecture)? updateLecture,
    TResult? Function(String lectureId)? deleteLecture,
    TResult? Function(Schedule schedule, Department department)? setSchedule,
  }) {
    return deleteLecture?.call(lectureId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLectures,
    TResult Function(Lecture lecture)? addLecture,
    TResult Function(Lecture lecture)? updateLecture,
    TResult Function(String lectureId)? deleteLecture,
    TResult Function(Schedule schedule, Department department)? setSchedule,
    required TResult orElse(),
  }) {
    if (deleteLecture != null) {
      return deleteLecture(lectureId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchLectures value) fetchLectures,
    required TResult Function(AddLecture value) addLecture,
    required TResult Function(UpdateLecture value) updateLecture,
    required TResult Function(DeleteLecture value) deleteLecture,
    required TResult Function(SetSchedule value) setSchedule,
  }) {
    return deleteLecture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchLectures value)? fetchLectures,
    TResult? Function(AddLecture value)? addLecture,
    TResult? Function(UpdateLecture value)? updateLecture,
    TResult? Function(DeleteLecture value)? deleteLecture,
    TResult? Function(SetSchedule value)? setSchedule,
  }) {
    return deleteLecture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchLectures value)? fetchLectures,
    TResult Function(AddLecture value)? addLecture,
    TResult Function(UpdateLecture value)? updateLecture,
    TResult Function(DeleteLecture value)? deleteLecture,
    TResult Function(SetSchedule value)? setSchedule,
    required TResult orElse(),
  }) {
    if (deleteLecture != null) {
      return deleteLecture(this);
    }
    return orElse();
  }
}

abstract class DeleteLecture implements LectureEvent {
  const factory DeleteLecture(final String lectureId) = _$DeleteLectureImpl;

  String get lectureId;

  /// Create a copy of LectureEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteLectureImplCopyWith<_$DeleteLectureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetScheduleImplCopyWith<$Res> {
  factory _$$SetScheduleImplCopyWith(
    _$SetScheduleImpl value,
    $Res Function(_$SetScheduleImpl) then,
  ) = __$$SetScheduleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Schedule schedule, Department department});

  $ScheduleCopyWith<$Res> get schedule;
  $DepartmentCopyWith<$Res> get department;
}

/// @nodoc
class __$$SetScheduleImplCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res, _$SetScheduleImpl>
    implements _$$SetScheduleImplCopyWith<$Res> {
  __$$SetScheduleImplCopyWithImpl(
    _$SetScheduleImpl _value,
    $Res Function(_$SetScheduleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LectureEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? schedule = null, Object? department = null}) {
    return _then(
      _$SetScheduleImpl(
        schedule:
            null == schedule
                ? _value.schedule
                : schedule // ignore: cast_nullable_to_non_nullable
                    as Schedule,
        department:
            null == department
                ? _value.department
                : department // ignore: cast_nullable_to_non_nullable
                    as Department,
      ),
    );
  }

  /// Create a copy of LectureEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScheduleCopyWith<$Res> get schedule {
    return $ScheduleCopyWith<$Res>(_value.schedule, (value) {
      return _then(_value.copyWith(schedule: value));
    });
  }

  /// Create a copy of LectureEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepartmentCopyWith<$Res> get department {
    return $DepartmentCopyWith<$Res>(_value.department, (value) {
      return _then(_value.copyWith(department: value));
    });
  }
}

/// @nodoc

class _$SetScheduleImpl implements SetSchedule {
  const _$SetScheduleImpl({required this.schedule, required this.department});

  @override
  final Schedule schedule;
  @override
  final Department department;

  @override
  String toString() {
    return 'LectureEvent.setSchedule(schedule: $schedule, department: $department)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetScheduleImpl &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.department, department) ||
                other.department == department));
  }

  @override
  int get hashCode => Object.hash(runtimeType, schedule, department);

  /// Create a copy of LectureEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetScheduleImplCopyWith<_$SetScheduleImpl> get copyWith =>
      __$$SetScheduleImplCopyWithImpl<_$SetScheduleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLectures,
    required TResult Function(Lecture lecture) addLecture,
    required TResult Function(Lecture lecture) updateLecture,
    required TResult Function(String lectureId) deleteLecture,
    required TResult Function(Schedule schedule, Department department)
    setSchedule,
  }) {
    return setSchedule(schedule, department);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLectures,
    TResult? Function(Lecture lecture)? addLecture,
    TResult? Function(Lecture lecture)? updateLecture,
    TResult? Function(String lectureId)? deleteLecture,
    TResult? Function(Schedule schedule, Department department)? setSchedule,
  }) {
    return setSchedule?.call(schedule, department);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLectures,
    TResult Function(Lecture lecture)? addLecture,
    TResult Function(Lecture lecture)? updateLecture,
    TResult Function(String lectureId)? deleteLecture,
    TResult Function(Schedule schedule, Department department)? setSchedule,
    required TResult orElse(),
  }) {
    if (setSchedule != null) {
      return setSchedule(schedule, department);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchLectures value) fetchLectures,
    required TResult Function(AddLecture value) addLecture,
    required TResult Function(UpdateLecture value) updateLecture,
    required TResult Function(DeleteLecture value) deleteLecture,
    required TResult Function(SetSchedule value) setSchedule,
  }) {
    return setSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchLectures value)? fetchLectures,
    TResult? Function(AddLecture value)? addLecture,
    TResult? Function(UpdateLecture value)? updateLecture,
    TResult? Function(DeleteLecture value)? deleteLecture,
    TResult? Function(SetSchedule value)? setSchedule,
  }) {
    return setSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchLectures value)? fetchLectures,
    TResult Function(AddLecture value)? addLecture,
    TResult Function(UpdateLecture value)? updateLecture,
    TResult Function(DeleteLecture value)? deleteLecture,
    TResult Function(SetSchedule value)? setSchedule,
    required TResult orElse(),
  }) {
    if (setSchedule != null) {
      return setSchedule(this);
    }
    return orElse();
  }
}

abstract class SetSchedule implements LectureEvent {
  const factory SetSchedule({
    required final Schedule schedule,
    required final Department department,
  }) = _$SetScheduleImpl;

  Schedule get schedule;
  Department get department;

  /// Create a copy of LectureEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetScheduleImplCopyWith<_$SetScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LectureState {
  Status get status => throw _privateConstructorUsedError;
  Status get createStatus => throw _privateConstructorUsedError;
  List<Lecture> get lectures => throw _privateConstructorUsedError;
  Schedule? get schedule => throw _privateConstructorUsedError;
  Department? get department => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of LectureState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LectureStateCopyWith<LectureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LectureStateCopyWith<$Res> {
  factory $LectureStateCopyWith(
    LectureState value,
    $Res Function(LectureState) then,
  ) = _$LectureStateCopyWithImpl<$Res, LectureState>;
  @useResult
  $Res call({
    Status status,
    Status createStatus,
    List<Lecture> lectures,
    Schedule? schedule,
    Department? department,
    String? errorMessage,
  });

  $StatusCopyWith<$Res> get status;
  $StatusCopyWith<$Res> get createStatus;
  $ScheduleCopyWith<$Res>? get schedule;
  $DepartmentCopyWith<$Res>? get department;
}

/// @nodoc
class _$LectureStateCopyWithImpl<$Res, $Val extends LectureState>
    implements $LectureStateCopyWith<$Res> {
  _$LectureStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LectureState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? createStatus = null,
    Object? lectures = null,
    Object? schedule = freezed,
    Object? department = freezed,
    Object? errorMessage = freezed,
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
            lectures:
                null == lectures
                    ? _value.lectures
                    : lectures // ignore: cast_nullable_to_non_nullable
                        as List<Lecture>,
            schedule:
                freezed == schedule
                    ? _value.schedule
                    : schedule // ignore: cast_nullable_to_non_nullable
                        as Schedule?,
            department:
                freezed == department
                    ? _value.department
                    : department // ignore: cast_nullable_to_non_nullable
                        as Department?,
            errorMessage:
                freezed == errorMessage
                    ? _value.errorMessage
                    : errorMessage // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of LectureState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of LectureState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get createStatus {
    return $StatusCopyWith<$Res>(_value.createStatus, (value) {
      return _then(_value.copyWith(createStatus: value) as $Val);
    });
  }

  /// Create a copy of LectureState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScheduleCopyWith<$Res>? get schedule {
    if (_value.schedule == null) {
      return null;
    }

    return $ScheduleCopyWith<$Res>(_value.schedule!, (value) {
      return _then(_value.copyWith(schedule: value) as $Val);
    });
  }

  /// Create a copy of LectureState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepartmentCopyWith<$Res>? get department {
    if (_value.department == null) {
      return null;
    }

    return $DepartmentCopyWith<$Res>(_value.department!, (value) {
      return _then(_value.copyWith(department: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LectureStateImplCopyWith<$Res>
    implements $LectureStateCopyWith<$Res> {
  factory _$$LectureStateImplCopyWith(
    _$LectureStateImpl value,
    $Res Function(_$LectureStateImpl) then,
  ) = __$$LectureStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status status,
    Status createStatus,
    List<Lecture> lectures,
    Schedule? schedule,
    Department? department,
    String? errorMessage,
  });

  @override
  $StatusCopyWith<$Res> get status;
  @override
  $StatusCopyWith<$Res> get createStatus;
  @override
  $ScheduleCopyWith<$Res>? get schedule;
  @override
  $DepartmentCopyWith<$Res>? get department;
}

/// @nodoc
class __$$LectureStateImplCopyWithImpl<$Res>
    extends _$LectureStateCopyWithImpl<$Res, _$LectureStateImpl>
    implements _$$LectureStateImplCopyWith<$Res> {
  __$$LectureStateImplCopyWithImpl(
    _$LectureStateImpl _value,
    $Res Function(_$LectureStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LectureState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? createStatus = null,
    Object? lectures = null,
    Object? schedule = freezed,
    Object? department = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$LectureStateImpl(
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
        lectures:
            null == lectures
                ? _value._lectures
                : lectures // ignore: cast_nullable_to_non_nullable
                    as List<Lecture>,
        schedule:
            freezed == schedule
                ? _value.schedule
                : schedule // ignore: cast_nullable_to_non_nullable
                    as Schedule?,
        department:
            freezed == department
                ? _value.department
                : department // ignore: cast_nullable_to_non_nullable
                    as Department?,
        errorMessage:
            freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$LectureStateImpl implements _LectureState {
  const _$LectureStateImpl({
    this.status = const Status.initial(),
    this.createStatus = const Status.initial(),
    final List<Lecture> lectures = const [],
    this.schedule,
    this.department,
    this.errorMessage,
  }) : _lectures = lectures;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Status createStatus;
  final List<Lecture> _lectures;
  @override
  @JsonKey()
  List<Lecture> get lectures {
    if (_lectures is EqualUnmodifiableListView) return _lectures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lectures);
  }

  @override
  final Schedule? schedule;
  @override
  final Department? department;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'LectureState(status: $status, createStatus: $createStatus, lectures: $lectures, schedule: $schedule, department: $department, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LectureStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createStatus, createStatus) ||
                other.createStatus == createStatus) &&
            const DeepCollectionEquality().equals(other._lectures, _lectures) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    createStatus,
    const DeepCollectionEquality().hash(_lectures),
    schedule,
    department,
    errorMessage,
  );

  /// Create a copy of LectureState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LectureStateImplCopyWith<_$LectureStateImpl> get copyWith =>
      __$$LectureStateImplCopyWithImpl<_$LectureStateImpl>(this, _$identity);
}

abstract class _LectureState implements LectureState {
  const factory _LectureState({
    final Status status,
    final Status createStatus,
    final List<Lecture> lectures,
    final Schedule? schedule,
    final Department? department,
    final String? errorMessage,
  }) = _$LectureStateImpl;

  @override
  Status get status;
  @override
  Status get createStatus;
  @override
  List<Lecture> get lectures;
  @override
  Schedule? get schedule;
  @override
  Department? get department;
  @override
  String? get errorMessage;

  /// Create a copy of LectureState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LectureStateImplCopyWith<_$LectureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
