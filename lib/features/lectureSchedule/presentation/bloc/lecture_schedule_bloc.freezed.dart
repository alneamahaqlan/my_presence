// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecture_schedule_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LectureScheduleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String departmentId) fetchSchedules,
    required TResult Function(
      String departmentId,
      ScheduleCreateBody scheduleCreateBody,
    )
    addSchedule,
    required TResult Function(String id, Schedule schedule) updateSchedule,
    required TResult Function(String id) deleteSchedule,
    required TResult Function(
      String lectureId,
      String scheduleId,
      Attendance attendance,
    )
    updateAttendance,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String departmentId)? fetchSchedules,
    TResult? Function(
      String departmentId,
      ScheduleCreateBody scheduleCreateBody,
    )?
    addSchedule,
    TResult? Function(String id, Schedule schedule)? updateSchedule,
    TResult? Function(String id)? deleteSchedule,
    TResult? Function(
      String lectureId,
      String scheduleId,
      Attendance attendance,
    )?
    updateAttendance,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String departmentId)? fetchSchedules,
    TResult Function(
      String departmentId,
      ScheduleCreateBody scheduleCreateBody,
    )?
    addSchedule,
    TResult Function(String id, Schedule schedule)? updateSchedule,
    TResult Function(String id)? deleteSchedule,
    TResult Function(
      String lectureId,
      String scheduleId,
      Attendance attendance,
    )?
    updateAttendance,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchLectureSchedules value) fetchSchedules,
    required TResult Function(AddLectureSchedule value) addSchedule,
    required TResult Function(UpdateLectureSchedule value) updateSchedule,
    required TResult Function(DeleteLectureSchedule value) deleteSchedule,
    required TResult Function(UpdateAttendance value) updateAttendance,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchLectureSchedules value)? fetchSchedules,
    TResult? Function(AddLectureSchedule value)? addSchedule,
    TResult? Function(UpdateLectureSchedule value)? updateSchedule,
    TResult? Function(DeleteLectureSchedule value)? deleteSchedule,
    TResult? Function(UpdateAttendance value)? updateAttendance,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchLectureSchedules value)? fetchSchedules,
    TResult Function(AddLectureSchedule value)? addSchedule,
    TResult Function(UpdateLectureSchedule value)? updateSchedule,
    TResult Function(DeleteLectureSchedule value)? deleteSchedule,
    TResult Function(UpdateAttendance value)? updateAttendance,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LectureScheduleEventCopyWith<$Res> {
  factory $LectureScheduleEventCopyWith(
    LectureScheduleEvent value,
    $Res Function(LectureScheduleEvent) then,
  ) = _$LectureScheduleEventCopyWithImpl<$Res, LectureScheduleEvent>;
}

/// @nodoc
class _$LectureScheduleEventCopyWithImpl<
  $Res,
  $Val extends LectureScheduleEvent
>
    implements $LectureScheduleEventCopyWith<$Res> {
  _$LectureScheduleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LectureScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchLectureSchedulesImplCopyWith<$Res> {
  factory _$$FetchLectureSchedulesImplCopyWith(
    _$FetchLectureSchedulesImpl value,
    $Res Function(_$FetchLectureSchedulesImpl) then,
  ) = __$$FetchLectureSchedulesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String departmentId});
}

