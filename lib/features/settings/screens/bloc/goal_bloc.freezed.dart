// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goal_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GoalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String note) noteChanged,
    required TResult Function(String category) categoryChanged,
    required TResult Function(double amount) currentAmountChanged,
    required TResult Function(double amount) targetAmountChanged,
    required TResult Function(String currency) currencyChanged,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function() saveGoal,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String note)? noteChanged,
    TResult? Function(String category)? categoryChanged,
    TResult? Function(double amount)? currentAmountChanged,
    TResult? Function(double amount)? targetAmountChanged,
    TResult? Function(String currency)? currencyChanged,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function()? saveGoal,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String note)? noteChanged,
    TResult Function(String category)? categoryChanged,
    TResult Function(double amount)? currentAmountChanged,
    TResult Function(double amount)? targetAmountChanged,
    TResult Function(String currency)? currencyChanged,
    TResult Function(DateTime date)? dateSelected,
    TResult Function()? saveGoal,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_NoteChanged value) noteChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_CurrentAmountChanged value) currentAmountChanged,
    required TResult Function(_TargetAmountChanged value) targetAmountChanged,
    required TResult Function(_CurrencyChanged value) currencyChanged,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_SaveGoal value) saveGoal,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_NoteChanged value)? noteChanged,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_CurrentAmountChanged value)? currentAmountChanged,
    TResult? Function(_TargetAmountChanged value)? targetAmountChanged,
    TResult? Function(_CurrencyChanged value)? currencyChanged,
    TResult? Function(_DateSelected value)? dateSelected,
    TResult? Function(_SaveGoal value)? saveGoal,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_NoteChanged value)? noteChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_CurrentAmountChanged value)? currentAmountChanged,
    TResult Function(_TargetAmountChanged value)? targetAmountChanged,
    TResult Function(_CurrencyChanged value)? currencyChanged,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_SaveGoal value)? saveGoal,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalEventCopyWith<$Res> {
  factory $GoalEventCopyWith(GoalEvent value, $Res Function(GoalEvent) then) =
      _$GoalEventCopyWithImpl<$Res, GoalEvent>;
}

/// @nodoc
class _$GoalEventCopyWithImpl<$Res, $Val extends GoalEvent>
    implements $GoalEventCopyWith<$Res> {
  _$GoalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res> {
  factory _$$NameChangedImplCopyWith(
    _$NameChangedImpl value,
    $Res Function(_$NameChangedImpl) then,
  ) = __$$NameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res>
    extends _$GoalEventCopyWithImpl<$Res, _$NameChangedImpl>
    implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(
    _$NameChangedImpl _value,
    $Res Function(_$NameChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GoalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null}) {
    return _then(
      _$NameChangedImpl(
        null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$NameChangedImpl implements _NameChanged {
  const _$NameChangedImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'GoalEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of GoalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String note) noteChanged,
    required TResult Function(String category) categoryChanged,
    required TResult Function(double amount) currentAmountChanged,
    required TResult Function(double amount) targetAmountChanged,
    required TResult Function(String currency) currencyChanged,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function() saveGoal,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String note)? noteChanged,
    TResult? Function(String category)? categoryChanged,
    TResult? Function(double amount)? currentAmountChanged,
    TResult? Function(double amount)? targetAmountChanged,
    TResult? Function(String currency)? currencyChanged,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function()? saveGoal,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String note)? noteChanged,
    TResult Function(String category)? categoryChanged,
    TResult Function(double amount)? currentAmountChanged,
    TResult Function(double amount)? targetAmountChanged,
    TResult Function(String currency)? currencyChanged,
    TResult Function(DateTime date)? dateSelected,
    TResult Function()? saveGoal,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_NoteChanged value) noteChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_CurrentAmountChanged value) currentAmountChanged,
    required TResult Function(_TargetAmountChanged value) targetAmountChanged,
    required TResult Function(_CurrencyChanged value) currencyChanged,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_SaveGoal value) saveGoal,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_NoteChanged value)? noteChanged,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_CurrentAmountChanged value)? currentAmountChanged,
    TResult? Function(_TargetAmountChanged value)? targetAmountChanged,
    TResult? Function(_CurrencyChanged value)? currencyChanged,
    TResult? Function(_DateSelected value)? dateSelected,
    TResult? Function(_SaveGoal value)? saveGoal,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_NoteChanged value)? noteChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_CurrentAmountChanged value)? currentAmountChanged,
    TResult Function(_TargetAmountChanged value)? targetAmountChanged,
    TResult Function(_CurrencyChanged value)? currencyChanged,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_SaveGoal value)? saveGoal,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements GoalEvent {
  const factory _NameChanged(final String name) = _$NameChangedImpl;

  String get name;

  /// Create a copy of GoalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteChangedImplCopyWith<$Res> {
  factory _$$NoteChangedImplCopyWith(
    _$NoteChangedImpl value,
    $Res Function(_$NoteChangedImpl) then,
  ) = __$$NoteChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String note});
}

