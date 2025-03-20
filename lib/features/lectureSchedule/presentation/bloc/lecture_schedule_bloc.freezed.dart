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
    required TResult Function(Department department) fetchSchedules,
    required TResult Function(
      Department department,
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
    required TResult Function(Department department) setDepartment,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Department department)? fetchSchedules,
    TResult? Function(
      Department department,
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
    TResult? Function(Department department)? setDepartment,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Department department)? fetchSchedules,
    TResult Function(
      Department department,
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
    TResult Function(Department department)? setDepartment,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchLectureSchedules value) fetchSchedules,
    required TResult Function(AddLectureSchedule value) addSchedule,
    required TResult Function(UpdateLectureSchedule value) updateSchedule,
    required TResult Function(DeleteLectureSchedule value) deleteSchedule,
    required TResult Function(UpdateAttendance value) updateAttendance,
    required TResult Function(SetDepartment value) setDepartment,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchLectureSchedules value)? fetchSchedules,
    TResult? Function(AddLectureSchedule value)? addSchedule,
    TResult? Function(UpdateLectureSchedule value)? updateSchedule,
    TResult? Function(DeleteLectureSchedule value)? deleteSchedule,
    TResult? Function(UpdateAttendance value)? updateAttendance,
    TResult? Function(SetDepartment value)? setDepartment,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchLectureSchedules value)? fetchSchedules,
    TResult Function(AddLectureSchedule value)? addSchedule,
    TResult Function(UpdateLectureSchedule value)? updateSchedule,
    TResult Function(DeleteLectureSchedule value)? deleteSchedule,
    TResult Function(UpdateAttendance value)? updateAttendance,
    TResult Function(SetDepartment value)? setDepartment,
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
  $Res call({Department department});

  $DepartmentCopyWith<$Res> get department;
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
  $Res call({Object? department = null}) {
    return _then(
      _$FetchLectureSchedulesImpl(
        department:
            null == department
                ? _value.department
                : department // ignore: cast_nullable_to_non_nullable
                    as Department,
      ),
    );
  }

  /// Create a copy of LectureScheduleEvent
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

class _$FetchLectureSchedulesImpl implements FetchLectureSchedules {
  const _$FetchLectureSchedulesImpl({required this.department});

  @override
  final Department department;

  @override
  String toString() {
    return 'LectureScheduleEvent.fetchSchedules(department: $department)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchLectureSchedulesImpl &&
            (identical(other.department, department) ||
                other.department == department));
  }

  @override
  int get hashCode => Object.hash(runtimeType, department);

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
    required TResult Function(Department department) fetchSchedules,
    required TResult Function(
      Department department,
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
    required TResult Function(Department department) setDepartment,
  }) {
    return fetchSchedules(department);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Department department)? fetchSchedules,
    TResult? Function(
      Department department,
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
    TResult? Function(Department department)? setDepartment,
  }) {
    return fetchSchedules?.call(department);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Department department)? fetchSchedules,
    TResult Function(
      Department department,
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
    TResult Function(Department department)? setDepartment,
    required TResult orElse(),
  }) {
    if (fetchSchedules != null) {
      return fetchSchedules(department);
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
    required TResult Function(SetDepartment value) setDepartment,
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
    TResult? Function(SetDepartment value)? setDepartment,
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
    TResult Function(SetDepartment value)? setDepartment,
    required TResult orElse(),
  }) {
    if (fetchSchedules != null) {
      return fetchSchedules(this);
    }
    return orElse();
  }
}

abstract class FetchLectureSchedules implements LectureScheduleEvent {
  const factory FetchLectureSchedules({required final Department department}) =
      _$FetchLectureSchedulesImpl;

  Department get department;

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
  $Res call({Department department, ScheduleCreateBody scheduleCreateBody});

  $DepartmentCopyWith<$Res> get department;
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
  $Res call({Object? department = null, Object? scheduleCreateBody = null}) {
    return _then(
      _$AddLectureScheduleImpl(
        department:
            null == department
                ? _value.department
                : department // ignore: cast_nullable_to_non_nullable
                    as Department,
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
  $DepartmentCopyWith<$Res> get department {
    return $DepartmentCopyWith<$Res>(_value.department, (value) {
      return _then(_value.copyWith(department: value));
    });
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
    required this.department,
    required this.scheduleCreateBody,
  });

  @override
  final Department department;
  @override
  final ScheduleCreateBody scheduleCreateBody;

  @override
  String toString() {
    return 'LectureScheduleEvent.addSchedule(department: $department, scheduleCreateBody: $scheduleCreateBody)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddLectureScheduleImpl &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.scheduleCreateBody, scheduleCreateBody) ||
                other.scheduleCreateBody == scheduleCreateBody));
  }