/// @nodoc
class __$$FetchLectureSchedulesImplCopyWithImpl<$Res>
    extends
        _$LectureScheduleEventCopyWithImpl<$Res, _$FetchLectureSchedulesImpl>
    implements _$$FetchLectureSchedulesImplCopyWith<$Res> {
  __$$FetchLectureSchedulesImplCopyWithImpl(
    _$FetchLectureSchedulesImpl _value,
    $Res Function(_$FetchLectureSchedulesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LectureScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? departmentId = null}) {
    return _then(
      _$FetchLectureSchedulesImpl(
        departmentId:
            null == departmentId
                ? _value.departmentId
                : departmentId // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$FetchLectureSchedulesImpl implements FetchLectureSchedules {
  const _$FetchLectureSchedulesImpl({required this.departmentId});

  @override
  final String departmentId;

  @override
  String toString() {
    return 'LectureScheduleEvent.fetchSchedules(departmentId: $departmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchLectureSchedulesImpl &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, departmentId);

  /// Create a copy of LectureScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchLectureSchedulesImplCopyWith<_$FetchLectureSchedulesImpl>
  get copyWith =>
      __$$FetchLectureSchedulesImplCopyWithImpl<_$FetchLectureSchedulesImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String departmentId) fetchSchedules,
    required TResult Function(
      String departmentId,
      ScheduleCreateBody scheduleCreateBody,
    )
    addSchedule,
    required TResult Function(String id, Schedule schedule) updateSchedule,
    required TResult Function(String id) deleteSchedule,
    required TResult Function(
      String lectureId,
      String scheduleId,
      Attendance attendance,
    )
    updateAttendance,
  }) {
    return fetchSchedules(departmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String departmentId)? fetchSchedules,
    TResult? Function(
      String departmentId,
      ScheduleCreateBody scheduleCreateBody,
    )?
    addSchedule,
    TResult? Function(String id, Schedule schedule)? updateSchedule,
    TResult? Function(String id)? deleteSchedule,
    TResult? Function(
      String lectureId,
      String scheduleId,
      Attendance attendance,
    )?
    updateAttendance,
  }) {
    return fetchSchedules?.call(departmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String departmentId)? fetchSchedules,
    TResult Function(
      String departmentId,
      ScheduleCreateBody scheduleCreateBody,
    )?
    addSchedule,
    TResult Function(String id, Schedule schedule)? updateSchedule,
    TResult Function(String id)? deleteSchedule,
    TResult Function(
      String lectureId,
      String scheduleId,
      Attendance attendance,
    )?
    updateAttendance,
    required TResult orElse(),
  }) {
    if (fetchSchedules != null) {
      return fetchSchedules(departmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchLectureSchedules value) fetchSchedules,
    required TResult Function(AddLectureSchedule value) addSchedule,
    required TResult Function(UpdateLectureSchedule value) updateSchedule,
    required TResult Function(DeleteLectureSchedule value) deleteSchedule,
    required TResult Function(UpdateAttendance value) updateAttendance,
  }) {
    return fetchSchedules(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchLectureSchedules value)? fetchSchedules,
    TResult? Function(AddLectureSchedule value)? addSchedule,
    TResult? Function(UpdateLectureSchedule value)? updateSchedule,
    TResult? Function(DeleteLectureSchedule value)? deleteSchedule,
    TResult? Function(UpdateAttendance value)? updateAttendance,
  }) {
    return fetchSchedules?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchLectureSchedules value)? fetchSchedules,
    TResult Function(AddLectureSchedule value)? addSchedule,
    TResult Function(UpdateLectureSchedule value)? updateSchedule,
    TResult Function(DeleteLectureSchedule value)? deleteSchedule,
    TResult Function(UpdateAttendance value)? updateAttendance,
    required TResult orElse(),
  }) {
    if (fetchSchedules != null) {
      return fetchSchedules(this);
    }
    return orElse();
  }
}

abstract class FetchLectureSchedules implements LectureScheduleEvent {
  const factory FetchLectureSchedules({required final String departmentId}) =
      _$FetchLectureSchedulesImpl;

  String get departmentId;

  /// Create a copy of LectureScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchLectureSchedulesImplCopyWith<_$FetchLectureSchedulesImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddLectureScheduleImplCopyWith<$Res> {
  factory _$$AddLectureScheduleImplCopyWith(
    _$AddLectureScheduleImpl value,
    $Res Function(_$AddLectureScheduleImpl) then,
  ) = __$$AddLectureScheduleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String departmentId, ScheduleCreateBody scheduleCreateBody});

  $ScheduleCreateBodyCopyWith<$Res> get scheduleCreateBody;
}

/// @nodoc
class __$$AddLectureScheduleImplCopyWithImpl<$Res>
    extends _$LectureScheduleEventCopyWithImpl<$Res, _$AddLectureScheduleImpl>
    implements _$$AddLectureScheduleImplCopyWith<$Res> {
  __$$AddLectureScheduleImplCopyWithImpl(
    _$AddLectureScheduleImpl _value,
    $Res Function(_$AddLectureScheduleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LectureScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? departmentId = null, Object? scheduleCreateBody = null}) {
    return _then(
      _$AddLectureScheduleImpl(
        departmentId:
            null == departmentId
                ? _value.departmentId
                : departmentId // ignore: cast_nullable_to_non_nullable
                    as String,
        scheduleCreateBody:
            null == scheduleCreateBody
                ? _value.scheduleCreateBody
                : scheduleCreateBody // ignore: cast_nullable_to_non_nullable
                    as ScheduleCreateBody,
      ),
    );
  }

  /// Create a copy of LectureScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScheduleCreateBodyCopyWith<$Res> get scheduleCreateBody {
    return $ScheduleCreateBodyCopyWith<$Res>(_value.scheduleCreateBody, (
      value,
    ) {
      return _then(_value.copyWith(scheduleCreateBody: value));
    });
  }
}

/// @nodoc

class _$AddLectureScheduleImpl implements AddLectureSchedule {
  const _$AddLectureScheduleImpl({
    required this.departmentId,
    required this.scheduleCreateBody,
  });

  @override
  final String departmentId;
  @override
  final ScheduleCreateBody scheduleCreateBody;