/// @nodoc
class __$$NoteChangedImplCopyWithImpl<$Res>
    extends _$GoalEventCopyWithImpl<$Res, _$NoteChangedImpl>
    implements _$$NoteChangedImplCopyWith<$Res> {
  __$$NoteChangedImplCopyWithImpl(
    _$NoteChangedImpl _value,
    $Res Function(_$NoteChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GoalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? note = null}) {
    return _then(
      _$NoteChangedImpl(
        null == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$NoteChangedImpl implements _NoteChanged {
  const _$NoteChangedImpl(this.note);

  @override
  final String note;

  @override
  String toString() {
    return 'GoalEvent.noteChanged(note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteChangedImpl &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  /// Create a copy of GoalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteChangedImplCopyWith<_$NoteChangedImpl> get copyWith =>
      __$$NoteChangedImplCopyWithImpl<_$NoteChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String note) noteChanged,
    required TResult Function(String category) categoryChanged,
    required TResult Function(double amount) currentAmountChanged,
    required TResult Function(double amount) targetAmountChanged,
    required TResult Function(String currency) currencyChanged,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function() saveGoal,
  }) {
    return noteChanged(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String note)? noteChanged,
    TResult? Function(String category)? categoryChanged,
    TResult? Function(double amount)? currentAmountChanged,
    TResult? Function(double amount)? targetAmountChanged,
    TResult? Function(String currency)? currencyChanged,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function()? saveGoal,
  }) {
    return noteChanged?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String note)? noteChanged,
    TResult Function(String category)? categoryChanged,
    TResult Function(double amount)? currentAmountChanged,
    TResult Function(double amount)? targetAmountChanged,
    TResult Function(String currency)? currencyChanged,
    TResult Function(DateTime date)? dateSelected,
    TResult Function()? saveGoal,
    required TResult orElse(),
  }) {
    if (noteChanged != null) {
      return noteChanged(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_NoteChanged value) noteChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_CurrentAmountChanged value) currentAmountChanged,
    required TResult Function(_TargetAmountChanged value) targetAmountChanged,
    required TResult Function(_CurrencyChanged value) currencyChanged,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_SaveGoal value) saveGoal,
  }) {
    return noteChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_NoteChanged value)? noteChanged,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_CurrentAmountChanged value)? currentAmountChanged,
    TResult? Function(_TargetAmountChanged value)? targetAmountChanged,
    TResult? Function(_CurrencyChanged value)? currencyChanged,
    TResult? Function(_DateSelected value)? dateSelected,
    TResult? Function(_SaveGoal value)? saveGoal,
  }) {
    return noteChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_NoteChanged value)? noteChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_CurrentAmountChanged value)? currentAmountChanged,
    TResult Function(_TargetAmountChanged value)? targetAmountChanged,
    TResult Function(_CurrencyChanged value)? currencyChanged,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_SaveGoal value)? saveGoal,
    required TResult orElse(),
  }) {
    if (noteChanged != null) {
      return noteChanged(this);
    }
    return orElse();
  }
}

abstract class _NoteChanged implements GoalEvent {
  const factory _NoteChanged(final String note) = _$NoteChangedImpl;

  String get note;

