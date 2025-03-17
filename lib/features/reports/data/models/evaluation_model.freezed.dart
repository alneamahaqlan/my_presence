// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evaluation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Evaluation _$EvaluationFromJson(Map<String, dynamic> json) {
  return _Evaluation.fromJson(json);
}

/// @nodoc
mixin _$Evaluation {
  @JsonKey(name: 'id')
  dynamic get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'score')
  int get score => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'rateType')
  String get rateType => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'createdAt')
  Timestamp? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  Timestamp? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Evaluation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Evaluation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EvaluationCopyWith<Evaluation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvaluationCopyWith<$Res> {
  factory $EvaluationCopyWith(
    Evaluation value,
    $Res Function(Evaluation) then,
  ) = _$EvaluationCopyWithImpl<$Res, Evaluation>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') dynamic id,
    @JsonKey(name: 'score') int score,
    @JsonKey(name: 'comment') String? comment,
    @JsonKey(name: 'rateType') String rateType,
    @TimestampConverter() @JsonKey(name: 'createdAt') Timestamp? createdAt,
    @TimestampConverter() @JsonKey(name: 'updatedAt') Timestamp? updatedAt,
  });
}

/// @nodoc
class _$EvaluationCopyWithImpl<$Res, $Val extends Evaluation>
    implements $EvaluationCopyWith<$Res> {
  _$EvaluationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Evaluation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? score = null,
    Object? comment = freezed,
    Object? rateType = null,
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
            score:
                null == score
                    ? _value.score
                    : score // ignore: cast_nullable_to_non_nullable
                        as int,
            comment:
                freezed == comment
                    ? _value.comment
                    : comment // ignore: cast_nullable_to_non_nullable
                        as String?,
            rateType:
                null == rateType
                    ? _value.rateType
                    : rateType // ignore: cast_nullable_to_non_nullable
                        as String,
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
abstract class _$$EvaluationImplCopyWith<$Res>
    implements $EvaluationCopyWith<$Res> {
  factory _$$EvaluationImplCopyWith(
    _$EvaluationImpl value,
    $Res Function(_$EvaluationImpl) then,
  ) = __$$EvaluationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') dynamic id,
    @JsonKey(name: 'score') int score,
    @JsonKey(name: 'comment') String? comment,
    @JsonKey(name: 'rateType') String rateType,
    @TimestampConverter() @JsonKey(name: 'createdAt') Timestamp? createdAt,
    @TimestampConverter() @JsonKey(name: 'updatedAt') Timestamp? updatedAt,
  });
}

/// @nodoc
class __$$EvaluationImplCopyWithImpl<$Res>
    extends _$EvaluationCopyWithImpl<$Res, _$EvaluationImpl>
    implements _$$EvaluationImplCopyWith<$Res> {
  __$$EvaluationImplCopyWithImpl(
    _$EvaluationImpl _value,
    $Res Function(_$EvaluationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Evaluation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? score = null,
    Object? comment = freezed,
    Object? rateType = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$EvaluationImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as dynamic,
        score:
            null == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                    as int,
        comment:
            freezed == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                    as String?,
        rateType:
            null == rateType
                ? _value.rateType
                : rateType // ignore: cast_nullable_to_non_nullable
                    as String,
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
class _$EvaluationImpl implements _Evaluation {
  const _$EvaluationImpl({
    @JsonKey(name: 'id') this.id,
    @JsonKey(name: 'score') required this.score,
    @JsonKey(name: 'comment') this.comment,
    @JsonKey(name: 'rateType') required this.rateType,
    @TimestampConverter() @JsonKey(name: 'createdAt') this.createdAt,
    @TimestampConverter() @JsonKey(name: 'updatedAt') this.updatedAt,
  });

  factory _$EvaluationImpl.fromJson(Map<String, dynamic> json) =>
      _$$EvaluationImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final dynamic id;
  @override
  @JsonKey(name: 'score')
  final int score;
  @override
  @JsonKey(name: 'comment')
  final String? comment;
  @override
  @JsonKey(name: 'rateType')
  final String rateType;
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
    return 'Evaluation(id: $id, score: $score, comment: $comment, rateType: $rateType, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvaluationImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.rateType, rateType) ||
                other.rateType == rateType) &&
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
    score,
    comment,
    rateType,
    createdAt,
    updatedAt,
  );

  /// Create a copy of Evaluation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EvaluationImplCopyWith<_$EvaluationImpl> get copyWith =>
      __$$EvaluationImplCopyWithImpl<_$EvaluationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EvaluationImplToJson(this);
  }
}

abstract class _Evaluation implements Evaluation {
  const factory _Evaluation({
    @JsonKey(name: 'id') final dynamic id,
    @JsonKey(name: 'score') required final int score,
    @JsonKey(name: 'comment') final String? comment,
    @JsonKey(name: 'rateType') required final String rateType,
    @TimestampConverter()
    @JsonKey(name: 'createdAt')
    final Timestamp? createdAt,
    @TimestampConverter()
    @JsonKey(name: 'updatedAt')
    final Timestamp? updatedAt,
  }) = _$EvaluationImpl;

  factory _Evaluation.fromJson(Map<String, dynamic> json) =
      _$EvaluationImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  dynamic get id;
  @override
  @JsonKey(name: 'score')
  int get score;
  @override
  @JsonKey(name: 'comment')
  String? get comment;
  @override
  @JsonKey(name: 'rateType')
  String get rateType;
  @override
  @TimestampConverter()
  @JsonKey(name: 'createdAt')
  Timestamp? get createdAt;
  @override
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  Timestamp? get updatedAt;

  /// Create a copy of Evaluation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EvaluationImplCopyWith<_$EvaluationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
