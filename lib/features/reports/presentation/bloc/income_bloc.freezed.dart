// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'income_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$IncomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchIncomes,
    required TResult Function(Category category) categorySelected,
    required TResult Function(Timestamp date) dateSelected,
    required TResult Function(String currency) currencyChanged,
    required TResult Function(Income income) saveIncome,
    required TResult Function(String incomeId) deleteIncome,
    required TResult Function(IncomeEditBody incomeEditBody, String incomeId)
    editIncome,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchIncomes,
    TResult? Function(Category category)? categorySelected,
    TResult? Function(Timestamp date)? dateSelected,
    TResult? Function(String currency)? currencyChanged,
    TResult? Function(Income income)? saveIncome,
    TResult? Function(String incomeId)? deleteIncome,
    TResult? Function(IncomeEditBody incomeEditBody, String incomeId)?
    editIncome,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchIncomes,
    TResult Function(Category category)? categorySelected,
    TResult Function(Timestamp date)? dateSelected,
    TResult Function(String currency)? currencyChanged,
    TResult Function(Income income)? saveIncome,
    TResult Function(String incomeId)? deleteIncome,
    TResult Function(IncomeEditBody incomeEditBody, String incomeId)?
    editIncome,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchIncomes value) fetchIncomes,
    required TResult Function(CategorySelected value) categorySelected,
    required TResult Function(DateSelected value) dateSelected,
    required TResult Function(CurrencyChanged value) currencyChanged,
    required TResult Function(SaveIncome value) saveIncome,
    required TResult Function(DeleteIncome value) deleteIncome,
    required TResult Function(EditIncome value) editIncome,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchIncomes value)? fetchIncomes,
    TResult? Function(CategorySelected value)? categorySelected,
    TResult? Function(DateSelected value)? dateSelected,
    TResult? Function(CurrencyChanged value)? currencyChanged,
    TResult? Function(SaveIncome value)? saveIncome,
    TResult? Function(DeleteIncome value)? deleteIncome,
    TResult? Function(EditIncome value)? editIncome,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchIncomes value)? fetchIncomes,
    TResult Function(CategorySelected value)? categorySelected,
    TResult Function(DateSelected value)? dateSelected,
    TResult Function(CurrencyChanged value)? currencyChanged,
    TResult Function(SaveIncome value)? saveIncome,
    TResult Function(DeleteIncome value)? deleteIncome,
    TResult Function(EditIncome value)? editIncome,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeEventCopyWith<$Res> {
  factory $IncomeEventCopyWith(
    IncomeEvent value,
    $Res Function(IncomeEvent) then,
  ) = _$IncomeEventCopyWithImpl<$Res, IncomeEvent>;
}

/// @nodoc
class _$IncomeEventCopyWithImpl<$Res, $Val extends IncomeEvent>
    implements $IncomeEventCopyWith<$Res> {
  _$IncomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IncomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchIncomesImplCopyWith<$Res> {
  factory _$$FetchIncomesImplCopyWith(
    _$FetchIncomesImpl value,
    $Res Function(_$FetchIncomesImpl) then,
  ) = __$$FetchIncomesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchIncomesImplCopyWithImpl<$Res>
    extends _$IncomeEventCopyWithImpl<$Res, _$FetchIncomesImpl>
    implements _$$FetchIncomesImplCopyWith<$Res> {
  __$$FetchIncomesImplCopyWithImpl(
    _$FetchIncomesImpl _value,
    $Res Function(_$FetchIncomesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IncomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchIncomesImpl implements FetchIncomes {
  const _$FetchIncomesImpl();

  @override
  String toString() {
    return 'IncomeEvent.fetchIncomes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchIncomesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchIncomes,
    required TResult Function(Category category) categorySelected,
    required TResult Function(Timestamp date) dateSelected,
    required TResult Function(String currency) currencyChanged,
    required TResult Function(Income income) saveIncome,
    required TResult Function(String incomeId) deleteIncome,
    required TResult Function(IncomeEditBody incomeEditBody, String incomeId)
    editIncome,
  }) {
    return fetchIncomes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchIncomes,
    TResult? Function(Category category)? categorySelected,
    TResult? Function(Timestamp date)? dateSelected,
    TResult? Function(String currency)? currencyChanged,
    TResult? Function(Income income)? saveIncome,
    TResult? Function(String incomeId)? deleteIncome,
    TResult? Function(IncomeEditBody incomeEditBody, String incomeId)?
    editIncome,
  }) {
    return fetchIncomes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchIncomes,
    TResult Function(Category category)? categorySelected,
    TResult Function(Timestamp date)? dateSelected,
    TResult Function(String currency)? currencyChanged,
    TResult Function(Income income)? saveIncome,
    TResult Function(String incomeId)? deleteIncome,
    TResult Function(IncomeEditBody incomeEditBody, String incomeId)?
    editIncome,
    required TResult orElse(),
  }) {
    if (fetchIncomes != null) {
      return fetchIncomes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchIncomes value) fetchIncomes,
    required TResult Function(CategorySelected value) categorySelected,
    required TResult Function(DateSelected value) dateSelected,
    required TResult Function(CurrencyChanged value) currencyChanged,
    required TResult Function(SaveIncome value) saveIncome,
    required TResult Function(DeleteIncome value) deleteIncome,
    required TResult Function(EditIncome value) editIncome,
  }) {
    return fetchIncomes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchIncomes value)? fetchIncomes,
    TResult? Function(CategorySelected value)? categorySelected,
    TResult? Function(DateSelected value)? dateSelected,
    TResult? Function(CurrencyChanged value)? currencyChanged,
    TResult? Function(SaveIncome value)? saveIncome,
    TResult? Function(DeleteIncome value)? deleteIncome,
    TResult? Function(EditIncome value)? editIncome,
  }) {
    return fetchIncomes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchIncomes value)? fetchIncomes,
    TResult Function(CategorySelected value)? categorySelected,
    TResult Function(DateSelected value)? dateSelected,
    TResult Function(CurrencyChanged value)? currencyChanged,
    TResult Function(SaveIncome value)? saveIncome,
    TResult Function(DeleteIncome value)? deleteIncome,
    TResult Function(EditIncome value)? editIncome,
    required TResult orElse(),
  }) {
    if (fetchIncomes != null) {
      return fetchIncomes(this);
    }
    return orElse();
  }
}

