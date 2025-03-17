// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'root_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RootEvent {
  int get index => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, BuildContext context) itemTapped,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index, BuildContext context)? itemTapped,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, BuildContext context)? itemTapped,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemTapped value) itemTapped,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemTapped value)? itemTapped,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemTapped value)? itemTapped,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of RootEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RootEventCopyWith<RootEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RootEventCopyWith<$Res> {
  factory $RootEventCopyWith(RootEvent value, $Res Function(RootEvent) then) =
      _$RootEventCopyWithImpl<$Res, RootEvent>;
  @useResult
  $Res call({int index, BuildContext context});
}

/// @nodoc
class _$RootEventCopyWithImpl<$Res, $Val extends RootEvent>
    implements $RootEventCopyWith<$Res> {
  _$RootEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RootEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null, Object? context = null}) {
    return _then(
      _value.copyWith(
            index:
                null == index
                    ? _value.index
                    : index // ignore: cast_nullable_to_non_nullable
                        as int,
            context:
                null == context
                    ? _value.context
                    : context // ignore: cast_nullable_to_non_nullable
                        as BuildContext,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ItemTappedImplCopyWith<$Res>
    implements $RootEventCopyWith<$Res> {
  factory _$$ItemTappedImplCopyWith(
    _$ItemTappedImpl value,
    $Res Function(_$ItemTappedImpl) then,
  ) = __$$ItemTappedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, BuildContext context});
}

/// @nodoc
class __$$ItemTappedImplCopyWithImpl<$Res>
    extends _$RootEventCopyWithImpl<$Res, _$ItemTappedImpl>
    implements _$$ItemTappedImplCopyWith<$Res> {
  __$$ItemTappedImplCopyWithImpl(
    _$ItemTappedImpl _value,
    $Res Function(_$ItemTappedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RootEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null, Object? context = null}) {
    return _then(
      _$ItemTappedImpl(
        index:
            null == index
                ? _value.index
                : index // ignore: cast_nullable_to_non_nullable
                    as int,
        context:
            null == context
                ? _value.context
                : context // ignore: cast_nullable_to_non_nullable
                    as BuildContext,
      ),
    );
  }
}

/// @nodoc

class _$ItemTappedImpl implements _ItemTapped {
  const _$ItemTappedImpl({required this.index, required this.context});

  @override
  final int index;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'RootEvent.itemTapped(index: $index, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemTappedImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, context);

  /// Create a copy of RootEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemTappedImplCopyWith<_$ItemTappedImpl> get copyWith =>
      __$$ItemTappedImplCopyWithImpl<_$ItemTappedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, BuildContext context) itemTapped,
  }) {
    return itemTapped(index, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index, BuildContext context)? itemTapped,
  }) {
    return itemTapped?.call(index, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, BuildContext context)? itemTapped,
    required TResult orElse(),
  }) {
    if (itemTapped != null) {
      return itemTapped(index, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemTapped value) itemTapped,
  }) {
    return itemTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemTapped value)? itemTapped,
  }) {
    return itemTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemTapped value)? itemTapped,
    required TResult orElse(),
  }) {
    if (itemTapped != null) {
      return itemTapped(this);
    }
    return orElse();
  }
}

abstract class _ItemTapped implements RootEvent {
  const factory _ItemTapped({
    required final int index,
    required final BuildContext context,
  }) = _$ItemTappedImpl;

  @override
  int get index;
  @override
  BuildContext get context;

  /// Create a copy of RootEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemTappedImplCopyWith<_$ItemTappedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RootState {
  int get currentIndex => throw _privateConstructorUsedError;

  /// Create a copy of RootState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RootStateCopyWith<RootState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RootStateCopyWith<$Res> {
  factory $RootStateCopyWith(RootState value, $Res Function(RootState) then) =
      _$RootStateCopyWithImpl<$Res, RootState>;
  @useResult
  $Res call({int currentIndex});
}

/// @nodoc
class _$RootStateCopyWithImpl<$Res, $Val extends RootState>
    implements $RootStateCopyWith<$Res> {
  _$RootStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RootState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? currentIndex = null}) {
    return _then(
      _value.copyWith(
            currentIndex:
                null == currentIndex
                    ? _value.currentIndex
                    : currentIndex // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RootStateImplCopyWith<$Res>
    implements $RootStateCopyWith<$Res> {
  factory _$$RootStateImplCopyWith(
    _$RootStateImpl value,
    $Res Function(_$RootStateImpl) then,
  ) = __$$RootStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentIndex});
}

/// @nodoc
class __$$RootStateImplCopyWithImpl<$Res>
    extends _$RootStateCopyWithImpl<$Res, _$RootStateImpl>
    implements _$$RootStateImplCopyWith<$Res> {
  __$$RootStateImplCopyWithImpl(
    _$RootStateImpl _value,
    $Res Function(_$RootStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RootState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? currentIndex = null}) {
    return _then(
      _$RootStateImpl(
        currentIndex:
            null == currentIndex
                ? _value.currentIndex
                : currentIndex // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$RootStateImpl implements _RootState {
  const _$RootStateImpl({this.currentIndex = 0});

  @override
  @JsonKey()
  final int currentIndex;

  @override
  String toString() {
    return 'RootState(currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RootStateImpl &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentIndex);

  /// Create a copy of RootState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RootStateImplCopyWith<_$RootStateImpl> get copyWith =>
      __$$RootStateImplCopyWithImpl<_$RootStateImpl>(this, _$identity);
}

abstract class _RootState implements RootState {
  const factory _RootState({final int currentIndex}) = _$RootStateImpl;

  @override
  int get currentIndex;

  /// Create a copy of RootState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RootStateImplCopyWith<_$RootStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
