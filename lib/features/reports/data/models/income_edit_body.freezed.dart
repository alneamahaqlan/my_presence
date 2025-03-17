// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'income_edit_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

IncomeEditBody _$IncomeEditBodyFromJson(Map<String, dynamic> json) {
  return _IncomeEditBody.fromJson(json);
}

/// @nodoc
mixin _$IncomeEditBody {
  @JsonKey(name: 'category')
  Category? get category => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'date')
  Timestamp? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  double? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency')
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this IncomeEditBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IncomeEditBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IncomeEditBodyCopyWith<IncomeEditBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeEditBodyCopyWith<$Res> {
  factory $IncomeEditBodyCopyWith(
    IncomeEditBody value,
    $Res Function(IncomeEditBody) then,
  ) = _$IncomeEditBodyCopyWithImpl<$Res, IncomeEditBody>;
  @useResult
  $Res call({
    @JsonKey(name: 'category') Category? category,
    @TimestampConverter() @JsonKey(name: 'date') Timestamp? date,
    @JsonKey(name: 'amount') double? amount,
    @JsonKey(name: 'currency') String? currency,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
  });

  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$IncomeEditBodyCopyWithImpl<$Res, $Val extends IncomeEditBody>
    implements $IncomeEditBodyCopyWith<$Res> {
  _$IncomeEditBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IncomeEditBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? date = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(
      _value.copyWith(
            category:
                freezed == category
                    ? _value.category
                    : category // ignore: cast_nullable_to_non_nullable
                        as Category?,
            date:
                freezed == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as Timestamp?,
            amount:
                freezed == amount
                    ? _value.amount
                    : amount // ignore: cast_nullable_to_non_nullable
                        as double?,
            currency:
                freezed == currency
                    ? _value.currency
                    : currency // ignore: cast_nullable_to_non_nullable
                        as String?,
            name:
                freezed == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String?,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of IncomeEditBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IncomeEditBodyImplCopyWith<$Res>
    implements $IncomeEditBodyCopyWith<$Res> {
  factory _$$IncomeEditBodyImplCopyWith(
    _$IncomeEditBodyImpl value,
    $Res Function(_$IncomeEditBodyImpl) then,
  ) = __$$IncomeEditBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'category') Category? category,
    @TimestampConverter() @JsonKey(name: 'date') Timestamp? date,
    @JsonKey(name: 'amount') double? amount,
    @JsonKey(name: 'currency') String? currency,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
  });

  @override
  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$$IncomeEditBodyImplCopyWithImpl<$Res>
    extends _$IncomeEditBodyCopyWithImpl<$Res, _$IncomeEditBodyImpl>
    implements _$$IncomeEditBodyImplCopyWith<$Res> {
  __$$IncomeEditBodyImplCopyWithImpl(
    _$IncomeEditBodyImpl _value,
    $Res Function(_$IncomeEditBodyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IncomeEditBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? date = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(
      _$IncomeEditBodyImpl(
        category:
            freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                    as Category?,
        date:
            freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as Timestamp?,
        amount:
            freezed == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                    as double?,
        currency:
            freezed == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                    as String?,
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$IncomeEditBodyImpl implements _IncomeEditBody {
  const _$IncomeEditBodyImpl({
    @JsonKey(name: 'category') this.category,
    @TimestampConverter() @JsonKey(name: 'date') this.date,
    @JsonKey(name: 'amount') this.amount,
    @JsonKey(name: 'currency') this.currency,
    @JsonKey(name: 'name') this.name,
    @JsonKey(name: 'description') this.description,
  });

  factory _$IncomeEditBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$IncomeEditBodyImplFromJson(json);

  @override
  @JsonKey(name: 'category')
  final Category? category;
  @override
  @TimestampConverter()
  @JsonKey(name: 'date')
  final Timestamp? date;
  @override
  @JsonKey(name: 'amount')
  final double? amount;
  @override
  @JsonKey(name: 'currency')
  final String? currency;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'description')
  final String? description;

  @override
  String toString() {
    return 'IncomeEditBody(category: $category, date: $date, amount: $amount, currency: $currency, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncomeEditBodyImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    category,
    date,
    amount,
    currency,
    name,
    description,
  );

  /// Create a copy of IncomeEditBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncomeEditBodyImplCopyWith<_$IncomeEditBodyImpl> get copyWith =>
      __$$IncomeEditBodyImplCopyWithImpl<_$IncomeEditBodyImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$IncomeEditBodyImplToJson(this);
  }
}

abstract class _IncomeEditBody implements IncomeEditBody {
  const factory _IncomeEditBody({
    @JsonKey(name: 'category') final Category? category,
    @TimestampConverter() @JsonKey(name: 'date') final Timestamp? date,
    @JsonKey(name: 'amount') final double? amount,
    @JsonKey(name: 'currency') final String? currency,
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'description') final String? description,
  }) = _$IncomeEditBodyImpl;

  factory _IncomeEditBody.fromJson(Map<String, dynamic> json) =
      _$IncomeEditBodyImpl.fromJson;

  @override
  @JsonKey(name: 'category')
  Category? get category;
  @override
  @TimestampConverter()
  @JsonKey(name: 'date')
  Timestamp? get date;
  @override
  @JsonKey(name: 'amount')
  double? get amount;
  @override
  @JsonKey(name: 'currency')
  String? get currency;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'description')
  String? get description;

  /// Create a copy of IncomeEditBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncomeEditBodyImplCopyWith<_$IncomeEditBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