  /// Create a copy of GoalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteChangedImplCopyWith<_$NoteChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryChangedImplCopyWith<$Res> {
  factory _$$CategoryChangedImplCopyWith(
    _$CategoryChangedImpl value,
    $Res Function(_$CategoryChangedImpl) then,
  ) = __$$CategoryChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$CategoryChangedImplCopyWithImpl<$Res>
    extends _$GoalEventCopyWithImpl<$Res, _$CategoryChangedImpl>
    implements _$$CategoryChangedImplCopyWith<$Res> {
  __$$CategoryChangedImplCopyWithImpl(
    _$CategoryChangedImpl _value,
    $Res Function(_$CategoryChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GoalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? category = null}) {
    return _then(
      _$CategoryChangedImpl(
        null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$CategoryChangedImpl implements _CategoryChanged {
  const _$CategoryChangedImpl(this.category);

  @override
  final String category;

  @override
  String toString() {
    return 'GoalEvent.categoryChanged(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryChangedImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of GoalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryChangedImplCopyWith<_$CategoryChangedImpl> get copyWith =>
      __$$CategoryChangedImplCopyWithImpl<_$CategoryChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String note) noteChanged,
    required TResult Function(String category) categoryChanged,
    required TResult Function(double amount) currentAmountChanged,
    required TResult Function(double amount) targetAmountChanged,
    required TResult Function(String currency) currencyChanged,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function() saveGoal,
  }) {
    return categoryChanged(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String note)? noteChanged,
    TResult? Function(String category)? categoryChanged,
    TResult? Function(double amount)? currentAmountChanged,
    TResult? Function(double amount)? targetAmountChanged,
    TResult? Function(String currency)? currencyChanged,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function()? saveGoal,
  }) {
    return categoryChanged?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String note)? noteChanged,
    TResult Function(String category)? categoryChanged,
    TResult Function(double amount)? currentAmountChanged,
    TResult Function(double amount)? targetAmountChanged,
    TResult Function(String currency)? currencyChanged,
    TResult Function(DateTime date)? dateSelected,
    TResult Function()? saveGoal,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_NoteChanged value) noteChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_CurrentAmountChanged value) currentAmountChanged,
    required TResult Function(_TargetAmountChanged value) targetAmountChanged,
    required TResult Function(_CurrencyChanged value) currencyChanged,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_SaveGoal value) saveGoal,
  }) {
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_NoteChanged value)? noteChanged,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_CurrentAmountChanged value)? currentAmountChanged,
    TResult? Function(_TargetAmountChanged value)? targetAmountChanged,
    TResult? Function(_CurrencyChanged value)? currencyChanged,
    TResult? Function(_DateSelected value)? dateSelected,
    TResult? Function(_SaveGoal value)? saveGoal,
  }) {
    return categoryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_NoteChanged value)? noteChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_CurrentAmountChanged value)? currentAmountChanged,
    TResult Function(_TargetAmountChanged value)? targetAmountChanged,
    TResult Function(_CurrencyChanged value)? currencyChanged,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_SaveGoal value)? saveGoal,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(this);
    }
    return orElse();
  }
}

abstract class _CategoryChanged implements GoalEvent {
  const factory _CategoryChanged(final String category) = _$CategoryChangedImpl;

  String get category;

  /// Create a copy of GoalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryChangedImplCopyWith<_$CategoryChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrentAmountChangedImplCopyWith<$Res> {
  factory _$$CurrentAmountChangedImplCopyWith(
    _$CurrentAmountChangedImpl value,
    $Res Function(_$CurrentAmountChangedImpl) then,
  ) = __$$CurrentAmountChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double amount});
}

/// @nodoc
class __$$CurrentAmountChangedImplCopyWithImpl<$Res>
    extends _$GoalEventCopyWithImpl<$Res, _$CurrentAmountChangedImpl>
    implements _$$CurrentAmountChangedImplCopyWith<$Res> {
  __$$CurrentAmountChangedImplCopyWithImpl(
    _$CurrentAmountChangedImpl _value,
    $Res Function(_$CurrentAmountChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GoalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amount = null}) {
    return _then(
      _$CurrentAmountChangedImpl(
        null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                as double,
      ),
    );
  }
}

/// @nodoc

class _$CurrentAmountChangedImpl implements _CurrentAmountChanged {
  const _$CurrentAmountChangedImpl(this.amount);

  @override
  final double amount;