abstract class FetchIncomes implements IncomeEvent {
  const factory FetchIncomes() = _$FetchIncomesImpl;
}

/// @nodoc
abstract class _$$CategorySelectedImplCopyWith<$Res> {
  factory _$$CategorySelectedImplCopyWith(
    _$CategorySelectedImpl value,
    $Res Function(_$CategorySelectedImpl) then,
  ) = __$$CategorySelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Category category});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$CategorySelectedImplCopyWithImpl<$Res>
    extends _$IncomeEventCopyWithImpl<$Res, _$CategorySelectedImpl>
    implements _$$CategorySelectedImplCopyWith<$Res> {
  __$$CategorySelectedImplCopyWithImpl(
    _$CategorySelectedImpl _value,
    $Res Function(_$CategorySelectedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IncomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? category = null}) {
    return _then(
      _$CategorySelectedImpl(
        null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                as Category,
      ),
    );
  }

  /// Create a copy of IncomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$CategorySelectedImpl implements CategorySelected {
  const _$CategorySelectedImpl(this.category);

  @override
  final Category category;

  @override
  String toString() {
    return 'IncomeEvent.categorySelected(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategorySelectedImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of IncomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategorySelectedImplCopyWith<_$CategorySelectedImpl> get copyWith =>
      __$$CategorySelectedImplCopyWithImpl<_$CategorySelectedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchIncomes,
    required TResult Function(Category category) categorySelected,
    required TResult Function(Timestamp date) dateSelected,
    required TResult Function(String currency) currencyChanged,
    required TResult Function(Income income) saveIncome,
    required TResult Function(String incomeId) deleteIncome,
    required TResult Function(IncomeEditBody incomeEditBody, String incomeId)
    editIncome,
  }) {
    return categorySelected(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchIncomes,
    TResult? Function(Category category)? categorySelected,
    TResult? Function(Timestamp date)? dateSelected,
    TResult? Function(String currency)? currencyChanged,
    TResult? Function(Income income)? saveIncome,
    TResult? Function(String incomeId)? deleteIncome,
    TResult? Function(IncomeEditBody incomeEditBody, String incomeId)?
    editIncome,
  }) {
    return categorySelected?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchIncomes,
    TResult Function(Category category)? categorySelected,
    TResult Function(Timestamp date)? dateSelected,
    TResult Function(String currency)? currencyChanged,
    TResult Function(Income income)? saveIncome,
    TResult Function(String incomeId)? deleteIncome,
    TResult Function(IncomeEditBody incomeEditBody, String incomeId)?
    editIncome,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchIncomes value) fetchIncomes,
    required TResult Function(CategorySelected value) categorySelected,
    required TResult Function(DateSelected value) dateSelected,
    required TResult Function(CurrencyChanged value) currencyChanged,
    required TResult Function(SaveIncome value) saveIncome,
    required TResult Function(DeleteIncome value) deleteIncome,
    required TResult Function(EditIncome value) editIncome,
  }) {
    return categorySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchIncomes value)? fetchIncomes,
    TResult? Function(CategorySelected value)? categorySelected,
    TResult? Function(DateSelected value)? dateSelected,
    TResult? Function(CurrencyChanged value)? currencyChanged,
    TResult? Function(SaveIncome value)? saveIncome,
    TResult? Function(DeleteIncome value)? deleteIncome,
    TResult? Function(EditIncome value)? editIncome,
  }) {
    return categorySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchIncomes value)? fetchIncomes,
    TResult Function(CategorySelected value)? categorySelected,
    TResult Function(DateSelected value)? dateSelected,
    TResult Function(CurrencyChanged value)? currencyChanged,
    TResult Function(SaveIncome value)? saveIncome,
    TResult Function(DeleteIncome value)? deleteIncome,
    TResult Function(EditIncome value)? editIncome,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(this);
    }
    return orElse();
  }
}

