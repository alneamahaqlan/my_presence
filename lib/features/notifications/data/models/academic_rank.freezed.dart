// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../home/data/models/academic_rank.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AcademicRank _$AcademicRankFromJson(Map<String, dynamic> json) {
  return _AcademicRank.fromJson(json);
}

/// @nodoc
mixin _$AcademicRank {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this AcademicRank to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AcademicRank
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcademicRankCopyWith<AcademicRank> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcademicRankCopyWith<$Res> {
  factory $AcademicRankCopyWith(
    AcademicRank value,
    $Res Function(AcademicRank) then,
  ) = _$AcademicRankCopyWithImpl<$Res, AcademicRank>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$AcademicRankCopyWithImpl<$Res, $Val extends AcademicRank>
    implements $AcademicRankCopyWith<$Res> {
  _$AcademicRankCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcademicRank
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AcademicRankImplCopyWith<$Res>
    implements $AcademicRankCopyWith<$Res> {
  factory _$$AcademicRankImplCopyWith(
    _$AcademicRankImpl value,
    $Res Function(_$AcademicRankImpl) then,
  ) = __$$AcademicRankImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$AcademicRankImplCopyWithImpl<$Res>
    extends _$AcademicRankCopyWithImpl<$Res, _$AcademicRankImpl>
    implements _$$AcademicRankImplCopyWith<$Res> {
  __$$AcademicRankImplCopyWithImpl(
    _$AcademicRankImpl _value,
    $Res Function(_$AcademicRankImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AcademicRank
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _$AcademicRankImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AcademicRankImpl implements _AcademicRank {
  const _$AcademicRankImpl({required this.id, required this.name});

  factory _$AcademicRankImpl.fromJson(Map<String, dynamic> json) =>
      _$$AcademicRankImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'AcademicRank(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcademicRankImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of AcademicRank
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcademicRankImplCopyWith<_$AcademicRankImpl> get copyWith =>
      __$$AcademicRankImplCopyWithImpl<_$AcademicRankImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcademicRankImplToJson(this);
  }
}

abstract class _AcademicRank implements AcademicRank {
  const factory _AcademicRank({
    required final String id,
    required final String name,
  }) = _$AcademicRankImpl;

  factory _AcademicRank.fromJson(Map<String, dynamic> json) =
      _$AcademicRankImpl.fromJson;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of AcademicRank
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcademicRankImplCopyWith<_$AcademicRankImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