  @override
  String toString() {
    return 'GoalEvent.currentAmountChanged(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentAmountChangedImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  /// Create a copy of GoalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentAmountChangedImplCopyWith<_$CurrentAmountChangedImpl>
  get copyWith =>
      __$$CurrentAmountChangedImplCopyWithImpl<_$CurrentAmountChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String note) noteChanged,
    required TResult Function(String category) categoryChanged,
    required TResult Function(double amount) currentAmountChanged,
    required TResult Function(double amount) targetAmountChanged,
    required TResult Function(String currency) currencyChanged,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function() saveGoal,
  }) {
    return currentAmountChanged(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String note)? noteChanged,
    TResult? Function(String category)? categoryChanged,
    TResult? Function(double amount)? currentAmountChanged,
    TResult? Function(double amount)? targetAmountChanged,
    TResult? Function(String currency)? currencyChanged,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function()? saveGoal,
  }) {
    return currentAmountChanged?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String note)? noteChanged,
    TResult Function(String category)? categoryChanged,
    TResult Function(double amount)? currentAmountChanged,
    TResult Function(double amount)? targetAmountChanged,
    TResult Function(String currency)? currencyChanged,
    TResult Function(DateTime date)? dateSelected,
    TResult Function()? saveGoal,
    required TResult orElse(),
  }) {
    if (currentAmountChanged != null) {
      return currentAmountChanged(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_NoteChanged value) noteChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_CurrentAmountChanged value) currentAmountChanged,
    required TResult Function(_TargetAmountChanged value) targetAmountChanged,
    required TResult Function(_CurrencyChanged value) currencyChanged,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_SaveGoal value) saveGoal,
  }) {
    return currentAmountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_NoteChanged value)? noteChanged,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_CurrentAmountChanged value)? currentAmountChanged,
    TResult? Function(_TargetAmountChanged value)? targetAmountChanged,
    TResult? Function(_CurrencyChanged value)? currencyChanged,
    TResult? Function(_DateSelected value)? dateSelected,
    TResult? Function(_SaveGoal value)? saveGoal,
  }) {
    return currentAmountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_NoteChanged value)? noteChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_CurrentAmountChanged value)? currentAmountChanged,
    TResult Function(_TargetAmountChanged value)? targetAmountChanged,
    TResult Function(_CurrencyChanged value)? currencyChanged,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_SaveGoal value)? saveGoal,
    required TResult orElse(),
  }) {
    if (currentAmountChanged != null) {
      return currentAmountChanged(this);
    }
    return orElse();
  }
}

abstract class _CurrentAmountChanged implements GoalEvent {
  const factory _CurrentAmountChanged(final double amount) =
      _$CurrentAmountChangedImpl;

  double get amount;

  /// Create a copy of GoalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentAmountChangedImplCopyWith<_$CurrentAmountChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TargetAmountChangedImplCopyWith<$Res> {
  factory _$$TargetAmountChangedImplCopyWith(
    _$TargetAmountChangedImpl value,
    $Res Function(_$TargetAmountChangedImpl) then,
  ) = __$$TargetAmountChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double amount});
}

/// @nodoc
class __$$TargetAmountChangedImplCopyWithImpl<$Res>
    extends _$GoalEventCopyWithImpl<$Res, _$TargetAmountChangedImpl>
    implements _$$TargetAmountChangedImplCopyWith<$Res> {
  __$$TargetAmountChangedImplCopyWithImpl(
    _$TargetAmountChangedImpl _value,
    $Res Function(_$TargetAmountChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GoalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amount = null}) {
    return _then(
      _$TargetAmountChangedImpl(
        null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                as double,
      ),
    );
  }
}

/// @nodoc

class _$TargetAmountChangedImpl implements _TargetAmountChanged {
  const _$TargetAmountChangedImpl(this.amount);

  @override
  final double amount;