abstract class CategorySelected implements IncomeEvent {
  const factory CategorySelected(final Category category) =
      _$CategorySelectedImpl;

  Category get category;

  /// Create a copy of IncomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategorySelectedImplCopyWith<_$CategorySelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateSelectedImplCopyWith<$Res> {
  factory _$$DateSelectedImplCopyWith(
    _$DateSelectedImpl value,
    $Res Function(_$DateSelectedImpl) then,
  ) = __$$DateSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Timestamp date});
}

/// @nodoc
class __$$DateSelectedImplCopyWithImpl<$Res>
    extends _$IncomeEventCopyWithImpl<$Res, _$DateSelectedImpl>
    implements _$$DateSelectedImplCopyWith<$Res> {
  __$$DateSelectedImplCopyWithImpl(
    _$DateSelectedImpl _value,
    $Res Function(_$DateSelectedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IncomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = null}) {
    return _then(
      _$DateSelectedImpl(
        null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                as Timestamp,
      ),
    );
  }
}

/// @nodoc

class _$DateSelectedImpl implements DateSelected {
  const _$DateSelectedImpl(this.date);

  @override
  final Timestamp date;

  @override
  String toString() {
    return 'IncomeEvent.dateSelected(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateSelectedImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of IncomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateSelectedImplCopyWith<_$DateSelectedImpl> get copyWith =>
      __$$DateSelectedImplCopyWithImpl<_$DateSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchIncomes,
    required TResult Function(Category category) categorySelected,
    required TResult Function(Timestamp date) dateSelected,
    required TResult Function(String currency) currencyChanged,
    required TResult Function(Income income) saveIncome,
    required TResult Function(String incomeId) deleteIncome,
    required TResult Function(IncomeEditBody incomeEditBody, String incomeId)
    editIncome,
  }) {
    return dateSelected(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchIncomes,
    TResult? Function(Category category)? categorySelected,
    TResult? Function(Timestamp date)? dateSelected,
    TResult? Function(String currency)? currencyChanged,
    TResult? Function(Income income)? saveIncome,
    TResult? Function(String incomeId)? deleteIncome,
    TResult? Function(IncomeEditBody incomeEditBody, String incomeId)?
    editIncome,
  }) {
    return dateSelected?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchIncomes,
    TResult Function(Category category)? categorySelected,
    TResult Function(Timestamp date)? dateSelected,
    TResult Function(String currency)? currencyChanged,
    TResult Function(Income income)? saveIncome,
    TResult Function(String incomeId)? deleteIncome,
    TResult Function(IncomeEditBody incomeEditBody, String incomeId)?
    editIncome,
    required TResult orElse(),
  }) {
    if (dateSelected != null) {
      return dateSelected(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchIncomes value) fetchIncomes,
    required TResult Function(CategorySelected value) categorySelected,
    required TResult Function(DateSelected value) dateSelected,
    required TResult Function(CurrencyChanged value) currencyChanged,
    required TResult Function(SaveIncome value) saveIncome,
    required TResult Function(DeleteIncome value) deleteIncome,
    required TResult Function(EditIncome value) editIncome,
  }) {
    return dateSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchIncomes value)? fetchIncomes,
    TResult? Function(CategorySelected value)? categorySelected,
    TResult? Function(DateSelected value)? dateSelected,
    TResult? Function(CurrencyChanged value)? currencyChanged,
    TResult? Function(SaveIncome value)? saveIncome,
    TResult? Function(DeleteIncome value)? deleteIncome,
    TResult? Function(EditIncome value)? editIncome,
  }) {
    return dateSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchIncomes value)? fetchIncomes,
    TResult Function(CategorySelected value)? categorySelected,
    TResult Function(DateSelected value)? dateSelected,
    TResult Function(CurrencyChanged value)? currencyChanged,
    TResult Function(SaveIncome value)? saveIncome,
    TResult Function(DeleteIncome value)? deleteIncome,
    TResult Function(EditIncome value)? editIncome,
    required TResult orElse(),
  }) {
    if (dateSelected != null) {
      return dateSelected(this);
    }
    return orElse();
  }
}