  @override
  String toString() {
    return 'LectureScheduleEvent.addSchedule(departmentId: $departmentId, scheduleCreateBody: $scheduleCreateBody)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddLectureScheduleImpl &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId) &&
            (identical(other.scheduleCreateBody, scheduleCreateBody) ||
                other.scheduleCreateBody == scheduleCreateBody));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, departmentId, scheduleCreateBody);

  /// Create a copy of LectureScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddLectureScheduleImplCopyWith<_$AddLectureScheduleImpl> get copyWith =>
      __$$AddLectureScheduleImplCopyWithImpl<_$AddLectureScheduleImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String departmentId) fetchSchedules,
    required TResult Function(
      String departmentId,
      ScheduleCreateBody scheduleCreateBody,
    )
    addSchedule,
    required TResult Function(String id, Schedule schedule) updateSchedule,
    required TResult Function(String id) deleteSchedule,
    required TResult Function(
      String lectureId,
      String scheduleId,
      Attendance attendance,
    )
    updateAttendance,
  }) {
    return addSchedule(departmentId, scheduleCreateBody);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String departmentId)? fetchSchedules,
    TResult? Function(
      String departmentId,
      ScheduleCreateBody scheduleCreateBody,
    )?
    addSchedule,
    TResult? Function(String id, Schedule schedule)? updateSchedule,
    TResult? Function(String id)? deleteSchedule,
    TResult? Function(
      String lectureId,
      String scheduleId,
      Attendance attendance,
    )?
    updateAttendance,
  }) {
    return addSchedule?.call(departmentId, scheduleCreateBody);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String departmentId)? fetchSchedules,
    TResult Function(
      String departmentId,
      ScheduleCreateBody scheduleCreateBody,
    )?
    addSchedule,
    TResult Function(String id, Schedule schedule)? updateSchedule,
    TResult Function(String id)? deleteSchedule,
    TResult Function(
      String lectureId,
      String scheduleId,
      Attendance attendance,
    )?
    updateAttendance,
    required TResult orElse(),
  }) {
    if (addSchedule != null) {
      return addSchedule(departmentId, scheduleCreateBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchLectureSchedules value) fetchSchedules,
    required TResult Function(AddLectureSchedule value) addSchedule,
    required TResult Function(UpdateLectureSchedule value) updateSchedule,
    required TResult Function(DeleteLectureSchedule value) deleteSchedule,
    required TResult Function(UpdateAttendance value) updateAttendance,
  }) {
    return addSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchLectureSchedules value)? fetchSchedules,
    TResult? Function(AddLectureSchedule value)? addSchedule,
    TResult? Function(UpdateLectureSchedule value)? updateSchedule,
    TResult? Function(DeleteLectureSchedule value)? deleteSchedule,
    TResult? Function(UpdateAttendance value)? updateAttendance,
  }) {
    return addSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchLectureSchedules value)? fetchSchedules,
    TResult Function(AddLectureSchedule value)? addSchedule,
    TResult Function(UpdateLectureSchedule value)? updateSchedule,
    TResult Function(DeleteLectureSchedule value)? deleteSchedule,
    TResult Function(UpdateAttendance value)? updateAttendance,
    required TResult orElse(),
  }) {
    if (addSchedule != null) {
      return addSchedule(this);
    }
    return orElse();
  }
}

abstract class AddLectureSchedule implements LectureScheduleEvent {
  const factory AddLectureSchedule({
    required final String departmentId,
    required final ScheduleCreateBody scheduleCreateBody,
  }) = _$AddLectureScheduleImpl;

  String get departmentId;
  ScheduleCreateBody get scheduleCreateBody;

  /// Create a copy of LectureScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddLectureScheduleImplCopyWith<_$AddLectureScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateLectureScheduleImplCopyWith<$Res> {
  factory _$$UpdateLectureScheduleImplCopyWith(
    _$UpdateLectureScheduleImpl value,
    $Res Function(_$UpdateLectureScheduleImpl) then,
  ) = __$$UpdateLectureScheduleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, Schedule schedule});

  $ScheduleCopyWith<$Res> get schedule;
}

/// @nodoc
class __$$UpdateLectureScheduleImplCopyWithImpl<$Res>
    extends
        _$LectureScheduleEventCopyWithImpl<$Res, _$UpdateLectureScheduleImpl>
    implements _$$UpdateLectureScheduleImplCopyWith<$Res> {
  __$$UpdateLectureScheduleImplCopyWithImpl(
    _$UpdateLectureScheduleImpl _value,
    $Res Function(_$UpdateLectureScheduleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LectureScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? schedule = null}) {
    return _then(
      _$UpdateLectureScheduleImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as String,
        null == schedule
            ? _value.schedule
            : schedule // ignore: cast_nullable_to_non_nullable
                as Schedule,
      ),
    );
  }

  /// Create a copy of LectureScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScheduleCopyWith<$Res> get schedule {
    return $ScheduleCopyWith<$Res>(_value.schedule, (value) {
      return _then(_value.copyWith(schedule: value));
    });
  }
}