  @override
  String toString() {
    return 'GoalEvent.targetAmountChanged(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TargetAmountChangedImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  /// Create a copy of GoalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TargetAmountChangedImplCopyWith<_$TargetAmountChangedImpl> get copyWith =>
      __$$TargetAmountChangedImplCopyWithImpl<_$TargetAmountChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String note) noteChanged,
    required TResult Function(String category) categoryChanged,
    required TResult Function(double amount) currentAmountChanged,
    required TResult Function(double amount) targetAmountChanged,
    required TResult Function(String currency) currencyChanged,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function() saveGoal,
  }) {
    return targetAmountChanged(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String note)? noteChanged,
    TResult? Function(String category)? categoryChanged,
    TResult? Function(double amount)? currentAmountChanged,
    TResult? Function(double amount)? targetAmountChanged,
    TResult? Function(String currency)? currencyChanged,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function()? saveGoal,
  }) {
    return targetAmountChanged?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String note)? noteChanged,
    TResult Function(String category)? categoryChanged,
    TResult Function(double amount)? currentAmountChanged,
    TResult Function(double amount)? targetAmountChanged,
    TResult Function(String currency)? currencyChanged,
    TResult Function(DateTime date)? dateSelected,
    TResult Function()? saveGoal,
    required TResult orElse(),
  }) {
    if (targetAmountChanged != null) {
      return targetAmountChanged(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_NoteChanged value) noteChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_CurrentAmountChanged value) currentAmountChanged,
    required TResult Function(_TargetAmountChanged value) targetAmountChanged,
    required TResult Function(_CurrencyChanged value) currencyChanged,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_SaveGoal value) saveGoal,
  }) {
    return targetAmountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_NoteChanged value)? noteChanged,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_CurrentAmountChanged value)? currentAmountChanged,
    TResult? Function(_TargetAmountChanged value)? targetAmountChanged,
    TResult? Function(_CurrencyChanged value)? currencyChanged,
    TResult? Function(_DateSelected value)? dateSelected,
    TResult? Function(_SaveGoal value)? saveGoal,
  }) {
    return targetAmountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_NoteChanged value)? noteChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_CurrentAmountChanged value)? currentAmountChanged,
    TResult Function(_TargetAmountChanged value)? targetAmountChanged,
    TResult Function(_CurrencyChanged value)? currencyChanged,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_SaveGoal value)? saveGoal,
    required TResult orElse(),
  }) {
    if (targetAmountChanged != null) {
      return targetAmountChanged(this);
    }
    return orElse();
  }
}

abstract class _TargetAmountChanged implements GoalEvent {
  const factory _TargetAmountChanged(final double amount) =
      _$TargetAmountChangedImpl;

  double get amount;

  /// Create a copy of GoalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TargetAmountChangedImplCopyWith<_$TargetAmountChangedImpl> get copyWith =>
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
    extends _$GoalEventCopyWithImpl<$Res, _$CurrencyChangedImpl>
    implements _$$CurrencyChangedImplCopyWith<$Res> {
  __$$CurrencyChangedImplCopyWithImpl(
    _$CurrencyChangedImpl _value,
    $Res Function(_$CurrencyChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GoalEvent
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

class _$CurrencyChangedImpl implements _CurrencyChanged {
  const _$CurrencyChangedImpl(this.currency);

  @override
  final String currency;

  @override
  String toString() {
    return 'GoalEvent.currencyChanged(currency: $currency)';
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

  /// Create a copy of GoalEvent
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
    required TResult Function(String name) nameChanged,
    required TResult Function(String note) noteChanged,
    required TResult Function(String category) categoryChanged,
    required TResult Function(double amount) currentAmountChanged,
    required TResult Function(double amount) targetAmountChanged,
    required TResult Function(String currency) currencyChanged,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function() saveGoal,
  }) {
    return currencyChanged(currency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String note)? noteChanged,
    TResult? Function(String category)? categoryChanged,
    TResult? Function(double amount)? currentAmountChanged,
    TResult? Function(double amount)? targetAmountChanged,
    TResult? Function(String currency)? currencyChanged,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function()? saveGoal,
  }) {
    return currencyChanged?.call(currency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String note)? noteChanged,
    TResult Function(String category)? categoryChanged,
    TResult Function(double amount)? currentAmountChanged,
    TResult Function(double amount)? targetAmountChanged,
    TResult Function(String currency)? currencyChanged,
    TResult Function(DateTime date)? dateSelected,
    TResult Function()? saveGoal,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_NoteChanged value) noteChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_CurrentAmountChanged value) currentAmountChanged,
    required TResult Function(_TargetAmountChanged value) targetAmountChanged,
    required TResult Function(_CurrencyChanged value) currencyChanged,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_SaveGoal value) saveGoal,
  }) {
    return currencyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_NoteChanged value)? noteChanged,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_CurrentAmountChanged value)? currentAmountChanged,
    TResult? Function(_TargetAmountChanged value)? targetAmountChanged,
    TResult? Function(_CurrencyChanged value)? currencyChanged,
    TResult? Function(_DateSelected value)? dateSelected,
    TResult? Function(_SaveGoal value)? saveGoal,
  }) {
    return currencyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_NoteChanged value)? noteChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_CurrentAmountChanged value)? currentAmountChanged,
    TResult Function(_TargetAmountChanged value)? targetAmountChanged,
    TResult Function(_CurrencyChanged value)? currencyChanged,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_SaveGoal value)? saveGoal,
    required TResult orElse(),
  }) {
    if (currencyChanged != null) {
      return currencyChanged(this);
    }
    return orElse();
  }
}

