// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Schedule _$ScheduleFromJson(Map<String, dynamic> json) {
  return _Schedule.fromJson(json);
}

/// @nodoc
mixin _$Schedule {
  @JsonKey(name: 'id')
  dynamic get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'department')
  Department get department => throw _privateConstructorUsedError;
  @JsonKey(name: 'level')
  int get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'division')
  String get division => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'termStart')
  Timestamp get termStart => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'termEnd')
  Timestamp get termEnd => throw _privateConstructorUsedError;
  @JsonKey(name: 'lectures')
  List<Lecture> get lectures => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'createdAt')
  Timestamp? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  Timestamp? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Schedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleCopyWith<Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCopyWith<$Res> {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) then) =
      _$ScheduleCopyWithImpl<$Res, Schedule>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') dynamic id,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'department') Department department,
    @JsonKey(name: 'level') int level,
    @JsonKey(name: 'division') String division,
    @TimestampConverter() @JsonKey(name: 'termStart') Timestamp termStart,
    @TimestampConverter() @JsonKey(name: 'termEnd') Timestamp termEnd,
    @JsonKey(name: 'lectures') List<Lecture> lectures,
    @TimestampConverter() @JsonKey(name: 'createdAt') Timestamp? createdAt,
    @TimestampConverter() @JsonKey(name: 'updatedAt') Timestamp? updatedAt,
  });

  $DepartmentCopyWith<$Res> get department;
}

/// @nodoc
class _$ScheduleCopyWithImpl<$Res, $Val extends Schedule>
    implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? department = null,
    Object? level = null,
    Object? division = null,
    Object? termStart = null,
    Object? termEnd = null,
    Object? lectures = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as dynamic,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            department:
                null == department
                    ? _value.department
                    : department // ignore: cast_nullable_to_non_nullable
                        as Department,
            level:
                null == level
                    ? _value.level
                    : level // ignore: cast_nullable_to_non_nullable
                        as int,
            division:
                null == division
                    ? _value.division
                    : division // ignore: cast_nullable_to_non_nullable
                        as String,
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
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as Timestamp?,
            updatedAt:
                freezed == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as Timestamp?,
          )
          as $Val,
    );
  }

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepartmentCopyWith<$Res> get department {
    return $DepartmentCopyWith<$Res>(_value.department, (value) {
      return _then(_value.copyWith(department: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScheduleImplCopyWith<$Res>
    implements $ScheduleCopyWith<$Res> {
  factory _$$ScheduleImplCopyWith(
    _$ScheduleImpl value,
    $Res Function(_$ScheduleImpl) then,
  ) = __$$ScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') dynamic id,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'department') Department department,
    @JsonKey(name: 'level') int level,
    @JsonKey(name: 'division') String division,
    @TimestampConverter() @JsonKey(name: 'termStart') Timestamp termStart,
    @TimestampConverter() @JsonKey(name: 'termEnd') Timestamp termEnd,
    @JsonKey(name: 'lectures') List<Lecture> lectures,
    @TimestampConverter() @JsonKey(name: 'createdAt') Timestamp? createdAt,
    @TimestampConverter() @JsonKey(name: 'updatedAt') Timestamp? updatedAt,
  });

  @override
  $DepartmentCopyWith<$Res> get department;
}

/// @nodoc
class __$$ScheduleImplCopyWithImpl<$Res>
    extends _$ScheduleCopyWithImpl<$Res, _$ScheduleImpl>
    implements _$$ScheduleImplCopyWith<$Res> {
  __$$ScheduleImplCopyWithImpl(
    _$ScheduleImpl _value,
    $Res Function(_$ScheduleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? department = null,
    Object? level = null,
    Object? division = null,
    Object? termStart = null,
    Object? termEnd = null,
    Object? lectures = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$ScheduleImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as dynamic,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        department:
            null == department
                ? _value.department
                : department // ignore: cast_nullable_to_non_nullable
                    as Department,
        level:
            null == level
                ? _value.level
                : level // ignore: cast_nullable_to_non_nullable
                    as int,
        division:
            null == division
                ? _value.division
                : division // ignore: cast_nullable_to_non_nullable
                    as String,
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
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as Timestamp?,
        updatedAt:
            freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as Timestamp?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleImpl implements _Schedule {
  const _$ScheduleImpl({
    @JsonKey(name: 'id') this.id,
    @JsonKey(name: 'title') required this.title,
    @JsonKey(name: 'department') required this.department,
    @JsonKey(name: 'level') required this.level,
    @JsonKey(name: 'division') required this.division,
    @TimestampConverter() @JsonKey(name: 'termStart') required this.termStart,
    @TimestampConverter() @JsonKey(name: 'termEnd') required this.termEnd,
    @JsonKey(name: 'lectures') final List<Lecture> lectures = const [],
    @TimestampConverter() @JsonKey(name: 'createdAt') this.createdAt,
    @TimestampConverter() @JsonKey(name: 'updatedAt') this.updatedAt,
  }) : _lectures = lectures;

  factory _$ScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final dynamic id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'department')
  final Department department;
  @override
  @JsonKey(name: 'level')
  final int level;
  @override
  @JsonKey(name: 'division')
  final String division;
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
  @TimestampConverter()
  @JsonKey(name: 'createdAt')
  final Timestamp? createdAt;
  @override
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  final Timestamp? updatedAt;

  @override
  String toString() {
    return 'Schedule(id: $id, title: $title, department: $department, level: $level, division: $division, termStart: $termStart, termEnd: $termEnd, lectures: $lectures, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.division, division) ||
                other.division == division) &&
            (identical(other.termStart, termStart) ||
                other.termStart == termStart) &&
            (identical(other.termEnd, termEnd) || other.termEnd == termEnd) &&
            const DeepCollectionEquality().equals(other._lectures, _lectures) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(id),
    title,
    department,
    level,
    division,
    termStart,
    termEnd,
    const DeepCollectionEquality().hash(_lectures),
    createdAt,
    updatedAt,
  );

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleImplCopyWith<_$ScheduleImpl> get copyWith =>
      __$$ScheduleImplCopyWithImpl<_$ScheduleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleImplToJson(this);
  }
}

abstract class _Schedule implements Schedule {
  const factory _Schedule({
    @JsonKey(name: 'id') final dynamic id,
    @JsonKey(name: 'title') required final String title,
    @JsonKey(name: 'department') required final Department department,
    @JsonKey(name: 'level') required final int level,
    @JsonKey(name: 'division') required final String division,
    @TimestampConverter()
    @JsonKey(name: 'termStart')
    required final Timestamp termStart,
    @TimestampConverter()
    @JsonKey(name: 'termEnd')
    required final Timestamp termEnd,
    @JsonKey(name: 'lectures') final List<Lecture> lectures,
    @TimestampConverter()
    @JsonKey(name: 'createdAt')
    final Timestamp? createdAt,
    @TimestampConverter()
    @JsonKey(name: 'updatedAt')
    final Timestamp? updatedAt,
  }) = _$ScheduleImpl;

  factory _Schedule.fromJson(Map<String, dynamic> json) =
      _$ScheduleImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  dynamic get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'department')
  Department get department;
  @override
  @JsonKey(name: 'level')
  int get level;
  @override
  @JsonKey(name: 'division')
  String get division;
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
  @override
  @TimestampConverter()
  @JsonKey(name: 'createdAt')
  Timestamp? get createdAt;
  @override
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  Timestamp? get updatedAt;

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleImplCopyWith<_$ScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