/// @nodoc

class _$UpdateLectureScheduleImpl implements UpdateLectureSchedule {
  const _$UpdateLectureScheduleImpl(this.id, this.schedule);

  @override
  final String id;
  @override
  final Schedule schedule;

  @override
  String toString() {
    return 'LectureScheduleEvent.updateSchedule(id: $id, schedule: $schedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLectureScheduleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, schedule);

  /// Create a copy of LectureScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLectureScheduleImplCopyWith<_$UpdateLectureScheduleImpl>
  get copyWith =>
      __$$UpdateLectureScheduleImplCopyWithImpl<_$UpdateLectureScheduleImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String departmentId) fetchSchedules,
    required TResult Function(
      String departmentId,
      ScheduleCreateBody scheduleCreateBody,
    )
    addSchedule,
    required TResult Function(String id, Schedule schedule) updateSchedule,
    required TResult Function(String id) deleteSchedule,
    required TResult Function(
      String lectureId,
      String scheduleId,
      Attendance attendance,
    )
    updateAttendance,
  }) {
    return updateSchedule(id, schedule);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String departmentId)? fetchSchedules,
    TResult? Function(
      String departmentId,
      ScheduleCreateBody scheduleCreateBody,
    )?
    addSchedule,
    TResult? Function(String id, Schedule schedule)? updateSchedule,
    TResult? Function(String id)? deleteSchedule,
    TResult? Function(
      String lectureId,
      String scheduleId,
      Attendance attendance,
    )?
    updateAttendance,
  }) {
    return updateSchedule?.call(id, schedule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String departmentId)? fetchSchedules,
    TResult Function(
      String departmentId,
      ScheduleCreateBody scheduleCreateBody,
    )?
    addSchedule,
    TResult Function(String id, Schedule schedule)? updateSchedule,
    TResult Function(String id)? deleteSchedule,
    TResult Function(
      String lectureId,
      String scheduleId,
      Attendance attendance,
    )?
    updateAttendance,
    required TResult orElse(),
  }) {
    if (updateSchedule != null) {
      return updateSchedule(id, schedule);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchLectureSchedules value) fetchSchedules,
    required TResult Function(AddLectureSchedule value) addSchedule,
    required TResult Function(UpdateLectureSchedule value) updateSchedule,
    required TResult Function(DeleteLectureSchedule value) deleteSchedule,
    required TResult Function(UpdateAttendance value) updateAttendance,
  }) {
    return updateSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchLectureSchedules value)? fetchSchedules,
    TResult? Function(AddLectureSchedule value)? addSchedule,
    TResult? Function(UpdateLectureSchedule value)? updateSchedule,
    TResult? Function(DeleteLectureSchedule value)? deleteSchedule,
    TResult? Function(UpdateAttendance value)? updateAttendance,
  }) {
    return updateSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchLectureSchedules value)? fetchSchedules,
    TResult Function(AddLectureSchedule value)? addSchedule,
    TResult Function(UpdateLectureSchedule value)? updateSchedule,
    TResult Function(DeleteLectureSchedule value)? deleteSchedule,
    TResult Function(UpdateAttendance value)? updateAttendance,
    required TResult orElse(),
  }) {
    if (updateSchedule != null) {
      return updateSchedule(this);
    }
    return orElse();
  }
}

abstract class UpdateLectureSchedule implements LectureScheduleEvent {
  const factory UpdateLectureSchedule(
    final String id,
    final Schedule schedule,
  ) = _$UpdateLectureScheduleImpl;

  String get id;
  Schedule get schedule;