abstract class _CurrencyChanged implements GoalEvent {
  const factory _CurrencyChanged(final String currency) = _$CurrencyChangedImpl;

  String get currency;

  /// Create a copy of GoalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrencyChangedImplCopyWith<_$CurrencyChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateSelectedImplCopyWith<$Res> {
  factory _$$DateSelectedImplCopyWith(
    _$DateSelectedImpl value,
    $Res Function(_$DateSelectedImpl) then,
  ) = __$$DateSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$DateSelectedImplCopyWithImpl<$Res>
    extends _$GoalEventCopyWithImpl<$Res, _$DateSelectedImpl>
    implements _$$DateSelectedImplCopyWith<$Res> {
  __$$DateSelectedImplCopyWithImpl(
    _$DateSelectedImpl _value,
    $Res Function(_$DateSelectedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GoalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = null}) {
    return _then(
      _$DateSelectedImpl(
        null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                as DateTime,
      ),
    );
  }
}

/// @nodoc

class _$DateSelectedImpl implements _DateSelected {
  const _$DateSelectedImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'GoalEvent.dateSelected(date: $date)';
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

  /// Create a copy of GoalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateSelectedImplCopyWith<_$DateSelectedImpl> get copyWith =>
      __$$DateSelectedImplCopyWithImpl<_$DateSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String note) noteChanged,
    required TResult Function(String category) categoryChanged,
    required TResult Function(double amount) currentAmountChanged,
    required TResult Function(double amount) targetAmountChanged,
    required TResult Function(String currency) currencyChanged,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function() saveGoal,
  }) {
    return dateSelected(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String note)? noteChanged,
    TResult? Function(String category)? categoryChanged,
    TResult? Function(double amount)? currentAmountChanged,
    TResult? Function(double amount)? targetAmountChanged,
    TResult? Function(String currency)? currencyChanged,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function()? saveGoal,
  }) {
    return dateSelected?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String note)? noteChanged,
    TResult Function(String category)? categoryChanged,
    TResult Function(double amount)? currentAmountChanged,
    TResult Function(double amount)? targetAmountChanged,
    TResult Function(String currency)? currencyChanged,
    TResult Function(DateTime date)? dateSelected,
    TResult Function()? saveGoal,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_NoteChanged value) noteChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_CurrentAmountChanged value) currentAmountChanged,
    required TResult Function(_TargetAmountChanged value) targetAmountChanged,
    required TResult Function(_CurrencyChanged value) currencyChanged,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_SaveGoal value) saveGoal,
  }) {
    return dateSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_NoteChanged value)? noteChanged,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_CurrentAmountChanged value)? currentAmountChanged,
    TResult? Function(_TargetAmountChanged value)? targetAmountChanged,
    TResult? Function(_CurrencyChanged value)? currencyChanged,
    TResult? Function(_DateSelected value)? dateSelected,
    TResult? Function(_SaveGoal value)? saveGoal,
  }) {
    return dateSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_NoteChanged value)? noteChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_CurrentAmountChanged value)? currentAmountChanged,
    TResult Function(_TargetAmountChanged value)? targetAmountChanged,
    TResult Function(_CurrencyChanged value)? currencyChanged,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_SaveGoal value)? saveGoal,
    required TResult orElse(),
  }) {
    if (dateSelected != null) {
      return dateSelected(this);
    }
    return orElse();
  }
}

abstract class _DateSelected implements GoalEvent {
  const factory _DateSelected(final DateTime date) = _$DateSelectedImpl;

