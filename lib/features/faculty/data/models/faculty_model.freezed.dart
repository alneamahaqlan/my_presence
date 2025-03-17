// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faculty_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Faculty _$FacultyFromJson(Map<String, dynamic> json) {
  return _Faculty.fromJson(json);
}

/// @nodoc
mixin _$Faculty {
  @JsonKey(name: 'id')
  dynamic get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  List<Department> get departments => throw _privateConstructorUsedError;

  /// Serializes this Faculty to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Faculty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FacultyCopyWith<Faculty> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacultyCopyWith<$Res> {
  factory $FacultyCopyWith(Faculty value, $Res Function(Faculty) then) =
      _$FacultyCopyWithImpl<$Res, Faculty>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') dynamic id,
    @JsonKey(name: 'name') String name,
    List<Department> departments,
  });
}

/// @nodoc
class _$FacultyCopyWithImpl<$Res, $Val extends Faculty>
    implements $FacultyCopyWith<$Res> {
  _$FacultyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Faculty
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? departments = null,
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
            departments:
                null == departments
                    ? _value.departments
                    : departments // ignore: cast_nullable_to_non_nullable
                        as List<Department>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FacultyImplCopyWith<$Res> implements $FacultyCopyWith<$Res> {
  factory _$$FacultyImplCopyWith(
    _$FacultyImpl value,
    $Res Function(_$FacultyImpl) then,
  ) = __$$FacultyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') dynamic id,
    @JsonKey(name: 'name') String name,
    List<Department> departments,
  });
}

/// @nodoc
class __$$FacultyImplCopyWithImpl<$Res>
    extends _$FacultyCopyWithImpl<$Res, _$FacultyImpl>
    implements _$$FacultyImplCopyWith<$Res> {
  __$$FacultyImplCopyWithImpl(
    _$FacultyImpl _value,
    $Res Function(_$FacultyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Faculty
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? departments = null,
  }) {
    return _then(
      _$FacultyImpl(
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
        departments:
            null == departments
                ? _value._departments
                : departments // ignore: cast_nullable_to_non_nullable
                    as List<Department>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FacultyImpl implements _Faculty {
  const _$FacultyImpl({
    @JsonKey(name: 'id') this.id,
    @JsonKey(name: 'name') required this.name,
    final List<Department> departments = const [],
  }) : _departments = departments;

  factory _$FacultyImpl.fromJson(Map<String, dynamic> json) =>
      _$$FacultyImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final dynamic id;
  @override
  @JsonKey(name: 'name')
  final String name;
  final List<Department> _departments;
  @override
  @JsonKey()
  List<Department> get departments {
    if (_departments is EqualUnmodifiableListView) return _departments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_departments);
  }

  @override
  String toString() {
    return 'Faculty(id: $id, name: $name, departments: $departments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacultyImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(
              other._departments,
              _departments,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(id),
    name,
    const DeepCollectionEquality().hash(_departments),
  );

  /// Create a copy of Faculty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FacultyImplCopyWith<_$FacultyImpl> get copyWith =>
      __$$FacultyImplCopyWithImpl<_$FacultyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FacultyImplToJson(this);
  }
}

abstract class _Faculty implements Faculty {
  const factory _Faculty({
    @JsonKey(name: 'id') final dynamic id,
    @JsonKey(name: 'name') required final String name,
    final List<Department> departments,
  }) = _$FacultyImpl;

  factory _Faculty.fromJson(Map<String, dynamic> json) = _$FacultyImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  dynamic get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  List<Department> get departments;

  /// Create a copy of Faculty
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FacultyImplCopyWith<_$FacultyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