abstract class DateSelected implements IncomeEvent {
  const factory DateSelected(final Timestamp date) = _$DateSelectedImpl;

  Timestamp get date;

  /// Create a copy of IncomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateSelectedImplCopyWith<_$DateSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrencyChangedImplCopyWith<$Res> {
  factory _$$CurrencyChangedImplCopyWith(
    _$CurrencyChangedImpl value,
    $Res Function(_$CurrencyChangedImpl) then,
  ) = __$$CurrencyChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String currency});
}

/// @nodoc
class __$$CurrencyChangedImplCopyWithImpl<$Res>
    extends _$IncomeEventCopyWithImpl<$Res, _$CurrencyChangedImpl>
    implements _$$CurrencyChangedImplCopyWith<$Res> {
  __$$CurrencyChangedImplCopyWithImpl(
    _$CurrencyChangedImpl _value,
    $Res Function(_$CurrencyChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IncomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? currency = null}) {
    return _then(
      _$CurrencyChangedImpl(
        null == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$CurrencyChangedImpl implements CurrencyChanged {
  const _$CurrencyChangedImpl(this.currency);

  @override
  final String currency;

  @override
  String toString() {
    return 'IncomeEvent.currencyChanged(currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyChangedImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currency);

  /// Create a copy of IncomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyChangedImplCopyWith<_$CurrencyChangedImpl> get copyWith =>
      __$$CurrencyChangedImplCopyWithImpl<_$CurrencyChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchIncomes,
    required TResult Function(Category category) categorySelected,
    required TResult Function(Timestamp date) dateSelected,
    required TResult Function(String currency) currencyChanged,
    required TResult Function(Income income) saveIncome,
    required TResult Function(String incomeId) deleteIncome,
    required TResult Function(IncomeEditBody incomeEditBody, String incomeId)
    editIncome,
  }) {
    return currencyChanged(currency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchIncomes,
    TResult? Function(Category category)? categorySelected,
    TResult? Function(Timestamp date)? dateSelected,
    TResult? Function(String currency)? currencyChanged,
    TResult? Function(Income income)? saveIncome,
    TResult? Function(String incomeId)? deleteIncome,
    TResult? Function(IncomeEditBody incomeEditBody, String incomeId)?
    editIncome,
  }) {
    return currencyChanged?.call(currency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchIncomes,
    TResult Function(Category category)? categorySelected,
    TResult Function(Timestamp date)? dateSelected,
    TResult Function(String currency)? currencyChanged,
    TResult Function(Income income)? saveIncome,
    TResult Function(String incomeId)? deleteIncome,
    TResult Function(IncomeEditBody incomeEditBody, String incomeId)?
    editIncome,
    required TResult orElse(),
  }) {
    if (currencyChanged != null) {
      return currencyChanged(currency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchIncomes value) fetchIncomes,
    required TResult Function(CategorySelected value) categorySelected,
    required TResult Function(DateSelected value) dateSelected,
    required TResult Function(CurrencyChanged value) currencyChanged,
    required TResult Function(SaveIncome value) saveIncome,
    required TResult Function(DeleteIncome value) deleteIncome,
    required TResult Function(EditIncome value) editIncome,
  }) {
    return currencyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchIncomes value)? fetchIncomes,
    TResult? Function(CategorySelected value)? categorySelected,
    TResult? Function(DateSelected value)? dateSelected,
    TResult? Function(CurrencyChanged value)? currencyChanged,
    TResult? Function(SaveIncome value)? saveIncome,
    TResult? Function(DeleteIncome value)? deleteIncome,
    TResult? Function(EditIncome value)? editIncome,
  }) {
    return currencyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchIncomes value)? fetchIncomes,
    TResult Function(CategorySelected value)? categorySelected,
    TResult Function(DateSelected value)? dateSelected,
    TResult Function(CurrencyChanged value)? currencyChanged,
    TResult Function(SaveIncome value)? saveIncome,
    TResult Function(DeleteIncome value)? deleteIncome,
    TResult Function(EditIncome value)? editIncome,
    required TResult orElse(),
  }) {
    if (currencyChanged != null) {
      return currencyChanged(this);
    }
    return orElse();
  }
}

abstract class CurrencyChanged implements IncomeEvent {
  const factory CurrencyChanged(final String currency) = _$CurrencyChangedImpl;

  String get currency;

