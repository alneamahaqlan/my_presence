// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'department_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Department _$DepartmentFromJson(Map<String, dynamic> json) {
  return _Department.fromJson(json);
}

/// @nodoc
mixin _$Department {
  @JsonKey(name: 'id')
  dynamic get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  List<LectureSchedule> get lecturesSchedule =>
      throw _privateConstructorUsedError;

  /// Serializes this Department to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Department
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DepartmentCopyWith<Department> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentCopyWith<$Res> {
  factory $DepartmentCopyWith(
    Department value,
    $Res Function(Department) then,
  ) = _$DepartmentCopyWithImpl<$Res, Department>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') dynamic id,
    @JsonKey(name: 'name') String name,
    @JsonKey(includeIfNull: false) List<LectureSchedule> lecturesSchedule,
  });
}

/// @nodoc
class _$DepartmentCopyWithImpl<$Res, $Val extends Department>
    implements $DepartmentCopyWith<$Res> {
  _$DepartmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Department
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? lecturesSchedule = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as dynamic,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            lecturesSchedule:
                null == lecturesSchedule
                    ? _value.lecturesSchedule
                    : lecturesSchedule // ignore: cast_nullable_to_non_nullable
                        as List<LectureSchedule>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DepartmentImplCopyWith<$Res>
    implements $DepartmentCopyWith<$Res> {
  factory _$$DepartmentImplCopyWith(
    _$DepartmentImpl value,
    $Res Function(_$DepartmentImpl) then,
  ) = __$$DepartmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') dynamic id,
    @JsonKey(name: 'name') String name,
    @JsonKey(includeIfNull: false) List<LectureSchedule> lecturesSchedule,
  });
}

/// @nodoc
class __$$DepartmentImplCopyWithImpl<$Res>
    extends _$DepartmentCopyWithImpl<$Res, _$DepartmentImpl>
    implements _$$DepartmentImplCopyWith<$Res> {
  __$$DepartmentImplCopyWithImpl(
    _$DepartmentImpl _value,
    $Res Function(_$DepartmentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Department
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? lecturesSchedule = null,
  }) {
    return _then(
      _$DepartmentImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as dynamic,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        lecturesSchedule:
            null == lecturesSchedule
                ? _value._lecturesSchedule
                : lecturesSchedule // ignore: cast_nullable_to_non_nullable
                    as List<LectureSchedule>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DepartmentImpl implements _Department {
  const _$DepartmentImpl({
    @JsonKey(name: 'id') this.id,
    @JsonKey(name: 'name') required this.name,
    @JsonKey(includeIfNull: false)
    final List<LectureSchedule> lecturesSchedule = const [],
  }) : _lecturesSchedule = lecturesSchedule;

  factory _$DepartmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepartmentImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final dynamic id;
  @override
  @JsonKey(name: 'name')
  final String name;
  final List<LectureSchedule> _lecturesSchedule;
  @override
  @JsonKey(includeIfNull: false)
  List<LectureSchedule> get lecturesSchedule {
    if (_lecturesSchedule is EqualUnmodifiableListView)
      return _lecturesSchedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lecturesSchedule);
  }

  @override
  String toString() {
    return 'Department(id: $id, name: $name, lecturesSchedule: $lecturesSchedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(
              other._lecturesSchedule,
              _lecturesSchedule,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(id),
    name,
    const DeepCollectionEquality().hash(_lecturesSchedule),
  );

  /// Create a copy of Department
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentImplCopyWith<_$DepartmentImpl> get copyWith =>
      __$$DepartmentImplCopyWithImpl<_$DepartmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DepartmentImplToJson(this);
  }
}

abstract class _Department implements Department {
  const factory _Department({
    @JsonKey(name: 'id') final dynamic id,
    @JsonKey(name: 'name') required final String name,
    @JsonKey(includeIfNull: false) final List<LectureSchedule> lecturesSchedule,
  }) = _$DepartmentImpl;

  factory _Department.fromJson(Map<String, dynamic> json) =
      _$DepartmentImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  dynamic get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(includeIfNull: false)
  List<LectureSchedule> get lecturesSchedule;

  /// Create a copy of Department
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartmentImplCopyWith<_$DepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
