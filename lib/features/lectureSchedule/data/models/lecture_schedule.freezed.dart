// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecture_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LectureSchedule _$LectureScheduleFromJson(Map<String, dynamic> json) {
  return _LectureSchedule.fromJson(json);
}

/// @nodoc
mixin _$LectureSchedule {
  @JsonKey(name: 'id')
  dynamic get id => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'termStart')
  Timestamp get termStart => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'termEnd')
  Timestamp get termEnd => throw _privateConstructorUsedError;
  @JsonKey(name: 'lectures')
  List<Lecture> get lectures => throw _privateConstructorUsedError;

  /// Serializes this LectureSchedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LectureSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LectureScheduleCopyWith<LectureSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LectureScheduleCopyWith<$Res> {
  factory $LectureScheduleCopyWith(
    LectureSchedule value,
    $Res Function(LectureSchedule) then,
  ) = _$LectureScheduleCopyWithImpl<$Res, LectureSchedule>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') dynamic id,
    @TimestampConverter() @JsonKey(name: 'termStart') Timestamp termStart,
    @TimestampConverter() @JsonKey(name: 'termEnd') Timestamp termEnd,
    @JsonKey(name: 'lectures') List<Lecture> lectures,
  });
}

/// @nodoc
class _$LectureScheduleCopyWithImpl<$Res, $Val extends LectureSchedule>
    implements $LectureScheduleCopyWith<$Res> {
  _$LectureScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LectureSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? termStart = null,
    Object? termEnd = null,
    Object? lectures = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as dynamic,
            termStart:
                null == termStart
                    ? _value.termStart
                    : termStart // ignore: cast_nullable_to_non_nullable
                        as Timestamp,
            termEnd:
                null == termEnd
                    ? _value.termEnd
                    : termEnd // ignore: cast_nullable_to_non_nullable
                        as Timestamp,
            lectures:
                null == lectures
                    ? _value.lectures
                    : lectures // ignore: cast_nullable_to_non_nullable
                        as List<Lecture>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LectureScheduleImplCopyWith<$Res>
    implements $LectureScheduleCopyWith<$Res> {
  factory _$$LectureScheduleImplCopyWith(
    _$LectureScheduleImpl value,
    $Res Function(_$LectureScheduleImpl) then,
  ) = __$$LectureScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') dynamic id,
    @TimestampConverter() @JsonKey(name: 'termStart') Timestamp termStart,
    @TimestampConverter() @JsonKey(name: 'termEnd') Timestamp termEnd,
    @JsonKey(name: 'lectures') List<Lecture> lectures,
  });
}

/// @nodoc
class __$$LectureScheduleImplCopyWithImpl<$Res>
    extends _$LectureScheduleCopyWithImpl<$Res, _$LectureScheduleImpl>
    implements _$$LectureScheduleImplCopyWith<$Res> {
  __$$LectureScheduleImplCopyWithImpl(
    _$LectureScheduleImpl _value,
    $Res Function(_$LectureScheduleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LectureSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? termStart = null,
    Object? termEnd = null,
    Object? lectures = null,
  }) {
    return _then(
      _$LectureScheduleImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as dynamic,
        termStart:
            null == termStart
                ? _value.termStart
                : termStart // ignore: cast_nullable_to_non_nullable
                    as Timestamp,
        termEnd:
            null == termEnd
                ? _value.termEnd
                : termEnd // ignore: cast_nullable_to_non_nullable
                    as Timestamp,
        lectures:
            null == lectures
                ? _value._lectures
                : lectures // ignore: cast_nullable_to_non_nullable
                    as List<Lecture>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LectureScheduleImpl implements _LectureSchedule {
  const _$LectureScheduleImpl({
    @JsonKey(name: 'id') this.id,
    @TimestampConverter() @JsonKey(name: 'termStart') required this.termStart,
    @TimestampConverter() @JsonKey(name: 'termEnd') required this.termEnd,
    @JsonKey(name: 'lectures') final List<Lecture> lectures = const [],
  }) : _lectures = lectures;

  factory _$LectureScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$LectureScheduleImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final dynamic id;
  @override
  @TimestampConverter()
  @JsonKey(name: 'termStart')
  final Timestamp termStart;
  @override
  @TimestampConverter()
  @JsonKey(name: 'termEnd')
  final Timestamp termEnd;
  final List<Lecture> _lectures;
  @override
  @JsonKey(name: 'lectures')
  List<Lecture> get lectures {
    if (_lectures is EqualUnmodifiableListView) return _lectures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lectures);
  }

  @override
  String toString() {
    return 'LectureSchedule(id: $id, termStart: $termStart, termEnd: $termEnd, lectures: $lectures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LectureScheduleImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.termStart, termStart) ||
                other.termStart == termStart) &&
            (identical(other.termEnd, termEnd) || other.termEnd == termEnd) &&
            const DeepCollectionEquality().equals(other._lectures, _lectures));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(id),
    termStart,
    termEnd,
    const DeepCollectionEquality().hash(_lectures),
  );

  /// Create a copy of LectureSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LectureScheduleImplCopyWith<_$LectureScheduleImpl> get copyWith =>
      __$$LectureScheduleImplCopyWithImpl<_$LectureScheduleImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LectureScheduleImplToJson(this);
  }
}

abstract class _LectureSchedule implements LectureSchedule {
  const factory _LectureSchedule({
    @JsonKey(name: 'id') final dynamic id,
    @TimestampConverter()
    @JsonKey(name: 'termStart')
    required final Timestamp termStart,
    @TimestampConverter()
    @JsonKey(name: 'termEnd')
    required final Timestamp termEnd,
    @JsonKey(name: 'lectures') final List<Lecture> lectures,
  }) = _$LectureScheduleImpl;

  factory _LectureSchedule.fromJson(Map<String, dynamic> json) =
      _$LectureScheduleImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  dynamic get id;
  @override
  @TimestampConverter()
  @JsonKey(name: 'termStart')
  Timestamp get termStart;
  @override
  @TimestampConverter()
  @JsonKey(name: 'termEnd')
  Timestamp get termEnd;
  @override
  @JsonKey(name: 'lectures')
  List<Lecture> get lectures;

  /// Create a copy of LectureSchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LectureScheduleImplCopyWith<_$LectureScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
