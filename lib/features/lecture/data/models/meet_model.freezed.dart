// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Meet _$MeetFromJson(Map<String, dynamic> json) {
  return _Meet.fromJson(json);
}

/// @nodoc
mixin _$Meet {
  @JsonKey(name: 'id')
  dynamic get id => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'startTime')
  Timestamp get startTime => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'endTime')
  Timestamp get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'byUser')
  UserModel? get byUser => throw _privateConstructorUsedError;

  /// Serializes this Meet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Meet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeetCopyWith<Meet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetCopyWith<$Res> {
  factory $MeetCopyWith(Meet value, $Res Function(Meet) then) =
      _$MeetCopyWithImpl<$Res, Meet>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') dynamic id,
    @TimestampConverter() @JsonKey(name: 'startTime') Timestamp startTime,
    @TimestampConverter() @JsonKey(name: 'endTime') Timestamp endTime,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'byUser') UserModel? byUser,
  });

  $UserModelCopyWith<$Res>? get byUser;
}

/// @nodoc
class _$MeetCopyWithImpl<$Res, $Val extends Meet>
    implements $MeetCopyWith<$Res> {
  _$MeetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Meet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? startTime = null,
    Object? endTime = null,
    Object? status = freezed,
    Object? byUser = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as dynamic,
            startTime:
                null == startTime
                    ? _value.startTime
                    : startTime // ignore: cast_nullable_to_non_nullable
                        as Timestamp,
            endTime:
                null == endTime
                    ? _value.endTime
                    : endTime // ignore: cast_nullable_to_non_nullable
                        as Timestamp,
            status:
                freezed == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String?,
            byUser:
                freezed == byUser
                    ? _value.byUser
                    : byUser // ignore: cast_nullable_to_non_nullable
                        as UserModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of Meet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get byUser {
    if (_value.byUser == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.byUser!, (value) {
      return _then(_value.copyWith(byUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MeetImplCopyWith<$Res> implements $MeetCopyWith<$Res> {
  factory _$$MeetImplCopyWith(
    _$MeetImpl value,
    $Res Function(_$MeetImpl) then,
  ) = __$$MeetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') dynamic id,
    @TimestampConverter() @JsonKey(name: 'startTime') Timestamp startTime,
    @TimestampConverter() @JsonKey(name: 'endTime') Timestamp endTime,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'byUser') UserModel? byUser,
  });

  @override
  $UserModelCopyWith<$Res>? get byUser;
}

/// @nodoc
class __$$MeetImplCopyWithImpl<$Res>
    extends _$MeetCopyWithImpl<$Res, _$MeetImpl>
    implements _$$MeetImplCopyWith<$Res> {
  __$$MeetImplCopyWithImpl(_$MeetImpl _value, $Res Function(_$MeetImpl) _then)
    : super(_value, _then);

  /// Create a copy of Meet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? startTime = null,
    Object? endTime = null,
    Object? status = freezed,
    Object? byUser = freezed,
  }) {
    return _then(
      _$MeetImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as dynamic,
        startTime:
            null == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                    as Timestamp,
        endTime:
            null == endTime
                ? _value.endTime
                : endTime // ignore: cast_nullable_to_non_nullable
                    as Timestamp,
        status:
            freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String?,
        byUser:
            freezed == byUser
                ? _value.byUser
                : byUser // ignore: cast_nullable_to_non_nullable
                    as UserModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetImpl implements _Meet {
  const _$MeetImpl({
    @JsonKey(name: 'id') this.id,
    @TimestampConverter() @JsonKey(name: 'startTime') required this.startTime,
    @TimestampConverter() @JsonKey(name: 'endTime') required this.endTime,
    @JsonKey(name: 'status') this.status,
    @JsonKey(name: 'byUser') this.byUser,
  });

  factory _$MeetImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final dynamic id;
  @override
  @TimestampConverter()
  @JsonKey(name: 'startTime')
  final Timestamp startTime;
  @override
  @TimestampConverter()
  @JsonKey(name: 'endTime')
  final Timestamp endTime;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'byUser')
  final UserModel? byUser;

  @override
  String toString() {
    return 'Meet(id: $id, startTime: $startTime, endTime: $endTime, status: $status, byUser: $byUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.byUser, byUser) || other.byUser == byUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(id),
    startTime,
    endTime,
    status,
    byUser,
  );

  /// Create a copy of Meet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetImplCopyWith<_$MeetImpl> get copyWith =>
      __$$MeetImplCopyWithImpl<_$MeetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetImplToJson(this);
  }
}

abstract class _Meet implements Meet {
  const factory _Meet({
    @JsonKey(name: 'id') final dynamic id,
    @TimestampConverter()
    @JsonKey(name: 'startTime')
    required final Timestamp startTime,
    @TimestampConverter()
    @JsonKey(name: 'endTime')
    required final Timestamp endTime,
    @JsonKey(name: 'status') final String? status,
    @JsonKey(name: 'byUser') final UserModel? byUser,
  }) = _$MeetImpl;

  factory _Meet.fromJson(Map<String, dynamic> json) = _$MeetImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  dynamic get id;
  @override
  @TimestampConverter()
  @JsonKey(name: 'startTime')
  Timestamp get startTime;
  @override
  @TimestampConverter()
  @JsonKey(name: 'endTime')
  Timestamp get endTime;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'byUser')
  UserModel? get byUser;

  /// Create a copy of Meet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetImplCopyWith<_$MeetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
