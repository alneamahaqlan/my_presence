// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'department_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DepartmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDepartments,
    required TResult Function(
      String facultyId,
      DepartmentCreateBody departmentCreateBody,
    )
    addDepartment,
    required TResult Function(Department department) updateDepartment,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDepartments,
    TResult? Function(
      String facultyId,
      DepartmentCreateBody departmentCreateBody,
    )?
    addDepartment,
    TResult? Function(Department department)? updateDepartment,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDepartments,
    TResult Function(
      String facultyId,
      DepartmentCreateBody departmentCreateBody,
    )?
    addDepartment,
    TResult Function(Department department)? updateDepartment,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchDepartments value) fetchDepartments,
    required TResult Function(AddDepartment value) addDepartment,
    required TResult Function(UpdateDepartment value) updateDepartment,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchDepartments value)? fetchDepartments,
    TResult? Function(AddDepartment value)? addDepartment,
    TResult? Function(UpdateDepartment value)? updateDepartment,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchDepartments value)? fetchDepartments,
    TResult Function(AddDepartment value)? addDepartment,
    TResult Function(UpdateDepartment value)? updateDepartment,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentEventCopyWith<$Res> {
  factory $DepartmentEventCopyWith(
    DepartmentEvent value,
    $Res Function(DepartmentEvent) then,
  ) = _$DepartmentEventCopyWithImpl<$Res, DepartmentEvent>;
}

/// @nodoc
class _$DepartmentEventCopyWithImpl<$Res, $Val extends DepartmentEvent>
    implements $DepartmentEventCopyWith<$Res> {
  _$DepartmentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchDepartmentsImplCopyWith<$Res> {
  factory _$$FetchDepartmentsImplCopyWith(
    _$FetchDepartmentsImpl value,
    $Res Function(_$FetchDepartmentsImpl) then,
  ) = __$$FetchDepartmentsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchDepartmentsImplCopyWithImpl<$Res>
    extends _$DepartmentEventCopyWithImpl<$Res, _$FetchDepartmentsImpl>
    implements _$$FetchDepartmentsImplCopyWith<$Res> {
  __$$FetchDepartmentsImplCopyWithImpl(
    _$FetchDepartmentsImpl _value,
    $Res Function(_$FetchDepartmentsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchDepartmentsImpl implements FetchDepartments {
  const _$FetchDepartmentsImpl();

  @override
  String toString() {
    return 'DepartmentEvent.fetchDepartments()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchDepartmentsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDepartments,
    required TResult Function(
      String facultyId,
      DepartmentCreateBody departmentCreateBody,
    )
    addDepartment,
    required TResult Function(Department department) updateDepartment,
  }) {
    return fetchDepartments();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDepartments,
    TResult? Function(
      String facultyId,
      DepartmentCreateBody departmentCreateBody,
    )?
    addDepartment,
    TResult? Function(Department department)? updateDepartment,
  }) {
    return fetchDepartments?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDepartments,
    TResult Function(
      String facultyId,
      DepartmentCreateBody departmentCreateBody,
    )?
    addDepartment,
    TResult Function(Department department)? updateDepartment,
    required TResult orElse(),
  }) {
    if (fetchDepartments != null) {
      return fetchDepartments();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchDepartments value) fetchDepartments,
    required TResult Function(AddDepartment value) addDepartment,
    required TResult Function(UpdateDepartment value) updateDepartment,
  }) {
    return fetchDepartments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchDepartments value)? fetchDepartments,
    TResult? Function(AddDepartment value)? addDepartment,
    TResult? Function(UpdateDepartment value)? updateDepartment,
  }) {
    return fetchDepartments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchDepartments value)? fetchDepartments,
    TResult Function(AddDepartment value)? addDepartment,
    TResult Function(UpdateDepartment value)? updateDepartment,
    required TResult orElse(),
  }) {
    if (fetchDepartments != null) {
      return fetchDepartments(this);
    }
    return orElse();
  }
}

abstract class FetchDepartments implements DepartmentEvent {
  const factory FetchDepartments() = _$FetchDepartmentsImpl;
}

/// @nodoc
abstract class _$$AddDepartmentImplCopyWith<$Res> {
  factory _$$AddDepartmentImplCopyWith(
    _$AddDepartmentImpl value,
    $Res Function(_$AddDepartmentImpl) then,
  ) = __$$AddDepartmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String facultyId, DepartmentCreateBody departmentCreateBody});
}

/// @nodoc
class __$$AddDepartmentImplCopyWithImpl<$Res>
    extends _$DepartmentEventCopyWithImpl<$Res, _$AddDepartmentImpl>
    implements _$$AddDepartmentImplCopyWith<$Res> {
  __$$AddDepartmentImplCopyWithImpl(
    _$AddDepartmentImpl _value,
    $Res Function(_$AddDepartmentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? facultyId = null, Object? departmentCreateBody = null}) {
    return _then(
      _$AddDepartmentImpl(
        facultyId:
            null == facultyId
                ? _value.facultyId
                : facultyId // ignore: cast_nullable_to_non_nullable
                    as String,
        departmentCreateBody:
            null == departmentCreateBody
                ? _value.departmentCreateBody
                : departmentCreateBody // ignore: cast_nullable_to_non_nullable
                    as DepartmentCreateBody,
      ),
    );
  }
}