  /// Create a copy of IncomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrencyChangedImplCopyWith<_$CurrencyChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveIncomeImplCopyWith<$Res> {
  factory _$$SaveIncomeImplCopyWith(
    _$SaveIncomeImpl value,
    $Res Function(_$SaveIncomeImpl) then,
  ) = __$$SaveIncomeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Income income});

  $IncomeCopyWith<$Res> get income;
}

/// @nodoc
class __$$SaveIncomeImplCopyWithImpl<$Res>
    extends _$IncomeEventCopyWithImpl<$Res, _$SaveIncomeImpl>
    implements _$$SaveIncomeImplCopyWith<$Res> {
  __$$SaveIncomeImplCopyWithImpl(
    _$SaveIncomeImpl _value,
    $Res Function(_$SaveIncomeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IncomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? income = null}) {
    return _then(
      _$SaveIncomeImpl(
        null == income
            ? _value.income
            : income // ignore: cast_nullable_to_non_nullable
                as Income,
      ),
    );
  }

  /// Create a copy of IncomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IncomeCopyWith<$Res> get income {
    return $IncomeCopyWith<$Res>(_value.income, (value) {
      return _then(_value.copyWith(income: value));
    });
  }
}

/// @nodoc

class _$SaveIncomeImpl implements SaveIncome {
  const _$SaveIncomeImpl(this.income);

  @override
  final Income income;

  @override
  String toString() {
    return 'IncomeEvent.saveIncome(income: $income)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveIncomeImpl &&
            (identical(other.income, income) || other.income == income));
  }

  @override
  int get hashCode => Object.hash(runtimeType, income);

  /// Create a copy of IncomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveIncomeImplCopyWith<_$SaveIncomeImpl> get copyWith =>
      __$$SaveIncomeImplCopyWithImpl<_$SaveIncomeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchIncomes,
    required TResult Function(Category category) categorySelected,
    required TResult Function(Timestamp date) dateSelected,
    required TResult Function(String currency) currencyChanged,
    required TResult Function(Income income) saveIncome,
    required TResult Function(String incomeId) deleteIncome,
    required TResult Function(IncomeEditBody incomeEditBody, String incomeId)
    editIncome,
  }) {
    return saveIncome(income);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchIncomes,
    TResult? Function(Category category)? categorySelected,
    TResult? Function(Timestamp date)? dateSelected,
    TResult? Function(String currency)? currencyChanged,
    TResult? Function(Income income)? saveIncome,
    TResult? Function(String incomeId)? deleteIncome,
    TResult? Function(IncomeEditBody incomeEditBody, String incomeId)?
    editIncome,
  }) {
    return saveIncome?.call(income);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchIncomes,
    TResult Function(Category category)? categorySelected,
    TResult Function(Timestamp date)? dateSelected,
    TResult Function(String currency)? currencyChanged,
    TResult Function(Income income)? saveIncome,
    TResult Function(String incomeId)? deleteIncome,
    TResult Function(IncomeEditBody incomeEditBody, String incomeId)?
    editIncome,
    required TResult orElse(),
  }) {
    if (saveIncome != null) {
      return saveIncome(income);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchIncomes value) fetchIncomes,
    required TResult Function(CategorySelected value) categorySelected,
    required TResult Function(DateSelected value) dateSelected,
    required TResult Function(CurrencyChanged value) currencyChanged,
    required TResult Function(SaveIncome value) saveIncome,
    required TResult Function(DeleteIncome value) deleteIncome,
    required TResult Function(EditIncome value) editIncome,
  }) {
    return saveIncome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchIncomes value)? fetchIncomes,
    TResult? Function(CategorySelected value)? categorySelected,
    TResult? Function(DateSelected value)? dateSelected,
    TResult? Function(CurrencyChanged value)? currencyChanged,
    TResult? Function(SaveIncome value)? saveIncome,
    TResult? Function(DeleteIncome value)? deleteIncome,
    TResult? Function(EditIncome value)? editIncome,
  }) {
    return saveIncome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchIncomes value)? fetchIncomes,
    TResult Function(CategorySelected value)? categorySelected,
    TResult Function(DateSelected value)? dateSelected,
    TResult Function(CurrencyChanged value)? currencyChanged,
    TResult Function(SaveIncome value)? saveIncome,
    TResult Function(DeleteIncome value)? deleteIncome,
    TResult Function(EditIncome value)? editIncome,
    required TResult orElse(),
  }) {
    if (saveIncome != null) {
      return saveIncome(this);
    }
    return orElse();
  }
}

abstract class SaveIncome implements IncomeEvent {
  const factory SaveIncome(final Income income) = _$SaveIncomeImpl;

  Income get income;

