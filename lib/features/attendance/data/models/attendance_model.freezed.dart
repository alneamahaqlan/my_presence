// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Attendance _$AttendanceFromJson(Map<String, dynamic> json) {
  return _Attendance.fromJson(json);
}

/// @nodoc
mixin _$Attendance {
  @JsonKey(name: 'id')
  dynamic get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'byUser')
  UserModel get byUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'lecture')
  Lecture get lecture => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'arrivalDate')
  Timestamp? get arrivalDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;

  /// Serializes this Attendance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Attendance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceCopyWith<Attendance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceCopyWith<$Res> {
  factory $AttendanceCopyWith(
    Attendance value,
    $Res Function(Attendance) then,
  ) = _$AttendanceCopyWithImpl<$Res, Attendance>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') dynamic id,
    @JsonKey(name: 'byUser') UserModel byUser,
    @JsonKey(name: 'lecture') Lecture lecture,
    @TimestampConverter() @JsonKey(name: 'arrivalDate') Timestamp? arrivalDate,
    @JsonKey(name: 'status') String status,
  });

  $UserModelCopyWith<$Res> get byUser;
  $LectureCopyWith<$Res> get lecture;
}

/// @nodoc
class _$AttendanceCopyWithImpl<$Res, $Val extends Attendance>
    implements $AttendanceCopyWith<$Res> {
  _$AttendanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Attendance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? byUser = null,
    Object? lecture = null,
    Object? arrivalDate = freezed,
    Object? status = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as dynamic,
            byUser:
                null == byUser
                    ? _value.byUser
                    : byUser // ignore: cast_nullable_to_non_nullable
                        as UserModel,
            lecture:
                null == lecture
                    ? _value.lecture
                    : lecture // ignore: cast_nullable_to_non_nullable
                        as Lecture,
            arrivalDate:
                freezed == arrivalDate
                    ? _value.arrivalDate
                    : arrivalDate // ignore: cast_nullable_to_non_nullable
                        as Timestamp?,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }

  /// Create a copy of Attendance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get byUser {
    return $UserModelCopyWith<$Res>(_value.byUser, (value) {
      return _then(_value.copyWith(byUser: value) as $Val);
    });
  }

  /// Create a copy of Attendance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LectureCopyWith<$Res> get lecture {
    return $LectureCopyWith<$Res>(_value.lecture, (value) {
      return _then(_value.copyWith(lecture: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttendanceImplCopyWith<$Res>
    implements $AttendanceCopyWith<$Res> {
  factory _$$AttendanceImplCopyWith(
    _$AttendanceImpl value,
    $Res Function(_$AttendanceImpl) then,
  ) = __$$AttendanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') dynamic id,
    @JsonKey(name: 'byUser') UserModel byUser,
    @JsonKey(name: 'lecture') Lecture lecture,
    @TimestampConverter() @JsonKey(name: 'arrivalDate') Timestamp? arrivalDate,
    @JsonKey(name: 'status') String status,
  });

  @override
  $UserModelCopyWith<$Res> get byUser;
  @override
  $LectureCopyWith<$Res> get lecture;
}

/// @nodoc
class __$$AttendanceImplCopyWithImpl<$Res>
    extends _$AttendanceCopyWithImpl<$Res, _$AttendanceImpl>
    implements _$$AttendanceImplCopyWith<$Res> {
  __$$AttendanceImplCopyWithImpl(
    _$AttendanceImpl _value,
    $Res Function(_$AttendanceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Attendance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? byUser = null,
    Object? lecture = null,
    Object? arrivalDate = freezed,
    Object? status = null,
  }) {
    return _then(
      _$AttendanceImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as dynamic,
        byUser:
            null == byUser
                ? _value.byUser
                : byUser // ignore: cast_nullable_to_non_nullable
                    as UserModel,
        lecture:
            null == lecture
                ? _value.lecture
                : lecture // ignore: cast_nullable_to_non_nullable
                    as Lecture,
        arrivalDate:
            freezed == arrivalDate
                ? _value.arrivalDate
                : arrivalDate // ignore: cast_nullable_to_non_nullable
                    as Timestamp?,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceImpl implements _Attendance {
  _$AttendanceImpl({
    @JsonKey(name: 'id') this.id,
    @JsonKey(name: 'byUser') required this.byUser,
    @JsonKey(name: 'lecture') required this.lecture,
    @TimestampConverter() @JsonKey(name: 'arrivalDate') this.arrivalDate,
    @JsonKey(name: 'status') required this.status,
  });

  factory _$AttendanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final dynamic id;
  @override
  @JsonKey(name: 'byUser')
  final UserModel byUser;
  @override
  @JsonKey(name: 'lecture')
  final Lecture lecture;
  @override
  @TimestampConverter()
  @JsonKey(name: 'arrivalDate')
  final Timestamp? arrivalDate;
  @override
  @JsonKey(name: 'status')
  final String status;

  @override
  String toString() {
    return 'Attendance(id: $id, byUser: $byUser, lecture: $lecture, arrivalDate: $arrivalDate, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.byUser, byUser) || other.byUser == byUser) &&
            (identical(other.lecture, lecture) || other.lecture == lecture) &&
            (identical(other.arrivalDate, arrivalDate) ||
                other.arrivalDate == arrivalDate) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(id),
    byUser,
    lecture,
    arrivalDate,
    status,
  );

  /// Create a copy of Attendance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceImplCopyWith<_$AttendanceImpl> get copyWith =>
      __$$AttendanceImplCopyWithImpl<_$AttendanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceImplToJson(this);
  }
}

abstract class _Attendance implements Attendance {
  factory _Attendance({
    @JsonKey(name: 'id') final dynamic id,
    @JsonKey(name: 'byUser') required final UserModel byUser,
    @JsonKey(name: 'lecture') required final Lecture lecture,
    @TimestampConverter()
    @JsonKey(name: 'arrivalDate')
    final Timestamp? arrivalDate,
    @JsonKey(name: 'status') required final String status,
  }) = _$AttendanceImpl;

  factory _Attendance.fromJson(Map<String, dynamic> json) =
      _$AttendanceImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  dynamic get id;
  @override
  @JsonKey(name: 'byUser')
  UserModel get byUser;
  @override
  @JsonKey(name: 'lecture')
  Lecture get lecture;
  @override
  @TimestampConverter()
  @JsonKey(name: 'arrivalDate')
  Timestamp? get arrivalDate;
  @override
  @JsonKey(name: 'status')
  String get status;

  /// Create a copy of Attendance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceImplCopyWith<_$AttendanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