/// @nodoc

class _$AddDepartmentImpl implements AddDepartment {
  const _$AddDepartmentImpl({
    required this.facultyId,
    required this.departmentCreateBody,
  });

  @override
  final String facultyId;
  @override
  final DepartmentCreateBody departmentCreateBody;

  @override
  String toString() {
    return 'DepartmentEvent.addDepartment(facultyId: $facultyId, departmentCreateBody: $departmentCreateBody)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDepartmentImpl &&
            (identical(other.facultyId, facultyId) ||
                other.facultyId == facultyId) &&
            (identical(other.departmentCreateBody, departmentCreateBody) ||
                other.departmentCreateBody == departmentCreateBody));
  }

  @override
  int get hashCode => Object.hash(runtimeType, facultyId, departmentCreateBody);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDepartmentImplCopyWith<_$AddDepartmentImpl> get copyWith =>
      __$$AddDepartmentImplCopyWithImpl<_$AddDepartmentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDepartments,
    required TResult Function(
      String facultyId,
      DepartmentCreateBody departmentCreateBody,
    )
    addDepartment,
    required TResult Function(Department department) updateDepartment,
  }) {
    return addDepartment(facultyId, departmentCreateBody);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDepartments,
    TResult? Function(
      String facultyId,
      DepartmentCreateBody departmentCreateBody,
    )?
    addDepartment,
    TResult? Function(Department department)? updateDepartment,
  }) {
    return addDepartment?.call(facultyId, departmentCreateBody);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDepartments,
    TResult Function(
      String facultyId,
      DepartmentCreateBody departmentCreateBody,
    )?
    addDepartment,
    TResult Function(Department department)? updateDepartment,
    required TResult orElse(),
  }) {
    if (addDepartment != null) {
      return addDepartment(facultyId, departmentCreateBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchDepartments value) fetchDepartments,
    required TResult Function(AddDepartment value) addDepartment,
    required TResult Function(UpdateDepartment value) updateDepartment,
  }) {
    return addDepartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchDepartments value)? fetchDepartments,
    TResult? Function(AddDepartment value)? addDepartment,
    TResult? Function(UpdateDepartment value)? updateDepartment,
  }) {
    return addDepartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchDepartments value)? fetchDepartments,
    TResult Function(AddDepartment value)? addDepartment,
    TResult Function(UpdateDepartment value)? updateDepartment,
    required TResult orElse(),
  }) {
    if (addDepartment != null) {
      return addDepartment(this);
    }
    return orElse();
  }
}

abstract class AddDepartment implements DepartmentEvent {
  const factory AddDepartment({
    required final String facultyId,
    required final DepartmentCreateBody departmentCreateBody,
  }) = _$AddDepartmentImpl;

  String get facultyId;
  DepartmentCreateBody get departmentCreateBody;

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddDepartmentImplCopyWith<_$AddDepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDepartmentImplCopyWith<$Res> {
  factory _$$UpdateDepartmentImplCopyWith(
    _$UpdateDepartmentImpl value,
    $Res Function(_$UpdateDepartmentImpl) then,
  ) = __$$UpdateDepartmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Department department});

  $DepartmentCopyWith<$Res> get department;
}

/// @nodoc
class __$$UpdateDepartmentImplCopyWithImpl<$Res>
    extends _$DepartmentEventCopyWithImpl<$Res, _$UpdateDepartmentImpl>
    implements _$$UpdateDepartmentImplCopyWith<$Res> {
  __$$UpdateDepartmentImplCopyWithImpl(
    _$UpdateDepartmentImpl _value,
    $Res Function(_$UpdateDepartmentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? department = null}) {
    return _then(
      _$UpdateDepartmentImpl(
        null == department
            ? _value.department
            : department // ignore: cast_nullable_to_non_nullable
                as Department,
      ),
    );
  }

  /// Create a copy of DepartmentEvent
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

class _$UpdateDepartmentImpl implements UpdateDepartment {
  const _$UpdateDepartmentImpl(this.department);

  @override
  final Department department;

  @override
  String toString() {
    return 'DepartmentEvent.updateDepartment(department: $department)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDepartmentImpl &&
            (identical(other.department, department) ||
                other.department == department));
  }

  @override
  int get hashCode => Object.hash(runtimeType, department);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDepartmentImplCopyWith<_$UpdateDepartmentImpl> get copyWith =>
      __$$UpdateDepartmentImplCopyWithImpl<_$UpdateDepartmentImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDepartments,
    required TResult Function(
      String facultyId,
      DepartmentCreateBody departmentCreateBody,
    )
    addDepartment,
    required TResult Function(Department department) updateDepartment,
  }) {
    return updateDepartment(department);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDepartments,
    TResult? Function(
      String facultyId,
      DepartmentCreateBody departmentCreateBody,
    )?
    addDepartment,
    TResult? Function(Department department)? updateDepartment,
  }) {
    return updateDepartment?.call(department);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDepartments,
    TResult Function(
      String facultyId,
      DepartmentCreateBody departmentCreateBody,
    )?
    addDepartment,
    TResult Function(Department department)? updateDepartment,
    required TResult orElse(),
  }) {
    if (updateDepartment != null) {
      return updateDepartment(department);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchDepartments value) fetchDepartments,
    required TResult Function(AddDepartment value) addDepartment,
    required TResult Function(UpdateDepartment value) updateDepartment,
  }) {
    return updateDepartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchDepartments value)? fetchDepartments,
    TResult? Function(AddDepartment value)? addDepartment,
    TResult? Function(UpdateDepartment value)? updateDepartment,
  }) {
    return updateDepartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchDepartments value)? fetchDepartments,
    TResult Function(AddDepartment value)? addDepartment,
    TResult Function(UpdateDepartment value)? updateDepartment,
    required TResult orElse(),
  }) {
    if (updateDepartment != null) {
      return updateDepartment(this);
    }
    return orElse();
  }
}