  /// Create a copy of IncomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveIncomeImplCopyWith<_$SaveIncomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteIncomeImplCopyWith<$Res> {
  factory _$$DeleteIncomeImplCopyWith(
    _$DeleteIncomeImpl value,
    $Res Function(_$DeleteIncomeImpl) then,
  ) = __$$DeleteIncomeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String incomeId});
}

/// @nodoc
class __$$DeleteIncomeImplCopyWithImpl<$Res>
    extends _$IncomeEventCopyWithImpl<$Res, _$DeleteIncomeImpl>
    implements _$$DeleteIncomeImplCopyWith<$Res> {
  __$$DeleteIncomeImplCopyWithImpl(
    _$DeleteIncomeImpl _value,
    $Res Function(_$DeleteIncomeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IncomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? incomeId = null}) {
    return _then(
      _$DeleteIncomeImpl(
        null == incomeId
            ? _value.incomeId
            : incomeId // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$DeleteIncomeImpl implements DeleteIncome {
  const _$DeleteIncomeImpl(this.incomeId);

  @override
  final String incomeId;

  @override
  String toString() {
    return 'IncomeEvent.deleteIncome(incomeId: $incomeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteIncomeImpl &&
            (identical(other.incomeId, incomeId) ||
                other.incomeId == incomeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, incomeId);

  /// Create a copy of IncomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteIncomeImplCopyWith<_$DeleteIncomeImpl> get copyWith =>
      __$$DeleteIncomeImplCopyWithImpl<_$DeleteIncomeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchIncomes,
    required TResult Function(Category category) categorySelected,
    required TResult Function(Timestamp date) dateSelected,
    required TResult Function(String currency) currencyChanged,
    required TResult Function(Income income) saveIncome,
    required TResult Function(String incomeId) deleteIncome,
    required TResult Function(IncomeEditBody incomeEditBody, String incomeId)
    editIncome,
  }) {
    return deleteIncome(incomeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchIncomes,
    TResult? Function(Category category)? categorySelected,
    TResult? Function(Timestamp date)? dateSelected,
    TResult? Function(String currency)? currencyChanged,
    TResult? Function(Income income)? saveIncome,
    TResult? Function(String incomeId)? deleteIncome,
    TResult? Function(IncomeEditBody incomeEditBody, String incomeId)?
    editIncome,
  }) {
    return deleteIncome?.call(incomeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchIncomes,
    TResult Function(Category category)? categorySelected,
    TResult Function(Timestamp date)? dateSelected,
    TResult Function(String currency)? currencyChanged,
    TResult Function(Income income)? saveIncome,
    TResult Function(String incomeId)? deleteIncome,
    TResult Function(IncomeEditBody incomeEditBody, String incomeId)?
    editIncome,
    required TResult orElse(),
  }) {
    if (deleteIncome != null) {
      return deleteIncome(incomeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchIncomes value) fetchIncomes,
    required TResult Function(CategorySelected value) categorySelected,
    required TResult Function(DateSelected value) dateSelected,
    required TResult Function(CurrencyChanged value) currencyChanged,
    required TResult Function(SaveIncome value) saveIncome,
    required TResult Function(DeleteIncome value) deleteIncome,
    required TResult Function(EditIncome value) editIncome,
  }) {
    return deleteIncome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchIncomes value)? fetchIncomes,
    TResult? Function(CategorySelected value)? categorySelected,
    TResult? Function(DateSelected value)? dateSelected,
    TResult? Function(CurrencyChanged value)? currencyChanged,
    TResult? Function(SaveIncome value)? saveIncome,
    TResult? Function(DeleteIncome value)? deleteIncome,
    TResult? Function(EditIncome value)? editIncome,
  }) {
    return deleteIncome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchIncomes value)? fetchIncomes,
    TResult Function(CategorySelected value)? categorySelected,
    TResult Function(DateSelected value)? dateSelected,
    TResult Function(CurrencyChanged value)? currencyChanged,
    TResult Function(SaveIncome value)? saveIncome,
    TResult Function(DeleteIncome value)? deleteIncome,
    TResult Function(EditIncome value)? editIncome,
    required TResult orElse(),
  }) {
    if (deleteIncome != null) {
      return deleteIncome(this);
    }
    return orElse();
  }
}

abstract class DeleteIncome implements IncomeEvent {
  const factory DeleteIncome(final String incomeId) = _$DeleteIncomeImpl;

  String get incomeId;

  /// Create a copy of IncomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteIncomeImplCopyWith<_$DeleteIncomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditIncomeImplCopyWith<$Res> {
  factory _$$EditIncomeImplCopyWith(
    _$EditIncomeImpl value,
    $Res Function(_$EditIncomeImpl) then,
  ) = __$$EditIncomeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({IncomeEditBody incomeEditBody, String incomeId});

