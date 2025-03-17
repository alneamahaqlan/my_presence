// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'income_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Income _$IncomeFromJson(Map<String, dynamic> json) {
  return _Income.fromJson(json);
}

/// @nodoc
mixin _$Income {
  @JsonKey(name: 'id')
  dynamic get id => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'date')
  Timestamp get date => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "currency")
  String get currency => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  Category? get category => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'createdAt')
  Timestamp? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  Timestamp? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Income to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Income
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IncomeCopyWith<Income> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeCopyWith<$Res> {
  factory $IncomeCopyWith(Income value, $Res Function(Income) then) =
      _$IncomeCopyWithImpl<$Res, Income>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') dynamic id,
    @TimestampConverter() @JsonKey(name: 'date') Timestamp date,
    @JsonKey(name: "name") String name,
    @JsonKey(name: "amount") double amount,
    @JsonKey(name: "currency") String currency,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "category") Category? category,
    @TimestampConverter() @JsonKey(name: 'createdAt') Timestamp? createdAt,
    @TimestampConverter() @JsonKey(name: 'updatedAt') Timestamp? updatedAt,
  });

  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$IncomeCopyWithImpl<$Res, $Val extends Income>
    implements $IncomeCopyWith<$Res> {
  _$IncomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Income
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = null,
    Object? name = null,
    Object? amount = null,
    Object? currency = null,
    Object? description = freezed,
    Object? category = freezed,
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
            date:
                null == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as Timestamp,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            amount:
                null == amount
                    ? _value.amount
                    : amount // ignore: cast_nullable_to_non_nullable
                        as double,
            currency:
                null == currency
                    ? _value.currency
                    : currency // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            category:
                freezed == category
                    ? _value.category
                    : category // ignore: cast_nullable_to_non_nullable
                        as Category?,
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

  /// Create a copy of Income
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
abstract class _$$IncomeImplCopyWith<$Res> implements $IncomeCopyWith<$Res> {
  factory _$$IncomeImplCopyWith(
    _$IncomeImpl value,
    $Res Function(_$IncomeImpl) then,
  ) = __$$IncomeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') dynamic id,
    @TimestampConverter() @JsonKey(name: 'date') Timestamp date,
    @JsonKey(name: "name") String name,
    @JsonKey(name: "amount") double amount,
    @JsonKey(name: "currency") String currency,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "category") Category? category,
    @TimestampConverter() @JsonKey(name: 'createdAt') Timestamp? createdAt,
    @TimestampConverter() @JsonKey(name: 'updatedAt') Timestamp? updatedAt,
  });

  @override
  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$$IncomeImplCopyWithImpl<$Res>
    extends _$IncomeCopyWithImpl<$Res, _$IncomeImpl>
    implements _$$IncomeImplCopyWith<$Res> {
  __$$IncomeImplCopyWithImpl(
    _$IncomeImpl _value,
    $Res Function(_$IncomeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Income
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = null,
    Object? name = null,
    Object? amount = null,
    Object? currency = null,
    Object? description = freezed,
    Object? category = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$IncomeImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as dynamic,
        date:
            null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as Timestamp,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        amount:
            null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                    as double,
        currency:
            null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        category:
            freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                    as Category?,
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
class _$IncomeImpl implements _Income {
  const _$IncomeImpl({
    @JsonKey(name: 'id') this.id,
    @TimestampConverter() @JsonKey(name: 'date') required this.date,
    @JsonKey(name: "name") required this.name,
    @JsonKey(name: "amount") required this.amount,
    @JsonKey(name: "currency") required this.currency,
    @JsonKey(name: "description") this.description,
    @JsonKey(name: "category") this.category,
    @TimestampConverter() @JsonKey(name: 'createdAt') this.createdAt,
    @TimestampConverter() @JsonKey(name: 'updatedAt') this.updatedAt,
  });

  factory _$IncomeImpl.fromJson(Map<String, dynamic> json) =>
      _$$IncomeImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final dynamic id;
  @override
  @TimestampConverter()
  @JsonKey(name: 'date')
  final Timestamp date;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "amount")
  final double amount;
  @override
  @JsonKey(name: "currency")
  final String currency;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "category")
  final Category? category;
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
    return 'Income(id: $id, date: $date, name: $name, amount: $amount, currency: $currency, description: $description, category: $category, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncomeImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
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
    date,
    name,
    amount,
    currency,
    description,
    category,
    createdAt,
    updatedAt,
  );

  /// Create a copy of Income
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncomeImplCopyWith<_$IncomeImpl> get copyWith =>
      __$$IncomeImplCopyWithImpl<_$IncomeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IncomeImplToJson(this);
  }
}

abstract class _Income implements Income {
  const factory _Income({
    @JsonKey(name: 'id') final dynamic id,
    @TimestampConverter() @JsonKey(name: 'date') required final Timestamp date,
    @JsonKey(name: "name") required final String name,
    @JsonKey(name: "amount") required final double amount,
    @JsonKey(name: "currency") required final String currency,
    @JsonKey(name: "description") final String? description,
    @JsonKey(name: "category") final Category? category,
    @TimestampConverter()
    @JsonKey(name: 'createdAt')
    final Timestamp? createdAt,
    @TimestampConverter()
    @JsonKey(name: 'updatedAt')
    final Timestamp? updatedAt,
  }) = _$IncomeImpl;

  factory _Income.fromJson(Map<String, dynamic> json) = _$IncomeImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  dynamic get id;
  @override
  @TimestampConverter()
  @JsonKey(name: 'date')
  Timestamp get date;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "amount")
  double get amount;
  @override
  @JsonKey(name: "currency")
  String get currency;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "category")
  Category? get category;
  @override
  @TimestampConverter()
  @JsonKey(name: 'createdAt')
  Timestamp? get createdAt;
  @override
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  Timestamp? get updatedAt;

  /// Create a copy of Income
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncomeImplCopyWith<_$IncomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