  @override
  int get hashCode => Object.hash(runtimeType, department, scheduleCreateBody);

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
    required TResult Function(Department department) fetchSchedules,
    required TResult Function(
      Department department,
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
    required TResult Function(Department department) setDepartment,
  }) {
    return addSchedule(department, scheduleCreateBody);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Department department)? fetchSchedules,
    TResult? Function(
      Department department,
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
    TResult? Function(Department department)? setDepartment,
  }) {
    return addSchedule?.call(department, scheduleCreateBody);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Department department)? fetchSchedules,
    TResult Function(
      Department department,
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
    TResult Function(Department department)? setDepartment,
    required TResult orElse(),
  }) {
    if (addSchedule != null) {
      return addSchedule(department, scheduleCreateBody);
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
    required TResult Function(SetDepartment value) setDepartment,
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
    TResult? Function(SetDepartment value)? setDepartment,
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
    TResult Function(SetDepartment value)? setDepartment,
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
    required final Department department,
    required final ScheduleCreateBody scheduleCreateBody,
  }) = _$AddLectureScheduleImpl;

  Department get department;
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
    required TResult Function(Department department) fetchSchedules,
    required TResult Function(
      Department department,
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
    required TResult Function(Department department) setDepartment,
  }) {
    return updateSchedule(id, schedule);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Department department)? fetchSchedules,
    TResult? Function(
      Department department,
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
    TResult? Function(Department department)? setDepartment,
  }) {
    return updateSchedule?.call(id, schedule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Department department)? fetchSchedules,
    TResult Function(
      Department department,
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
    TResult Function(Department department)? setDepartment,
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
    required TResult Function(SetDepartment value) setDepartment,
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
    TResult? Function(SetDepartment value)? setDepartment,
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
    TResult Function(SetDepartment value)? setDepartment,
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
    required TResult Function(Department department) fetchSchedules,
    required TResult Function(
      Department department,
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
    required TResult Function(Department department) setDepartment,
  }) {
    return deleteSchedule(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Department department)? fetchSchedules,
    TResult? Function(
      Department department,
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
    TResult? Function(Department department)? setDepartment,
  }) {
    return deleteSchedule?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Department department)? fetchSchedules,
    TResult Function(
      Department department,
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
    TResult Function(Department department)? setDepartment,
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
    required TResult Function(SetDepartment value) setDepartment,
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
    TResult? Function(SetDepartment value)? setDepartment,
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
    TResult Function(SetDepartment value)? setDepartment,
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
    required TResult Function(Department department) fetchSchedules,
    required TResult Function(
      Department department,
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
    required TResult Function(Department department) setDepartment,
  }) {
    return updateAttendance(lectureId, scheduleId, attendance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Department department)? fetchSchedules,
    TResult? Function(
      Department department,
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
    TResult? Function(Department department)? setDepartment,
  }) {
    return updateAttendance?.call(lectureId, scheduleId, attendance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Department department)? fetchSchedules,
    TResult Function(
      Department department,
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
    TResult Function(Department department)? setDepartment,
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
    required TResult Function(SetDepartment value) setDepartment,
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
    TResult? Function(SetDepartment value)? setDepartment,
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
    TResult Function(SetDepartment value)? setDepartment,
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
abstract class _$$SetDepartmentImplCopyWith<$Res> {
  factory _$$SetDepartmentImplCopyWith(
    _$SetDepartmentImpl value,
    $Res Function(_$SetDepartmentImpl) then,
  ) = __$$SetDepartmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Department department});

  $DepartmentCopyWith<$Res> get department;
}

/// @nodoc
class __$$SetDepartmentImplCopyWithImpl<$Res>
    extends _$LectureScheduleEventCopyWithImpl<$Res, _$SetDepartmentImpl>
    implements _$$SetDepartmentImplCopyWith<$Res> {
  __$$SetDepartmentImplCopyWithImpl(
    _$SetDepartmentImpl _value,
    $Res Function(_$SetDepartmentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LectureScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? department = null}) {
    return _then(
      _$SetDepartmentImpl(
        department:
            null == department
                ? _value.department
                : department // ignore: cast_nullable_to_non_nullable
                    as Department,
      ),
    );
  }

  /// Create a copy of LectureScheduleEvent
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

class _$SetDepartmentImpl implements SetDepartment {
  const _$SetDepartmentImpl({required this.department});

  @override
  final Department department;

  @override
  String toString() {
    return 'LectureScheduleEvent.setDepartment(department: $department)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetDepartmentImpl &&
            (identical(other.department, department) ||
                other.department == department));
  }

  @override
  int get hashCode => Object.hash(runtimeType, department);

  /// Create a copy of LectureScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetDepartmentImplCopyWith<_$SetDepartmentImpl> get copyWith =>
      __$$SetDepartmentImplCopyWithImpl<_$SetDepartmentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Department department) fetchSchedules,
    required TResult Function(
      Department department,
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
    required TResult Function(Department department) setDepartment,
  }) {
    return setDepartment(department);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Department department)? fetchSchedules,
    TResult? Function(
      Department department,
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
    TResult? Function(Department department)? setDepartment,
  }) {
    return setDepartment?.call(department);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Department department)? fetchSchedules,
    TResult Function(
      Department department,
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
    TResult Function(Department department)? setDepartment,
    required TResult orElse(),
  }) {
    if (setDepartment != null) {
      return setDepartment(department);
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
    required TResult Function(SetDepartment value) setDepartment,
  }) {
    return setDepartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchLectureSchedules value)? fetchSchedules,
    TResult? Function(AddLectureSchedule value)? addSchedule,
    TResult? Function(UpdateLectureSchedule value)? updateSchedule,
    TResult? Function(DeleteLectureSchedule value)? deleteSchedule,
    TResult? Function(UpdateAttendance value)? updateAttendance,
    TResult? Function(SetDepartment value)? setDepartment,
  }) {
    return setDepartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchLectureSchedules value)? fetchSchedules,
    TResult Function(AddLectureSchedule value)? addSchedule,
    TResult Function(UpdateLectureSchedule value)? updateSchedule,
    TResult Function(DeleteLectureSchedule value)? deleteSchedule,
    TResult Function(UpdateAttendance value)? updateAttendance,
    TResult Function(SetDepartment value)? setDepartment,
    required TResult orElse(),
  }) {
    if (setDepartment != null) {
      return setDepartment(this);
    }
    return orElse();
  }
}