  $IncomeEditBodyCopyWith<$Res> get incomeEditBody;
}

/// @nodoc
class __$$EditIncomeImplCopyWithImpl<$Res>
    extends _$IncomeEventCopyWithImpl<$Res, _$EditIncomeImpl>
    implements _$$EditIncomeImplCopyWith<$Res> {
  __$$EditIncomeImplCopyWithImpl(
    _$EditIncomeImpl _value,
    $Res Function(_$EditIncomeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IncomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? incomeEditBody = null, Object? incomeId = null}) {
    return _then(
      _$EditIncomeImpl(
        incomeEditBody:
            null == incomeEditBody
                ? _value.incomeEditBody
                : incomeEditBody // ignore: cast_nullable_to_non_nullable
                    as IncomeEditBody,
        incomeId:
            null == incomeId
                ? _value.incomeId
                : incomeId // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }

  /// Create a copy of IncomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IncomeEditBodyCopyWith<$Res> get incomeEditBody {
    return $IncomeEditBodyCopyWith<$Res>(_value.incomeEditBody, (value) {
      return _then(_value.copyWith(incomeEditBody: value));
    });
  }
}

/// @nodoc

class _$EditIncomeImpl implements EditIncome {
  const _$EditIncomeImpl({
    required this.incomeEditBody,
    required this.incomeId,
  });

  @override
  final IncomeEditBody incomeEditBody;
  @override
  final String incomeId;

  @override
  String toString() {
    return 'IncomeEvent.editIncome(incomeEditBody: $incomeEditBody, incomeId: $incomeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditIncomeImpl &&
            (identical(other.incomeEditBody, incomeEditBody) ||
                other.incomeEditBody == incomeEditBody) &&
            (identical(other.incomeId, incomeId) ||
                other.incomeId == incomeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, incomeEditBody, incomeId);

  /// Create a copy of IncomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditIncomeImplCopyWith<_$EditIncomeImpl> get copyWith =>
      __$$EditIncomeImplCopyWithImpl<_$EditIncomeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchIncomes,
    required TResult Function(Category category) categorySelected,
    required TResult Function(Timestamp date) dateSelected,
    required TResult Function(String currency) currencyChanged,
    required TResult Function(Income income) saveIncome,
    required TResult Function(String incomeId) deleteIncome,
    required TResult Function(IncomeEditBody incomeEditBody, String incomeId)
    editIncome,
  }) {
    return editIncome(incomeEditBody, incomeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchIncomes,
    TResult? Function(Category category)? categorySelected,
    TResult? Function(Timestamp date)? dateSelected,
    TResult? Function(String currency)? currencyChanged,
    TResult? Function(Income income)? saveIncome,
    TResult? Function(String incomeId)? deleteIncome,
    TResult? Function(IncomeEditBody incomeEditBody, String incomeId)?
    editIncome,
  }) {
    return editIncome?.call(incomeEditBody, incomeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchIncomes,
    TResult Function(Category category)? categorySelected,
    TResult Function(Timestamp date)? dateSelected,
    TResult Function(String currency)? currencyChanged,
    TResult Function(Income income)? saveIncome,
    TResult Function(String incomeId)? deleteIncome,
    TResult Function(IncomeEditBody incomeEditBody, String incomeId)?
    editIncome,
    required TResult orElse(),
  }) {
    if (editIncome != null) {
      return editIncome(incomeEditBody, incomeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchIncomes value) fetchIncomes,
    required TResult Function(CategorySelected value) categorySelected,
    required TResult Function(DateSelected value) dateSelected,
    required TResult Function(CurrencyChanged value) currencyChanged,
    required TResult Function(SaveIncome value) saveIncome,
    required TResult Function(DeleteIncome value) deleteIncome,
    required TResult Function(EditIncome value) editIncome,
  }) {
    return editIncome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchIncomes value)? fetchIncomes,
    TResult? Function(CategorySelected value)? categorySelected,
    TResult? Function(DateSelected value)? dateSelected,
    TResult? Function(CurrencyChanged value)? currencyChanged,
    TResult? Function(SaveIncome value)? saveIncome,
    TResult? Function(DeleteIncome value)? deleteIncome,
    TResult? Function(EditIncome value)? editIncome,
  }) {
    return editIncome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchIncomes value)? fetchIncomes,
    TResult Function(CategorySelected value)? categorySelected,
    TResult Function(DateSelected value)? dateSelected,
    TResult Function(CurrencyChanged value)? currencyChanged,
    TResult Function(SaveIncome value)? saveIncome,
    TResult Function(DeleteIncome value)? deleteIncome,
    TResult Function(EditIncome value)? editIncome,
    required TResult orElse(),
  }) {
    if (editIncome != null) {
      return editIncome(this);
    }
    return orElse();
  }
}