  /// Create a copy of LectureScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateLectureScheduleImplCopyWith<_$UpdateLectureScheduleImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteLectureScheduleImplCopyWith<$Res> {
  factory _$$DeleteLectureScheduleImplCopyWith(
    _$DeleteLectureScheduleImpl value,
    $Res Function(_$DeleteLectureScheduleImpl) then,
  ) = __$$DeleteLectureScheduleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteLectureScheduleImplCopyWithImpl<$Res>
    extends
        _$LectureScheduleEventCopyWithImpl<$Res, _$DeleteLectureScheduleImpl>
    implements _$$DeleteLectureScheduleImplCopyWith<$Res> {
  __$$DeleteLectureScheduleImplCopyWithImpl(
    _$DeleteLectureScheduleImpl _value,
    $Res Function(_$DeleteLectureScheduleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LectureScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$DeleteLectureScheduleImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$DeleteLectureScheduleImpl implements DeleteLectureSchedule {
  const _$DeleteLectureScheduleImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'LectureScheduleEvent.deleteSchedule(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteLectureScheduleImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of LectureScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteLectureScheduleImplCopyWith<_$DeleteLectureScheduleImpl>
  get copyWith =>
      __$$DeleteLectureScheduleImplCopyWithImpl<_$DeleteLectureScheduleImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String departmentId) fetchSchedules,
    required TResult Function(
      String departmentId,
      ScheduleCreateBody scheduleCreateBody,
    )
    addSchedule,
    required TResult Function(String id, Schedule schedule) updateSchedule,
    required TResult Function(String id) deleteSchedule,
    required TResult Function(
      String lectureId,
      String scheduleId,
      Attendance attendance,
    )
    updateAttendance,
  }) {
    return deleteSchedule(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String departmentId)? fetchSchedules,
    TResult? Function(
      String departmentId,
      ScheduleCreateBody scheduleCreateBody,
    )?
    addSchedule,
    TResult? Function(String id, Schedule schedule)? updateSchedule,
    TResult? Function(String id)? deleteSchedule,
    TResult? Function(
      String lectureId,
      String scheduleId,
      Attendance attendance,
    )?
    updateAttendance,
  }) {
    return deleteSchedule?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String departmentId)? fetchSchedules,
    TResult Function(
      String departmentId,
      ScheduleCreateBody scheduleCreateBody,
    )?
    addSchedule,
    TResult Function(String id, Schedule schedule)? updateSchedule,
    TResult Function(String id)? deleteSchedule,
    TResult Function(
      String lectureId,
      String scheduleId,
      Attendance attendance,
    )?
    updateAttendance,
    required TResult orElse(),
  }) {
    if (deleteSchedule != null) {
      return deleteSchedule(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchLectureSchedules value) fetchSchedules,
    required TResult Function(AddLectureSchedule value) addSchedule,
    required TResult Function(UpdateLectureSchedule value) updateSchedule,
    required TResult Function(DeleteLectureSchedule value) deleteSchedule,
    required TResult Function(UpdateAttendance value) updateAttendance,
  }) {
    return deleteSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchLectureSchedules value)? fetchSchedules,
    TResult? Function(AddLectureSchedule value)? addSchedule,
    TResult? Function(UpdateLectureSchedule value)? updateSchedule,
    TResult? Function(DeleteLectureSchedule value)? deleteSchedule,
    TResult? Function(UpdateAttendance value)? updateAttendance,
  }) {
    return deleteSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchLectureSchedules value)? fetchSchedules,
    TResult Function(AddLectureSchedule value)? addSchedule,
    TResult Function(UpdateLectureSchedule value)? updateSchedule,
    TResult Function(DeleteLectureSchedule value)? deleteSchedule,
    TResult Function(UpdateAttendance value)? updateAttendance,
    required TResult orElse(),
  }) {
    if (deleteSchedule != null) {
      return deleteSchedule(this);
    }
    return orElse();
  }
}

abstract class DeleteLectureSchedule implements LectureScheduleEvent {
  const factory DeleteLectureSchedule(final String id) =
      _$DeleteLectureScheduleImpl;

  String get id;

  /// Create a copy of LectureScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteLectureScheduleImplCopyWith<_$DeleteLectureScheduleImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAttendanceImplCopyWith<$Res> {
  factory _$$UpdateAttendanceImplCopyWith(
    _$UpdateAttendanceImpl value,
    $Res Function(_$UpdateAttendanceImpl) then,
  ) = __$$UpdateAttendanceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String lectureId, String scheduleId, Attendance attendance});

  $AttendanceCopyWith<$Res> get attendance;
}

/// @nodoc
class __$$UpdateAttendanceImplCopyWithImpl<$Res>
    extends _$LectureScheduleEventCopyWithImpl<$Res, _$UpdateAttendanceImpl>
    implements _$$UpdateAttendanceImplCopyWith<$Res> {
  __$$UpdateAttendanceImplCopyWithImpl(
    _$UpdateAttendanceImpl _value,
    $Res Function(_$UpdateAttendanceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LectureScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lectureId = null,
    Object? scheduleId = null,
    Object? attendance = null,
  }) {
    return _then(
      _$UpdateAttendanceImpl(
        lectureId:
            null == lectureId
                ? _value.lectureId
                : lectureId // ignore: cast_nullable_to_non_nullable
                    as String,
        scheduleId:
            null == scheduleId
                ? _value.scheduleId
                : scheduleId // ignore: cast_nullable_to_non_nullable
                    as String,
        attendance:
            null == attendance
                ? _value.attendance
                : attendance // ignore: cast_nullable_to_non_nullable
                    as Attendance,
      ),
    );
  }

  /// Create a copy of LectureScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendanceCopyWith<$Res> get attendance {
    return $AttendanceCopyWith<$Res>(_value.attendance, (value) {
      return _then(_value.copyWith(attendance: value));
    });
  }
}