abstract class UpdateDepartment implements DepartmentEvent {
  const factory UpdateDepartment(final Department department) =
      _$UpdateDepartmentImpl;

  Department get department;

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDepartmentImplCopyWith<_$UpdateDepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DepartmentState {
  Status get status => throw _privateConstructorUsedError;
  Status get createStatus => throw _privateConstructorUsedError;
  List<Department> get departments => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DepartmentStateCopyWith<DepartmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentStateCopyWith<$Res> {
  factory $DepartmentStateCopyWith(
    DepartmentState value,
    $Res Function(DepartmentState) then,
  ) = _$DepartmentStateCopyWithImpl<$Res, DepartmentState>;
  @useResult
  $Res call({
    Status status,
    Status createStatus,
    List<Department> departments,
    String? message,
  });

  $StatusCopyWith<$Res> get status;
  $StatusCopyWith<$Res> get createStatus;
}

/// @nodoc
class _$DepartmentStateCopyWithImpl<$Res, $Val extends DepartmentState>
    implements $DepartmentStateCopyWith<$Res> {
  _$DepartmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? createStatus = null,
    Object? departments = null,
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
            departments:
                null == departments
                    ? _value.departments
                    : departments // ignore: cast_nullable_to_non_nullable
                        as List<Department>,
            message:
                freezed == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of DepartmentState
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
abstract class _$$DepartmentStateImplCopyWith<$Res>
    implements $DepartmentStateCopyWith<$Res> {
  factory _$$DepartmentStateImplCopyWith(
    _$DepartmentStateImpl value,
    $Res Function(_$DepartmentStateImpl) then,
  ) = __$$DepartmentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status status,
    Status createStatus,
    List<Department> departments,
    String? message,
  });

  @override
  $StatusCopyWith<$Res> get status;
  @override
  $StatusCopyWith<$Res> get createStatus;
}

/// @nodoc
class __$$DepartmentStateImplCopyWithImpl<$Res>
    extends _$DepartmentStateCopyWithImpl<$Res, _$DepartmentStateImpl>
    implements _$$DepartmentStateImplCopyWith<$Res> {
  __$$DepartmentStateImplCopyWithImpl(
    _$DepartmentStateImpl _value,
    $Res Function(_$DepartmentStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? createStatus = null,
    Object? departments = null,
    Object? message = freezed,
  }) {
    return _then(
      _$DepartmentStateImpl(
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
        departments:
            null == departments
                ? _value._departments
                : departments // ignore: cast_nullable_to_non_nullable
                    as List<Department>,
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

class _$DepartmentStateImpl implements _DepartmentState {
  const _$DepartmentStateImpl({
    this.status = const Status.initial(),
    this.createStatus = const Status.initial(),
    final List<Department> departments = const [],
    this.message,
  }) : _departments = departments;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Status createStatus;
  final List<Department> _departments;
  @override
  @JsonKey()
  List<Department> get departments {
    if (_departments is EqualUnmodifiableListView) return _departments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_departments);
  }

  @override
  final String? message;

  @override
  String toString() {
    return 'DepartmentState(status: $status, createStatus: $createStatus, departments: $departments, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createStatus, createStatus) ||
                other.createStatus == createStatus) &&
            const DeepCollectionEquality().equals(
              other._departments,
              _departments,
            ) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    createStatus,
    const DeepCollectionEquality().hash(_departments),
    message,
  );

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentStateImplCopyWith<_$DepartmentStateImpl> get copyWith =>
      __$$DepartmentStateImplCopyWithImpl<_$DepartmentStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DepartmentState implements DepartmentState {
  const factory _DepartmentState({
    final Status status,
    final Status createStatus,
    final List<Department> departments,
    final String? message,
  }) = _$DepartmentStateImpl;

  @override
  Status get status;
  @override
  Status get createStatus;
  @override
  List<Department> get departments;
  @override
  String? get message;

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartmentStateImplCopyWith<_$DepartmentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
