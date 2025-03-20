// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'department_create_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DepartmentCreateBody _$DepartmentCreateBodyFromJson(Map<String, dynamic> json) {
  return _DepartmentCreateBody.fromJson(json);
}

/// @nodoc
mixin _$DepartmentCreateBody {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'facultyId')
  String get facultyId => throw _privateConstructorUsedError;

  /// Serializes this DepartmentCreateBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DepartmentCreateBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DepartmentCreateBodyCopyWith<DepartmentCreateBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentCreateBodyCopyWith<$Res> {
  factory $DepartmentCreateBodyCopyWith(
    DepartmentCreateBody value,
    $Res Function(DepartmentCreateBody) then,
  ) = _$DepartmentCreateBodyCopyWithImpl<$Res, DepartmentCreateBody>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'facultyId') String facultyId,
  });
}

/// @nodoc
class _$DepartmentCreateBodyCopyWithImpl<
  $Res,
  $Val extends DepartmentCreateBody
>
    implements $DepartmentCreateBodyCopyWith<$Res> {
  _$DepartmentCreateBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DepartmentCreateBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? facultyId = null}) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            facultyId:
                null == facultyId
                    ? _value.facultyId
                    : facultyId // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DepartmentCreateBodyImplCopyWith<$Res>
    implements $DepartmentCreateBodyCopyWith<$Res> {
  factory _$$DepartmentCreateBodyImplCopyWith(
    _$DepartmentCreateBodyImpl value,
    $Res Function(_$DepartmentCreateBodyImpl) then,
  ) = __$$DepartmentCreateBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'facultyId') String facultyId,
  });
}

/// @nodoc
class __$$DepartmentCreateBodyImplCopyWithImpl<$Res>
    extends _$DepartmentCreateBodyCopyWithImpl<$Res, _$DepartmentCreateBodyImpl>
    implements _$$DepartmentCreateBodyImplCopyWith<$Res> {
  __$$DepartmentCreateBodyImplCopyWithImpl(
    _$DepartmentCreateBodyImpl _value,
    $Res Function(_$DepartmentCreateBodyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DepartmentCreateBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? facultyId = null}) {
    return _then(
      _$DepartmentCreateBodyImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        facultyId:
            null == facultyId
                ? _value.facultyId
                : facultyId // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DepartmentCreateBodyImpl implements _DepartmentCreateBody {
  const _$DepartmentCreateBodyImpl({
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'facultyId') required this.facultyId,
  });

  factory _$DepartmentCreateBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepartmentCreateBodyImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'facultyId')
  final String facultyId;

  @override
  String toString() {
    return 'DepartmentCreateBody(name: $name, facultyId: $facultyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentCreateBodyImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.facultyId, facultyId) ||
                other.facultyId == facultyId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, facultyId);

  /// Create a copy of DepartmentCreateBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentCreateBodyImplCopyWith<_$DepartmentCreateBodyImpl>
  get copyWith =>
      __$$DepartmentCreateBodyImplCopyWithImpl<_$DepartmentCreateBodyImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DepartmentCreateBodyImplToJson(this);
  }
}

abstract class _DepartmentCreateBody implements DepartmentCreateBody {
  const factory _DepartmentCreateBody({
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'facultyId') required final String facultyId,
  }) = _$DepartmentCreateBodyImpl;

  factory _DepartmentCreateBody.fromJson(Map<String, dynamic> json) =
      _$DepartmentCreateBodyImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'facultyId')
  String get facultyId;

  /// Create a copy of DepartmentCreateBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartmentCreateBodyImplCopyWith<_$DepartmentCreateBodyImpl>
  get copyWith => throw _privateConstructorUsedError;
}