abstract class SetDepartment implements LectureScheduleEvent {
  const factory SetDepartment({required final Department department}) =
      _$SetDepartmentImpl;

  Department get department;

  /// Create a copy of LectureScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetDepartmentImplCopyWith<_$SetDepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LectureScheduleState {
  Status get status => throw _privateConstructorUsedError; // Add status field
  List<Schedule> get schedules =>
      throw _privateConstructorUsedError; // Rename to schedules
  Department? get department => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of LectureScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LectureScheduleStateCopyWith<LectureScheduleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LectureScheduleStateCopyWith<$Res> {
  factory $LectureScheduleStateCopyWith(
    LectureScheduleState value,
    $Res Function(LectureScheduleState) then,
  ) = _$LectureScheduleStateCopyWithImpl<$Res, LectureScheduleState>;
  @useResult
  $Res call({
    Status status,
    List<Schedule> schedules,
    Department? department,
    String? errorMessage,
  });

  $StatusCopyWith<$Res> get status;
  $DepartmentCopyWith<$Res>? get department;
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? schedules = null,
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
            schedules:
                null == schedules
                    ? _value.schedules
                    : schedules // ignore: cast_nullable_to_non_nullable
                        as List<Schedule>,
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

  /// Create a copy of LectureScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of LectureScheduleState
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
abstract class _$$LectureScheduleStateImplCopyWith<$Res>
    implements $LectureScheduleStateCopyWith<$Res> {
  factory _$$LectureScheduleStateImplCopyWith(
    _$LectureScheduleStateImpl value,
    $Res Function(_$LectureScheduleStateImpl) then,
  ) = __$$LectureScheduleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status status,
    List<Schedule> schedules,
    Department? department,
    String? errorMessage,
  });

  @override
  $StatusCopyWith<$Res> get status;
  @override
  $DepartmentCopyWith<$Res>? get department;
}

/// @nodoc
class __$$LectureScheduleStateImplCopyWithImpl<$Res>
    extends _$LectureScheduleStateCopyWithImpl<$Res, _$LectureScheduleStateImpl>
    implements _$$LectureScheduleStateImplCopyWith<$Res> {
  __$$LectureScheduleStateImplCopyWithImpl(
    _$LectureScheduleStateImpl _value,
    $Res Function(_$LectureScheduleStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LectureScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? schedules = null,
    Object? department = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$LectureScheduleStateImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as Status,
        schedules:
            null == schedules
                ? _value._schedules
                : schedules // ignore: cast_nullable_to_non_nullable
                    as List<Schedule>,
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

class _$LectureScheduleStateImpl implements _LectureScheduleState {
  const _$LectureScheduleStateImpl({
    this.status = const Status.initial(),
    final List<Schedule> schedules = const [],
    this.department,
    this.errorMessage,
  }) : _schedules = schedules;

  @override
  @JsonKey()
  final Status status;
  // Add status field
  final List<Schedule> _schedules;
  // Add status field
  @override
  @JsonKey()
  List<Schedule> get schedules {
    if (_schedules is EqualUnmodifiableListView) return _schedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedules);
  }

  // Rename to schedules
  @override
  final Department? department;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'LectureScheduleState(status: $status, schedules: $schedules, department: $department, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LectureScheduleStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(
              other._schedules,
              _schedules,
            ) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_schedules),
    department,
    errorMessage,
  );

  /// Create a copy of LectureScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LectureScheduleStateImplCopyWith<_$LectureScheduleStateImpl>
  get copyWith =>
      __$$LectureScheduleStateImplCopyWithImpl<_$LectureScheduleStateImpl>(
        this,
        _$identity,
      );
}

abstract class _LectureScheduleState implements LectureScheduleState {
  const factory _LectureScheduleState({
    final Status status,
    final List<Schedule> schedules,
    final Department? department,
    final String? errorMessage,
  }) = _$LectureScheduleStateImpl;

  @override
  Status get status; // Add status field
  @override
  List<Schedule> get schedules; // Rename to schedules
  @override
  Department? get department;
  @override
  String? get errorMessage;

  /// Create a copy of LectureScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LectureScheduleStateImplCopyWith<_$LectureScheduleStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