/// @nodoc

class _$UpdateAttendanceImpl implements UpdateAttendance {
  const _$UpdateAttendanceImpl({
    required this.lectureId,
    required this.scheduleId,
    required this.attendance,
  });

  @override
  final String lectureId;
  @override
  final String scheduleId;
  @override
  final Attendance attendance;

  @override
  String toString() {
    return 'LectureScheduleEvent.updateAttendance(lectureId: $lectureId, scheduleId: $scheduleId, attendance: $attendance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAttendanceImpl &&
            (identical(other.lectureId, lectureId) ||
                other.lectureId == lectureId) &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId) &&
            (identical(other.attendance, attendance) ||
                other.attendance == attendance));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, lectureId, scheduleId, attendance);

  /// Create a copy of LectureScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAttendanceImplCopyWith<_$UpdateAttendanceImpl> get copyWith =>
      __$$UpdateAttendanceImplCopyWithImpl<_$UpdateAttendanceImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String departmentId) fetchSchedules,
    required TResult Function(
      String departmentId,
      ScheduleCreateBody scheduleCreateBody,
    )
    addSchedule,
    required TResult Function(String id, Schedule schedule) updateSchedule,
    required TResult Function(String id) deleteSchedule,
    required TResult Function(
      String lectureId,
      String scheduleId,
      Attendance attendance,
    )
    updateAttendance,
  }) {
    return updateAttendance(lectureId, scheduleId, attendance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String departmentId)? fetchSchedules,
    TResult? Function(
      String departmentId,
      ScheduleCreateBody scheduleCreateBody,
    )?
    addSchedule,
    TResult? Function(String id, Schedule schedule)? updateSchedule,
    TResult? Function(String id)? deleteSchedule,
    TResult? Function(
      String lectureId,
      String scheduleId,
      Attendance attendance,
    )?
    updateAttendance,
  }) {
    return updateAttendance?.call(lectureId, scheduleId, attendance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String departmentId)? fetchSchedules,
    TResult Function(
      String departmentId,
      ScheduleCreateBody scheduleCreateBody,
    )?
    addSchedule,
    TResult Function(String id, Schedule schedule)? updateSchedule,
    TResult Function(String id)? deleteSchedule,
    TResult Function(
      String lectureId,
      String scheduleId,
      Attendance attendance,
    )?
    updateAttendance,
    required TResult orElse(),
  }) {
    if (updateAttendance != null) {
      return updateAttendance(lectureId, scheduleId, attendance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchLectureSchedules value) fetchSchedules,
    required TResult Function(AddLectureSchedule value) addSchedule,
    required TResult Function(UpdateLectureSchedule value) updateSchedule,
    required TResult Function(DeleteLectureSchedule value) deleteSchedule,
    required TResult Function(UpdateAttendance value) updateAttendance,
  }) {
    return updateAttendance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchLectureSchedules value)? fetchSchedules,
    TResult? Function(AddLectureSchedule value)? addSchedule,
    TResult? Function(UpdateLectureSchedule value)? updateSchedule,
    TResult? Function(DeleteLectureSchedule value)? deleteSchedule,
    TResult? Function(UpdateAttendance value)? updateAttendance,
  }) {
    return updateAttendance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchLectureSchedules value)? fetchSchedules,
    TResult Function(AddLectureSchedule value)? addSchedule,
    TResult Function(UpdateLectureSchedule value)? updateSchedule,
    TResult Function(DeleteLectureSchedule value)? deleteSchedule,
    TResult Function(UpdateAttendance value)? updateAttendance,
    required TResult orElse(),
  }) {
    if (updateAttendance != null) {
      return updateAttendance(this);
    }
    return orElse();
  }
}

abstract class UpdateAttendance implements LectureScheduleEvent {
  const factory UpdateAttendance({
    required final String lectureId,
    required final String scheduleId,
    required final Attendance attendance,
  }) = _$UpdateAttendanceImpl;

  String get lectureId;
  String get scheduleId;
  Attendance get attendance;

