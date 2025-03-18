// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecture_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Lecture _$LectureFromJson(Map<String, dynamic> json) {
  return _Lecture.fromJson(json);
}

/// @nodoc
mixin _$Lecture {
  @JsonKey(name: 'id')
  dynamic get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'subject')
  Subject get subject => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserModel get user => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'startTime')
  Timestamp get startTime => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'endTime')
  Timestamp get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'hall')
  String get hall => throw _privateConstructorUsedError;

  /// Serializes this Lecture to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Lecture
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LectureCopyWith<Lecture> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LectureCopyWith<$Res> {
  factory $LectureCopyWith(Lecture value, $Res Function(Lecture) then) =
      _$LectureCopyWithImpl<$Res, Lecture>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') dynamic id,
    @JsonKey(name: 'subject') Subject subject,
    @JsonKey(name: 'user') UserModel user,
    @TimestampConverter() @JsonKey(name: 'startTime') Timestamp startTime,
    @TimestampConverter() @JsonKey(name: 'endTime') Timestamp endTime,
    @JsonKey(name: 'hall') String hall,
  });

  $SubjectCopyWith<$Res> get subject;
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$LectureCopyWithImpl<$Res, $Val extends Lecture>
    implements $LectureCopyWith<$Res> {
  _$LectureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Lecture
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? subject = null,
    Object? user = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? hall = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as dynamic,
            subject:
                null == subject
                    ? _value.subject
                    : subject // ignore: cast_nullable_to_non_nullable
                        as Subject,
            user:
                null == user
                    ? _value.user
                    : user // ignore: cast_nullable_to_non_nullable
                        as UserModel,
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
            hall:
                null == hall
                    ? _value.hall
                    : hall // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }

  /// Create a copy of Lecture
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubjectCopyWith<$Res> get subject {
    return $SubjectCopyWith<$Res>(_value.subject, (value) {
      return _then(_value.copyWith(subject: value) as $Val);
    });
  }

  /// Create a copy of Lecture
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LectureImplCopyWith<$Res> implements $LectureCopyWith<$Res> {
  factory _$$LectureImplCopyWith(
    _$LectureImpl value,
    $Res Function(_$LectureImpl) then,
  ) = __$$LectureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') dynamic id,
    @JsonKey(name: 'subject') Subject subject,
    @JsonKey(name: 'user') UserModel user,
    @TimestampConverter() @JsonKey(name: 'startTime') Timestamp startTime,
    @TimestampConverter() @JsonKey(name: 'endTime') Timestamp endTime,
    @JsonKey(name: 'hall') String hall,
  });

  @override
  $SubjectCopyWith<$Res> get subject;
  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$LectureImplCopyWithImpl<$Res>
    extends _$LectureCopyWithImpl<$Res, _$LectureImpl>
    implements _$$LectureImplCopyWith<$Res> {
  __$$LectureImplCopyWithImpl(
    _$LectureImpl _value,
    $Res Function(_$LectureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Lecture
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? subject = null,
    Object? user = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? hall = null,
  }) {
    return _then(
      _$LectureImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as dynamic,
        subject:
            null == subject
                ? _value.subject
                : subject // ignore: cast_nullable_to_non_nullable
                    as Subject,
        user:
            null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as UserModel,
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
        hall:
            null == hall
                ? _value.hall
                : hall // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LectureImpl implements _Lecture {
  const _$LectureImpl({
    @JsonKey(name: 'id') this.id,
    @JsonKey(name: 'subject') required this.subject,
    @JsonKey(name: 'user') required this.user,
    @TimestampConverter() @JsonKey(name: 'startTime') required this.startTime,
    @TimestampConverter() @JsonKey(name: 'endTime') required this.endTime,
    @JsonKey(name: 'hall') required this.hall,
  });

  factory _$LectureImpl.fromJson(Map<String, dynamic> json) =>
      _$$LectureImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final dynamic id;
  @override
  @JsonKey(name: 'subject')
  final Subject subject;
  @override
  @JsonKey(name: 'user')
  final UserModel user;
  @override
  @TimestampConverter()
  @JsonKey(name: 'startTime')
  final Timestamp startTime;
  @override
  @TimestampConverter()
  @JsonKey(name: 'endTime')
  final Timestamp endTime;
  @override
  @JsonKey(name: 'hall')
  final String hall;

  @override
  String toString() {
    return 'Lecture(id: $id, subject: $subject, user: $user, startTime: $startTime, endTime: $endTime, hall: $hall)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LectureImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.hall, hall) || other.hall == hall));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(id),
    subject,
    user,
    startTime,
    endTime,
    hall,
  );

  /// Create a copy of Lecture
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LectureImplCopyWith<_$LectureImpl> get copyWith =>
      __$$LectureImplCopyWithImpl<_$LectureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LectureImplToJson(this);
  }
}

abstract class _Lecture implements Lecture {
  const factory _Lecture({
    @JsonKey(name: 'id') final dynamic id,
    @JsonKey(name: 'subject') required final Subject subject,
    @JsonKey(name: 'user') required final UserModel user,
    @TimestampConverter()
    @JsonKey(name: 'startTime')
    required final Timestamp startTime,
    @TimestampConverter()
    @JsonKey(name: 'endTime')
    required final Timestamp endTime,
    @JsonKey(name: 'hall') required final String hall,
  }) = _$LectureImpl;

  factory _Lecture.fromJson(Map<String, dynamic> json) = _$LectureImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  dynamic get id;
  @override
  @JsonKey(name: 'subject')
  Subject get subject;
  @override
  @JsonKey(name: 'user')
  UserModel get user;
  @override
  @TimestampConverter()
  @JsonKey(name: 'startTime')
  Timestamp get startTime;
  @override
  @TimestampConverter()
  @JsonKey(name: 'endTime')
  Timestamp get endTime;
  @override
  @JsonKey(name: 'hall')
  String get hall;

  /// Create a copy of Lecture
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LectureImplCopyWith<_$LectureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
