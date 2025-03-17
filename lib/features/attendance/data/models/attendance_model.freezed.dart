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

AttendanceModel _$AttendanceModelFromJson(Map<String, dynamic> json) {
  return _AttendanceModel.fromJson(json);
}

/// @nodoc
mixin _$AttendanceModel {
  @JsonKey(name: 'id')
  dynamic get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'byUser')
  UserModel get byUser => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'arrivalDate')
  Timestamp? get arrivalDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;

  /// Serializes this AttendanceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceModelCopyWith<AttendanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceModelCopyWith<$Res> {
  factory $AttendanceModelCopyWith(
    AttendanceModel value,
    $Res Function(AttendanceModel) then,
  ) = _$AttendanceModelCopyWithImpl<$Res, AttendanceModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') dynamic id,
    @JsonKey(name: 'byUser') UserModel byUser,
    @TimestampConverter() @JsonKey(name: 'arrivalDate') Timestamp? arrivalDate,
    @JsonKey(name: 'status') String status,
  });

  $UserModelCopyWith<$Res> get byUser;
}

/// @nodoc
class _$AttendanceModelCopyWithImpl<$Res, $Val extends AttendanceModel>
    implements $AttendanceModelCopyWith<$Res> {
  _$AttendanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? byUser = null,
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

  /// Create a copy of AttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get byUser {
    return $UserModelCopyWith<$Res>(_value.byUser, (value) {
      return _then(_value.copyWith(byUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttendanceModelImplCopyWith<$Res>
    implements $AttendanceModelCopyWith<$Res> {
  factory _$$AttendanceModelImplCopyWith(
    _$AttendanceModelImpl value,
    $Res Function(_$AttendanceModelImpl) then,
  ) = __$$AttendanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') dynamic id,
    @JsonKey(name: 'byUser') UserModel byUser,
    @TimestampConverter() @JsonKey(name: 'arrivalDate') Timestamp? arrivalDate,
    @JsonKey(name: 'status') String status,
  });

  @override
  $UserModelCopyWith<$Res> get byUser;
}

/// @nodoc
class __$$AttendanceModelImplCopyWithImpl<$Res>
    extends _$AttendanceModelCopyWithImpl<$Res, _$AttendanceModelImpl>
    implements _$$AttendanceModelImplCopyWith<$Res> {
  __$$AttendanceModelImplCopyWithImpl(
    _$AttendanceModelImpl _value,
    $Res Function(_$AttendanceModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? byUser = null,
    Object? arrivalDate = freezed,
    Object? status = null,
  }) {
    return _then(
      _$AttendanceModelImpl(
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
class _$AttendanceModelImpl implements _AttendanceModel {
  _$AttendanceModelImpl({
    @JsonKey(name: 'id') this.id,
    @JsonKey(name: 'byUser') required this.byUser,
    @TimestampConverter() @JsonKey(name: 'arrivalDate') this.arrivalDate,
    @JsonKey(name: 'status') required this.status,
  });

  factory _$AttendanceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final dynamic id;
  @override
  @JsonKey(name: 'byUser')
  final UserModel byUser;
  @override
  @TimestampConverter()
  @JsonKey(name: 'arrivalDate')
  final Timestamp? arrivalDate;
  @override
  @JsonKey(name: 'status')
  final String status;

  @override
  String toString() {
    return 'AttendanceModel(id: $id, byUser: $byUser, arrivalDate: $arrivalDate, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceModelImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.byUser, byUser) || other.byUser == byUser) &&
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
    arrivalDate,
    status,
  );

  /// Create a copy of AttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceModelImplCopyWith<_$AttendanceModelImpl> get copyWith =>
      __$$AttendanceModelImplCopyWithImpl<_$AttendanceModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceModelImplToJson(this);
  }
}

abstract class _AttendanceModel implements AttendanceModel {
  factory _AttendanceModel({
    @JsonKey(name: 'id') final dynamic id,
    @JsonKey(name: 'byUser') required final UserModel byUser,
    @TimestampConverter()
    @JsonKey(name: 'arrivalDate')
    final Timestamp? arrivalDate,
    @JsonKey(name: 'status') required final String status,
  }) = _$AttendanceModelImpl;

  factory _AttendanceModel.fromJson(Map<String, dynamic> json) =
      _$AttendanceModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  dynamic get id;
  @override
  @JsonKey(name: 'byUser')
  UserModel get byUser;
  @override
  @TimestampConverter()
  @JsonKey(name: 'arrivalDate')
  Timestamp? get arrivalDate;
  @override
  @JsonKey(name: 'status')
  String get status;

  /// Create a copy of AttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceModelImplCopyWith<_$AttendanceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