  DateTime get date;

  /// Create a copy of GoalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateSelectedImplCopyWith<_$DateSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveGoalImplCopyWith<$Res> {
  factory _$$SaveGoalImplCopyWith(
    _$SaveGoalImpl value,
    $Res Function(_$SaveGoalImpl) then,
  ) = __$$SaveGoalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveGoalImplCopyWithImpl<$Res>
    extends _$GoalEventCopyWithImpl<$Res, _$SaveGoalImpl>
    implements _$$SaveGoalImplCopyWith<$Res> {
  __$$SaveGoalImplCopyWithImpl(
    _$SaveGoalImpl _value,
    $Res Function(_$SaveGoalImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GoalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SaveGoalImpl implements _SaveGoal {
  const _$SaveGoalImpl();

  @override
  String toString() {
    return 'GoalEvent.saveGoal()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveGoalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String note) noteChanged,
    required TResult Function(String category) categoryChanged,
    required TResult Function(double amount) currentAmountChanged,
    required TResult Function(double amount) targetAmountChanged,
    required TResult Function(String currency) currencyChanged,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function() saveGoal,
  }) {
    return saveGoal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String note)? noteChanged,
    TResult? Function(String category)? categoryChanged,
    TResult? Function(double amount)? currentAmountChanged,
    TResult? Function(double amount)? targetAmountChanged,
    TResult? Function(String currency)? currencyChanged,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function()? saveGoal,
  }) {
    return saveGoal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String note)? noteChanged,
    TResult Function(String category)? categoryChanged,
    TResult Function(double amount)? currentAmountChanged,
    TResult Function(double amount)? targetAmountChanged,
    TResult Function(String currency)? currencyChanged,
    TResult Function(DateTime date)? dateSelected,
    TResult Function()? saveGoal,
    required TResult orElse(),
  }) {
    if (saveGoal != null) {
      return saveGoal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_NoteChanged value) noteChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_CurrentAmountChanged value) currentAmountChanged,
    required TResult Function(_TargetAmountChanged value) targetAmountChanged,
    required TResult Function(_CurrencyChanged value) currencyChanged,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_SaveGoal value) saveGoal,
  }) {
    return saveGoal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_NoteChanged value)? noteChanged,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_CurrentAmountChanged value)? currentAmountChanged,
    TResult? Function(_TargetAmountChanged value)? targetAmountChanged,
    TResult? Function(_CurrencyChanged value)? currencyChanged,
    TResult? Function(_DateSelected value)? dateSelected,
    TResult? Function(_SaveGoal value)? saveGoal,
  }) {
    return saveGoal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_NoteChanged value)? noteChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_CurrentAmountChanged value)? currentAmountChanged,
    TResult Function(_TargetAmountChanged value)? targetAmountChanged,
    TResult Function(_CurrencyChanged value)? currencyChanged,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_SaveGoal value)? saveGoal,
    required TResult orElse(),
  }) {
    if (saveGoal != null) {
      return saveGoal(this);
    }
    return orElse();
  }
}

abstract class _SaveGoal implements GoalEvent {
  const factory _SaveGoal() = _$SaveGoalImpl;
}

/// @nodoc
mixin _$GoalState {
  String get name => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  double get currentAmount => throw _privateConstructorUsedError;
  double get targetAmount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  DateTime get dueDate => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;

  /// Create a copy of GoalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoalStateCopyWith<GoalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalStateCopyWith<$Res> {
  factory $GoalStateCopyWith(GoalState value, $Res Function(GoalState) then) =
      _$GoalStateCopyWithImpl<$Res, GoalState>;
  @useResult
  $Res call({
    String name,
    String note,
    String category,
    double currentAmount,
    double targetAmount,
    String currency,
    DateTime dueDate,
    bool isSaving,
  });
}

