// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_create_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ScheduleCreateBody _$ScheduleCreateBodyFromJson(Map<String, dynamic> json) {
  return _ScheduleCreateBody.fromJson(json);
}

/// @nodoc
mixin _$ScheduleCreateBody {
  @TimestampConverter()
  @JsonKey(name: 'termStart')
  Timestamp get termStart => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'termEnd')
  Timestamp get termEnd => throw _privateConstructorUsedError;

  /// Serializes this ScheduleCreateBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleCreateBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleCreateBodyCopyWith<ScheduleCreateBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCreateBodyCopyWith<$Res> {
  factory $ScheduleCreateBodyCopyWith(
    ScheduleCreateBody value,
    $Res Function(ScheduleCreateBody) then,
  ) = _$ScheduleCreateBodyCopyWithImpl<$Res, ScheduleCreateBody>;
  @useResult
  $Res call({
    @TimestampConverter() @JsonKey(name: 'termStart') Timestamp termStart,
    @TimestampConverter() @JsonKey(name: 'termEnd') Timestamp termEnd,
  });
}

/// @nodoc
class _$ScheduleCreateBodyCopyWithImpl<$Res, $Val extends ScheduleCreateBody>
    implements $ScheduleCreateBodyCopyWith<$Res> {
  _$ScheduleCreateBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleCreateBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? termStart = null, Object? termEnd = null}) {
    return _then(
      _value.copyWith(
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ScheduleCreateBodyImplCopyWith<$Res>
    implements $ScheduleCreateBodyCopyWith<$Res> {
  factory _$$ScheduleCreateBodyImplCopyWith(
    _$ScheduleCreateBodyImpl value,
    $Res Function(_$ScheduleCreateBodyImpl) then,
  ) = __$$ScheduleCreateBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @TimestampConverter() @JsonKey(name: 'termStart') Timestamp termStart,
    @TimestampConverter() @JsonKey(name: 'termEnd') Timestamp termEnd,
  });
}

/// @nodoc
class __$$ScheduleCreateBodyImplCopyWithImpl<$Res>
    extends _$ScheduleCreateBodyCopyWithImpl<$Res, _$ScheduleCreateBodyImpl>
    implements _$$ScheduleCreateBodyImplCopyWith<$Res> {
  __$$ScheduleCreateBodyImplCopyWithImpl(
    _$ScheduleCreateBodyImpl _value,
    $Res Function(_$ScheduleCreateBodyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScheduleCreateBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? termStart = null, Object? termEnd = null}) {
    return _then(
      _$ScheduleCreateBodyImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleCreateBodyImpl implements _ScheduleCreateBody {
  const _$ScheduleCreateBodyImpl({
    @TimestampConverter() @JsonKey(name: 'termStart') required this.termStart,
    @TimestampConverter() @JsonKey(name: 'termEnd') required this.termEnd,
  });

  factory _$ScheduleCreateBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleCreateBodyImplFromJson(json);

  @override
  @TimestampConverter()
  @JsonKey(name: 'termStart')
  final Timestamp termStart;
  @override
  @TimestampConverter()
  @JsonKey(name: 'termEnd')
  final Timestamp termEnd;

  @override
  String toString() {
    return 'ScheduleCreateBody(termStart: $termStart, termEnd: $termEnd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleCreateBodyImpl &&
            (identical(other.termStart, termStart) ||
                other.termStart == termStart) &&
            (identical(other.termEnd, termEnd) || other.termEnd == termEnd));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, termStart, termEnd);

  /// Create a copy of ScheduleCreateBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleCreateBodyImplCopyWith<_$ScheduleCreateBodyImpl> get copyWith =>
      __$$ScheduleCreateBodyImplCopyWithImpl<_$ScheduleCreateBodyImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleCreateBodyImplToJson(this);
  }
}

abstract class _ScheduleCreateBody implements ScheduleCreateBody {
  const factory _ScheduleCreateBody({
    @TimestampConverter()
    @JsonKey(name: 'termStart')
    required final Timestamp termStart,
    @TimestampConverter()
    @JsonKey(name: 'termEnd')
    required final Timestamp termEnd,
  }) = _$ScheduleCreateBodyImpl;

  factory _ScheduleCreateBody.fromJson(Map<String, dynamic> json) =
      _$ScheduleCreateBodyImpl.fromJson;

  @override
  @TimestampConverter()
  @JsonKey(name: 'termStart')
  Timestamp get termStart;
  @override
  @TimestampConverter()
  @JsonKey(name: 'termEnd')
  Timestamp get termEnd;

  /// Create a copy of ScheduleCreateBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleCreateBodyImplCopyWith<_$ScheduleCreateBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