abstract class EditIncome implements IncomeEvent {
  const factory EditIncome({
    required final IncomeEditBody incomeEditBody,
    required final String incomeId,
  }) = _$EditIncomeImpl;

  IncomeEditBody get incomeEditBody;
  String get incomeId;

  /// Create a copy of IncomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditIncomeImplCopyWith<_$EditIncomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IncomeState {
  Status get status => throw _privateConstructorUsedError;
  Map<String, dynamic> get stats => throw _privateConstructorUsedError;
  Category? get selectedCategory => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of IncomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IncomeStateCopyWith<IncomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeStateCopyWith<$Res> {
  factory $IncomeStateCopyWith(
    IncomeState value,
    $Res Function(IncomeState) then,
  ) = _$IncomeStateCopyWithImpl<$Res, IncomeState>;
  @useResult
  $Res call({
    Status status,
    Map<String, dynamic> stats,
    Category? selectedCategory,
    String? errorMessage,
  });

  $StatusCopyWith<$Res> get status;
  $CategoryCopyWith<$Res>? get selectedCategory;
}

/// @nodoc
class _$IncomeStateCopyWithImpl<$Res, $Val extends IncomeState>
    implements $IncomeStateCopyWith<$Res> {
  _$IncomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IncomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? stats = null,
    Object? selectedCategory = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as Status,
            stats:
                null == stats
                    ? _value.stats
                    : stats // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>,
            selectedCategory:
                freezed == selectedCategory
                    ? _value.selectedCategory
                    : selectedCategory // ignore: cast_nullable_to_non_nullable
                        as Category?,
            errorMessage:
                freezed == errorMessage
                    ? _value.errorMessage
                    : errorMessage // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of IncomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of IncomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get selectedCategory {
    if (_value.selectedCategory == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.selectedCategory!, (value) {
      return _then(_value.copyWith(selectedCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IncomeStateImplCopyWith<$Res>
    implements $IncomeStateCopyWith<$Res> {
  factory _$$IncomeStateImplCopyWith(
    _$IncomeStateImpl value,
    $Res Function(_$IncomeStateImpl) then,
  ) = __$$IncomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status status,
    Map<String, dynamic> stats,
    Category? selectedCategory,
    String? errorMessage,
  });

  @override
  $StatusCopyWith<$Res> get status;
  @override
  $CategoryCopyWith<$Res>? get selectedCategory;
}

/// @nodoc
class __$$IncomeStateImplCopyWithImpl<$Res>
    extends _$IncomeStateCopyWithImpl<$Res, _$IncomeStateImpl>
    implements _$$IncomeStateImplCopyWith<$Res> {
  __$$IncomeStateImplCopyWithImpl(
    _$IncomeStateImpl _value,
    $Res Function(_$IncomeStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IncomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? stats = null,
    Object? selectedCategory = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$IncomeStateImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as Status,
        stats:
            null == stats
                ? _value._stats
                : stats // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>,
        selectedCategory:
            freezed == selectedCategory
                ? _value.selectedCategory
                : selectedCategory // ignore: cast_nullable_to_non_nullable
                    as Category?,
        errorMessage:
            freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$IncomeStateImpl implements _IncomeState {
  const _$IncomeStateImpl({
    this.status = const Status.initial(),
    final Map<String, dynamic> stats = const {},
    this.selectedCategory,
    this.errorMessage,
  }) : _stats = stats;

  @override
  @JsonKey()
  final Status status;
  final Map<String, dynamic> _stats;
  @override
  @JsonKey()
  Map<String, dynamic> get stats {
    if (_stats is EqualUnmodifiableMapView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_stats);
  }

  @override
  final Category? selectedCategory;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'IncomeState(status: $status, stats: $stats, selectedCategory: $selectedCategory, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncomeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._stats, _stats) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_stats),
    selectedCategory,
    errorMessage,
  );

  /// Create a copy of IncomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncomeStateImplCopyWith<_$IncomeStateImpl> get copyWith =>
      __$$IncomeStateImplCopyWithImpl<_$IncomeStateImpl>(this, _$identity);
}

abstract class _IncomeState implements IncomeState {
  const factory _IncomeState({
    final Status status,
    final Map<String, dynamic> stats,
    final Category? selectedCategory,
    final String? errorMessage,
  }) = _$IncomeStateImpl;

  @override
  Status get status;
  @override
  Map<String, dynamic> get stats;
  @override
  Category? get selectedCategory;
  @override
  String? get errorMessage;

  /// Create a copy of IncomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncomeStateImplCopyWith<_$IncomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