/// @nodoc
class _$GoalStateCopyWithImpl<$Res, $Val extends GoalState>
    implements $GoalStateCopyWith<$Res> {
  _$GoalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? note = null,
    Object? category = null,
    Object? currentAmount = null,
    Object? targetAmount = null,
    Object? currency = null,
    Object? dueDate = null,
    Object? isSaving = null,
  }) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            note:
                null == note
                    ? _value.note
                    : note // ignore: cast_nullable_to_non_nullable
                        as String,
            category:
                null == category
                    ? _value.category
                    : category // ignore: cast_nullable_to_non_nullable
                        as String,
            currentAmount:
                null == currentAmount
                    ? _value.currentAmount
                    : currentAmount // ignore: cast_nullable_to_non_nullable
                        as double,
            targetAmount:
                null == targetAmount
                    ? _value.targetAmount
                    : targetAmount // ignore: cast_nullable_to_non_nullable
                        as double,
            currency:
                null == currency
                    ? _value.currency
                    : currency // ignore: cast_nullable_to_non_nullable
                        as String,
            dueDate:
                null == dueDate
                    ? _value.dueDate
                    : dueDate // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            isSaving:
                null == isSaving
                    ? _value.isSaving
                    : isSaving // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GoalStateImplCopyWith<$Res>
    implements $GoalStateCopyWith<$Res> {
  factory _$$GoalStateImplCopyWith(
    _$GoalStateImpl value,
    $Res Function(_$GoalStateImpl) then,
  ) = __$$GoalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    String note,
    String category,
    double currentAmount,
    double targetAmount,
    String currency,
    DateTime dueDate,
    bool isSaving,
  });
}

/// @nodoc
class __$$GoalStateImplCopyWithImpl<$Res>
    extends _$GoalStateCopyWithImpl<$Res, _$GoalStateImpl>
    implements _$$GoalStateImplCopyWith<$Res> {
  __$$GoalStateImplCopyWithImpl(
    _$GoalStateImpl _value,
    $Res Function(_$GoalStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GoalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? note = null,
    Object? category = null,
    Object? currentAmount = null,
    Object? targetAmount = null,
    Object? currency = null,
    Object? dueDate = null,
    Object? isSaving = null,
  }) {
    return _then(
      _$GoalStateImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        note:
            null == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                    as String,
        category:
            null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                    as String,
        currentAmount:
            null == currentAmount
                ? _value.currentAmount
                : currentAmount // ignore: cast_nullable_to_non_nullable
                    as double,
        targetAmount:
            null == targetAmount
                ? _value.targetAmount
                : targetAmount // ignore: cast_nullable_to_non_nullable
                    as double,
        currency:
            null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                    as String,
        dueDate:
            null == dueDate
                ? _value.dueDate
                : dueDate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        isSaving:
            null == isSaving
                ? _value.isSaving
                : isSaving // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$GoalStateImpl implements _GoalState {
  const _$GoalStateImpl({
    required this.name,
    required this.note,
    required this.category,
    required this.currentAmount,
    required this.targetAmount,
    required this.currency,
    required this.dueDate,
    required this.isSaving,
  });

  @override
  final String name;
  @override
  final String note;
  @override
  final String category;
  @override
  final double currentAmount;
  @override
  final double targetAmount;
  @override
  final String currency;
  @override
  final DateTime dueDate;
  @override
  final bool isSaving;

  @override
  String toString() {
    return 'GoalState(name: $name, note: $note, category: $category, currentAmount: $currentAmount, targetAmount: $targetAmount, currency: $currency, dueDate: $dueDate, isSaving: $isSaving)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.currentAmount, currentAmount) ||
                other.currentAmount == currentAmount) &&
            (identical(other.targetAmount, targetAmount) ||
                other.targetAmount == targetAmount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    note,
    category,
    currentAmount,
    targetAmount,
    currency,
    dueDate,
    isSaving,
  );

  /// Create a copy of GoalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalStateImplCopyWith<_$GoalStateImpl> get copyWith =>
      __$$GoalStateImplCopyWithImpl<_$GoalStateImpl>(this, _$identity);
}

abstract class _GoalState implements GoalState {
  const factory _GoalState({
    required final String name,
    required final String note,
    required final String category,
    required final double currentAmount,
    required final double targetAmount,
    required final String currency,
    required final DateTime dueDate,
    required final bool isSaving,
  }) = _$GoalStateImpl;

  @override
  String get name;
  @override
  String get note;
  @override
  String get category;
  @override
  double get currentAmount;
  @override
  double get targetAmount;
  @override
  String get currency;
  @override
  DateTime get dueDate;
  @override
  bool get isSaving;

  /// Create a copy of GoalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoalStateImplCopyWith<_$GoalStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
