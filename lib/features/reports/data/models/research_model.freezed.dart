// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'research_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Research _$ResearchFromJson(Map<String, dynamic> json) {
  return _Research.fromJson(json);
}

/// @nodoc
mixin _$Research {
  @JsonKey(name: 'id')
  dynamic get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'link')
  String? get link => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'createdAt')
  Timestamp? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  Timestamp? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Research to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Research
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResearchCopyWith<Research> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResearchCopyWith<$Res> {
  factory $ResearchCopyWith(Research value, $Res Function(Research) then) =
      _$ResearchCopyWithImpl<$Res, Research>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') dynamic id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'comment') String? description,
    @JsonKey(name: 'link') String? link,
    @TimestampConverter() @JsonKey(name: 'createdAt') Timestamp? createdAt,
    @TimestampConverter() @JsonKey(name: 'updatedAt') Timestamp? updatedAt,
  });
}

/// @nodoc
class _$ResearchCopyWithImpl<$Res, $Val extends Research>
    implements $ResearchCopyWith<$Res> {
  _$ResearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Research
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? link = freezed,
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
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            link:
                freezed == link
                    ? _value.link
                    : link // ignore: cast_nullable_to_non_nullable
                        as String?,
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
}

/// @nodoc
abstract class _$$ResearchImplCopyWith<$Res>
    implements $ResearchCopyWith<$Res> {
  factory _$$ResearchImplCopyWith(
    _$ResearchImpl value,
    $Res Function(_$ResearchImpl) then,
  ) = __$$ResearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') dynamic id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'comment') String? description,
    @JsonKey(name: 'link') String? link,
    @TimestampConverter() @JsonKey(name: 'createdAt') Timestamp? createdAt,
    @TimestampConverter() @JsonKey(name: 'updatedAt') Timestamp? updatedAt,
  });
}

/// @nodoc
class __$$ResearchImplCopyWithImpl<$Res>
    extends _$ResearchCopyWithImpl<$Res, _$ResearchImpl>
    implements _$$ResearchImplCopyWith<$Res> {
  __$$ResearchImplCopyWithImpl(
    _$ResearchImpl _value,
    $Res Function(_$ResearchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Research
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? link = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$ResearchImpl(
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
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        link:
            freezed == link
                ? _value.link
                : link // ignore: cast_nullable_to_non_nullable
                    as String?,
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
class _$ResearchImpl implements _Research {
  const _$ResearchImpl({
    @JsonKey(name: 'id') this.id,
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'comment') this.description,
    @JsonKey(name: 'link') this.link,
    @TimestampConverter() @JsonKey(name: 'createdAt') this.createdAt,
    @TimestampConverter() @JsonKey(name: 'updatedAt') this.updatedAt,
  });

  factory _$ResearchImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResearchImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final dynamic id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'comment')
  final String? description;
  @override
  @JsonKey(name: 'link')
  final String? link;
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
    return 'Research(id: $id, name: $name, description: $description, link: $link, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResearchImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.link, link) || other.link == link) &&
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
    name,
    description,
    link,
    createdAt,
    updatedAt,
  );

  /// Create a copy of Research
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResearchImplCopyWith<_$ResearchImpl> get copyWith =>
      __$$ResearchImplCopyWithImpl<_$ResearchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResearchImplToJson(this);
  }
}

abstract class _Research implements Research {
  const factory _Research({
    @JsonKey(name: 'id') final dynamic id,
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'comment') final String? description,
    @JsonKey(name: 'link') final String? link,
    @TimestampConverter()
    @JsonKey(name: 'createdAt')
    final Timestamp? createdAt,
    @TimestampConverter()
    @JsonKey(name: 'updatedAt')
    final Timestamp? updatedAt,
  }) = _$ResearchImpl;

  factory _Research.fromJson(Map<String, dynamic> json) =
      _$ResearchImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  dynamic get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'comment')
  String? get description;
  @override
  @JsonKey(name: 'link')
  String? get link;
  @override
  @TimestampConverter()
  @JsonKey(name: 'createdAt')
  Timestamp? get createdAt;
  @override
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  Timestamp? get updatedAt;

  /// Create a copy of Research
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResearchImplCopyWith<_$ResearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
