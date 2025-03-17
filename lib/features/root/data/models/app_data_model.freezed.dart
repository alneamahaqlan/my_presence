// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AppData _$AppDataFromJson(Map<String, dynamic> json) {
  return _AppData.fromJson(json);
}

/// @nodoc
mixin _$AppData {
  List<Category> get categories => throw _privateConstructorUsedError;
  List<TransactionModel> get transactions => throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;
  List<String> get currencies => throw _privateConstructorUsedError;

  /// Serializes this AppData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppDataCopyWith<AppData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppDataCopyWith<$Res> {
  factory $AppDataCopyWith(AppData value, $Res Function(AppData) then) =
      _$AppDataCopyWithImpl<$Res, AppData>;
  @useResult
  $Res call({
    List<Category> categories,
    List<TransactionModel> transactions,
    List<Item> items,
    List<String> currencies,
  });
}

/// @nodoc
class _$AppDataCopyWithImpl<$Res, $Val extends AppData>
    implements $AppDataCopyWith<$Res> {
  _$AppDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? transactions = null,
    Object? items = null,
    Object? currencies = null,
  }) {
    return _then(
      _value.copyWith(
            categories:
                null == categories
                    ? _value.categories
                    : categories // ignore: cast_nullable_to_non_nullable
                        as List<Category>,
            transactions:
                null == transactions
                    ? _value.transactions
                    : transactions // ignore: cast_nullable_to_non_nullable
                        as List<TransactionModel>,
            items:
                null == items
                    ? _value.items
                    : items // ignore: cast_nullable_to_non_nullable
                        as List<Item>,
            currencies:
                null == currencies
                    ? _value.currencies
                    : currencies // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AppDataImplCopyWith<$Res> implements $AppDataCopyWith<$Res> {
  factory _$$AppDataImplCopyWith(
    _$AppDataImpl value,
    $Res Function(_$AppDataImpl) then,
  ) = __$$AppDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<Category> categories,
    List<TransactionModel> transactions,
    List<Item> items,
    List<String> currencies,
  });
}

/// @nodoc
class __$$AppDataImplCopyWithImpl<$Res>
    extends _$AppDataCopyWithImpl<$Res, _$AppDataImpl>
    implements _$$AppDataImplCopyWith<$Res> {
  __$$AppDataImplCopyWithImpl(
    _$AppDataImpl _value,
    $Res Function(_$AppDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? transactions = null,
    Object? items = null,
    Object? currencies = null,
  }) {
    return _then(
      _$AppDataImpl(
        categories:
            null == categories
                ? _value._categories
                : categories // ignore: cast_nullable_to_non_nullable
                    as List<Category>,
        transactions:
            null == transactions
                ? _value._transactions
                : transactions // ignore: cast_nullable_to_non_nullable
                    as List<TransactionModel>,
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<Item>,
        currencies:
            null == currencies
                ? _value._currencies
                : currencies // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AppDataImpl implements _AppData {
  const _$AppDataImpl({
    required final List<Category> categories,
    required final List<TransactionModel> transactions,
    required final List<Item> items,
    required final List<String> currencies,
  }) : _categories = categories,
       _transactions = transactions,
       _items = items,
       _currencies = currencies;

  factory _$AppDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppDataImplFromJson(json);

  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<TransactionModel> _transactions;
  @override
  List<TransactionModel> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  final List<Item> _items;
  @override
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<String> _currencies;
  @override
  List<String> get currencies {
    if (_currencies is EqualUnmodifiableListView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currencies);
  }

  @override
  String toString() {
    return 'AppData(categories: $categories, transactions: $transactions, items: $items, currencies: $currencies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppDataImpl &&
            const DeepCollectionEquality().equals(
              other._categories,
              _categories,
            ) &&
            const DeepCollectionEquality().equals(
              other._transactions,
              _transactions,
            ) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(
              other._currencies,
              _currencies,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_categories),
    const DeepCollectionEquality().hash(_transactions),
    const DeepCollectionEquality().hash(_items),
    const DeepCollectionEquality().hash(_currencies),
  );

  /// Create a copy of AppData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppDataImplCopyWith<_$AppDataImpl> get copyWith =>
      __$$AppDataImplCopyWithImpl<_$AppDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppDataImplToJson(this);
  }
}

abstract class _AppData implements AppData {
  const factory _AppData({
    required final List<Category> categories,
    required final List<TransactionModel> transactions,
    required final List<Item> items,
    required final List<String> currencies,
  }) = _$AppDataImpl;

  factory _AppData.fromJson(Map<String, dynamic> json) = _$AppDataImpl.fromJson;

  @override
  List<Category> get categories;
  @override
  List<TransactionModel> get transactions;
  @override
  List<Item> get items;
  @override
  List<String> get currencies;

  /// Create a copy of AppData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppDataImplCopyWith<_$AppDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