  /// Create a copy of LectureScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAttendanceImplCopyWith<_$UpdateAttendanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LectureScheduleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Schedule> schedules) loaded,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Schedule> schedules)? loaded,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Schedule> schedules)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LectureScheduleInitial value) initial,
    required TResult Function(LectureScheduleLoading value) loading,
    required TResult Function(LectureScheduleLoaded value) loaded,
    required TResult Function(LectureScheduleError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LectureScheduleInitial value)? initial,
    TResult? Function(LectureScheduleLoading value)? loading,
    TResult? Function(LectureScheduleLoaded value)? loaded,
    TResult? Function(LectureScheduleError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LectureScheduleInitial value)? initial,
    TResult Function(LectureScheduleLoading value)? loading,
    TResult Function(LectureScheduleLoaded value)? loaded,
    TResult Function(LectureScheduleError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LectureScheduleStateCopyWith<$Res> {
  factory $LectureScheduleStateCopyWith(
    LectureScheduleState value,
    $Res Function(LectureScheduleState) then,
  ) = _$LectureScheduleStateCopyWithImpl<$Res, LectureScheduleState>;
}

/// @nodoc
class _$LectureScheduleStateCopyWithImpl<
  $Res,
  $Val extends LectureScheduleState
>
    implements $LectureScheduleStateCopyWith<$Res> {
  _$LectureScheduleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LectureScheduleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LectureScheduleInitialImplCopyWith<$Res> {
  factory _$$LectureScheduleInitialImplCopyWith(
    _$LectureScheduleInitialImpl value,
    $Res Function(_$LectureScheduleInitialImpl) then,
  ) = __$$LectureScheduleInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LectureScheduleInitialImplCopyWithImpl<$Res>
    extends
        _$LectureScheduleStateCopyWithImpl<$Res, _$LectureScheduleInitialImpl>
    implements _$$LectureScheduleInitialImplCopyWith<$Res> {
  __$$LectureScheduleInitialImplCopyWithImpl(
    _$LectureScheduleInitialImpl _value,
    $Res Function(_$LectureScheduleInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LectureScheduleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LectureScheduleInitialImpl implements LectureScheduleInitial {
  const _$LectureScheduleInitialImpl();

  @override
  String toString() {
    return 'LectureScheduleState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LectureScheduleInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Schedule> schedules) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Schedule> schedules)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Schedule> schedules)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LectureScheduleInitial value) initial,
    required TResult Function(LectureScheduleLoading value) loading,
    required TResult Function(LectureScheduleLoaded value) loaded,
    required TResult Function(LectureScheduleError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LectureScheduleInitial value)? initial,
    TResult? Function(LectureScheduleLoading value)? loading,
    TResult? Function(LectureScheduleLoaded value)? loaded,
    TResult? Function(LectureScheduleError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LectureScheduleInitial value)? initial,
    TResult Function(LectureScheduleLoading value)? loading,
    TResult Function(LectureScheduleLoaded value)? loaded,
    TResult Function(LectureScheduleError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LectureScheduleInitial implements LectureScheduleState {
  const factory LectureScheduleInitial() = _$LectureScheduleInitialImpl;
}

/// @nodoc
abstract class _$$LectureScheduleLoadingImplCopyWith<$Res> {
  factory _$$LectureScheduleLoadingImplCopyWith(
    _$LectureScheduleLoadingImpl value,
    $Res Function(_$LectureScheduleLoadingImpl) then,
  ) = __$$LectureScheduleLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LectureScheduleLoadingImplCopyWithImpl<$Res>
    extends
        _$LectureScheduleStateCopyWithImpl<$Res, _$LectureScheduleLoadingImpl>
    implements _$$LectureScheduleLoadingImplCopyWith<$Res> {
  __$$LectureScheduleLoadingImplCopyWithImpl(
    _$LectureScheduleLoadingImpl _value,
    $Res Function(_$LectureScheduleLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LectureScheduleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LectureScheduleLoadingImpl implements LectureScheduleLoading {
  const _$LectureScheduleLoadingImpl();

  @override
  String toString() {
    return 'LectureScheduleState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LectureScheduleLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Schedule> schedules) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Schedule> schedules)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Schedule> schedules)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LectureScheduleInitial value) initial,
    required TResult Function(LectureScheduleLoading value) loading,
    required TResult Function(LectureScheduleLoaded value) loaded,
    required TResult Function(LectureScheduleError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LectureScheduleInitial value)? initial,
    TResult? Function(LectureScheduleLoading value)? loading,
    TResult? Function(LectureScheduleLoaded value)? loaded,
    TResult? Function(LectureScheduleError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LectureScheduleInitial value)? initial,
    TResult Function(LectureScheduleLoading value)? loading,
    TResult Function(LectureScheduleLoaded value)? loaded,
    TResult Function(LectureScheduleError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LectureScheduleLoading implements LectureScheduleState {
  const factory LectureScheduleLoading() = _$LectureScheduleLoadingImpl;
}

/// @nodoc
abstract class _$$LectureScheduleLoadedImplCopyWith<$Res> {
  factory _$$LectureScheduleLoadedImplCopyWith(
    _$LectureScheduleLoadedImpl value,
    $Res Function(_$LectureScheduleLoadedImpl) then,
  ) = __$$LectureScheduleLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Schedule> schedules});
}

/// @nodoc
class __$$LectureScheduleLoadedImplCopyWithImpl<$Res>
    extends
        _$LectureScheduleStateCopyWithImpl<$Res, _$LectureScheduleLoadedImpl>
    implements _$$LectureScheduleLoadedImplCopyWith<$Res> {
  __$$LectureScheduleLoadedImplCopyWithImpl(
    _$LectureScheduleLoadedImpl _value,
    $Res Function(_$LectureScheduleLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LectureScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? schedules = null}) {
    return _then(
      _$LectureScheduleLoadedImpl(
        null == schedules
            ? _value._schedules
            : schedules // ignore: cast_nullable_to_non_nullable
                as List<Schedule>,
      ),
    );
  }
}

/// @nodoc

class _$LectureScheduleLoadedImpl implements LectureScheduleLoaded {
  const _$LectureScheduleLoadedImpl(final List<Schedule> schedules)
    : _schedules = schedules;

  final List<Schedule> _schedules;
  @override
  List<Schedule> get schedules {
    if (_schedules is EqualUnmodifiableListView) return _schedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedules);
  }

  @override
  String toString() {
    return 'LectureScheduleState.loaded(schedules: $schedules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LectureScheduleLoadedImpl &&
            const DeepCollectionEquality().equals(
              other._schedules,
              _schedules,
            ));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_schedules));

  /// Create a copy of LectureScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LectureScheduleLoadedImplCopyWith<_$LectureScheduleLoadedImpl>
  get copyWith =>
      __$$LectureScheduleLoadedImplCopyWithImpl<_$LectureScheduleLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Schedule> schedules) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(schedules);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Schedule> schedules)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(schedules);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Schedule> schedules)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(schedules);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LectureScheduleInitial value) initial,
    required TResult Function(LectureScheduleLoading value) loading,
    required TResult Function(LectureScheduleLoaded value) loaded,
    required TResult Function(LectureScheduleError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LectureScheduleInitial value)? initial,
    TResult? Function(LectureScheduleLoading value)? loading,
    TResult? Function(LectureScheduleLoaded value)? loaded,
    TResult? Function(LectureScheduleError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LectureScheduleInitial value)? initial,
    TResult Function(LectureScheduleLoading value)? loading,
    TResult Function(LectureScheduleLoaded value)? loaded,
    TResult Function(LectureScheduleError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LectureScheduleLoaded implements LectureScheduleState {
  const factory LectureScheduleLoaded(final List<Schedule> schedules) =
      _$LectureScheduleLoadedImpl;

  List<Schedule> get schedules;

  /// Create a copy of LectureScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LectureScheduleLoadedImplCopyWith<_$LectureScheduleLoadedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LectureScheduleErrorImplCopyWith<$Res> {
  factory _$$LectureScheduleErrorImplCopyWith(
    _$LectureScheduleErrorImpl value,
    $Res Function(_$LectureScheduleErrorImpl) then,
  ) = __$$LectureScheduleErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LectureScheduleErrorImplCopyWithImpl<$Res>
    extends _$LectureScheduleStateCopyWithImpl<$Res, _$LectureScheduleErrorImpl>
    implements _$$LectureScheduleErrorImplCopyWith<$Res> {
  __$$LectureScheduleErrorImplCopyWithImpl(
    _$LectureScheduleErrorImpl _value,
    $Res Function(_$LectureScheduleErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LectureScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$LectureScheduleErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$LectureScheduleErrorImpl implements LectureScheduleError {
  const _$LectureScheduleErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LectureScheduleState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LectureScheduleErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LectureScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LectureScheduleErrorImplCopyWith<_$LectureScheduleErrorImpl>
  get copyWith =>
      __$$LectureScheduleErrorImplCopyWithImpl<_$LectureScheduleErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Schedule> schedules) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Schedule> schedules)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Schedule> schedules)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LectureScheduleInitial value) initial,
    required TResult Function(LectureScheduleLoading value) loading,
    required TResult Function(LectureScheduleLoaded value) loaded,
    required TResult Function(LectureScheduleError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LectureScheduleInitial value)? initial,
    TResult? Function(LectureScheduleLoading value)? loading,
    TResult? Function(LectureScheduleLoaded value)? loaded,
    TResult? Function(LectureScheduleError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LectureScheduleInitial value)? initial,
    TResult Function(LectureScheduleLoading value)? loading,
    TResult Function(LectureScheduleLoaded value)? loaded,
    TResult Function(LectureScheduleError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LectureScheduleError implements LectureScheduleState {
  const factory LectureScheduleError(final String message) =
      _$LectureScheduleErrorImpl;

  String get message;

  /// Create a copy of LectureScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LectureScheduleErrorImplCopyWith<_$LectureScheduleErrorImpl>
  get copyWith => throw _privateConstructorUsedError;
}
