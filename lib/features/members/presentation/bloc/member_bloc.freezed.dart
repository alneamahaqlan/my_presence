// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MemberEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MemberCreateBody memberCreateBody) saveMember,
    required TResult Function() loadMembers,
    required TResult Function(String userId, bool isActive) deleteMember,
    required TResult Function(String userId, MemberEditBody memberEditBody)
    editMember,
    required TResult Function(String userId, Evaluation evaluation)
    addEvaluation,
    required TResult Function(String userId, Research research) addResearch,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MemberCreateBody memberCreateBody)? saveMember,
    TResult? Function()? loadMembers,
    TResult? Function(String userId, bool isActive)? deleteMember,
    TResult? Function(String userId, MemberEditBody memberEditBody)? editMember,
    TResult? Function(String userId, Evaluation evaluation)? addEvaluation,
    TResult? Function(String userId, Research research)? addResearch,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MemberCreateBody memberCreateBody)? saveMember,
    TResult Function()? loadMembers,
    TResult Function(String userId, bool isActive)? deleteMember,
    TResult Function(String userId, MemberEditBody memberEditBody)? editMember,
    TResult Function(String userId, Evaluation evaluation)? addEvaluation,
    TResult Function(String userId, Research research)? addResearch,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveMember value) saveMember,
    required TResult Function(LoadMembers value) loadMembers,
    required TResult Function(DeleteMember value) deleteMember,
    required TResult Function(EditMember value) editMember,
    required TResult Function(AddEvaluation value) addEvaluation,
    required TResult Function(AddResearch value) addResearch,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveMember value)? saveMember,
    TResult? Function(LoadMembers value)? loadMembers,
    TResult? Function(DeleteMember value)? deleteMember,
    TResult? Function(EditMember value)? editMember,
    TResult? Function(AddEvaluation value)? addEvaluation,
    TResult? Function(AddResearch value)? addResearch,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveMember value)? saveMember,
    TResult Function(LoadMembers value)? loadMembers,
    TResult Function(DeleteMember value)? deleteMember,
    TResult Function(EditMember value)? editMember,
    TResult Function(AddEvaluation value)? addEvaluation,
    TResult Function(AddResearch value)? addResearch,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberEventCopyWith<$Res> {
  factory $MemberEventCopyWith(
    MemberEvent value,
    $Res Function(MemberEvent) then,
  ) = _$MemberEventCopyWithImpl<$Res, MemberEvent>;
}

/// @nodoc
class _$MemberEventCopyWithImpl<$Res, $Val extends MemberEvent>
    implements $MemberEventCopyWith<$Res> {
  _$MemberEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SaveMemberImplCopyWith<$Res> {
  factory _$$SaveMemberImplCopyWith(
    _$SaveMemberImpl value,
    $Res Function(_$SaveMemberImpl) then,
  ) = __$$SaveMemberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MemberCreateBody memberCreateBody});

  $MemberCreateBodyCopyWith<$Res> get memberCreateBody;
}

/// @nodoc
class __$$SaveMemberImplCopyWithImpl<$Res>
    extends _$MemberEventCopyWithImpl<$Res, _$SaveMemberImpl>
    implements _$$SaveMemberImplCopyWith<$Res> {
  __$$SaveMemberImplCopyWithImpl(
    _$SaveMemberImpl _value,
    $Res Function(_$SaveMemberImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? memberCreateBody = null}) {
    return _then(
      _$SaveMemberImpl(
        null == memberCreateBody
            ? _value.memberCreateBody
            : memberCreateBody // ignore: cast_nullable_to_non_nullable
                as MemberCreateBody,
      ),
    );
  }

  /// Create a copy of MemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberCreateBodyCopyWith<$Res> get memberCreateBody {
    return $MemberCreateBodyCopyWith<$Res>(_value.memberCreateBody, (value) {
      return _then(_value.copyWith(memberCreateBody: value));
    });
  }
}

/// @nodoc

class _$SaveMemberImpl implements SaveMember {
  const _$SaveMemberImpl(this.memberCreateBody);

  @override
  final MemberCreateBody memberCreateBody;

  @override
  String toString() {
    return 'MemberEvent.saveMember(memberCreateBody: $memberCreateBody)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveMemberImpl &&
            (identical(other.memberCreateBody, memberCreateBody) ||
                other.memberCreateBody == memberCreateBody));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memberCreateBody);

  /// Create a copy of MemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveMemberImplCopyWith<_$SaveMemberImpl> get copyWith =>
      __$$SaveMemberImplCopyWithImpl<_$SaveMemberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MemberCreateBody memberCreateBody) saveMember,
    required TResult Function() loadMembers,
    required TResult Function(String userId, bool isActive) deleteMember,
    required TResult Function(String userId, MemberEditBody memberEditBody)
    editMember,
    required TResult Function(String userId, Evaluation evaluation)
    addEvaluation,
    required TResult Function(String userId, Research research) addResearch,
  }) {
    return saveMember(memberCreateBody);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MemberCreateBody memberCreateBody)? saveMember,
    TResult? Function()? loadMembers,
    TResult? Function(String userId, bool isActive)? deleteMember,
    TResult? Function(String userId, MemberEditBody memberEditBody)? editMember,
    TResult? Function(String userId, Evaluation evaluation)? addEvaluation,
    TResult? Function(String userId, Research research)? addResearch,
  }) {
    return saveMember?.call(memberCreateBody);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MemberCreateBody memberCreateBody)? saveMember,
    TResult Function()? loadMembers,
    TResult Function(String userId, bool isActive)? deleteMember,
    TResult Function(String userId, MemberEditBody memberEditBody)? editMember,
    TResult Function(String userId, Evaluation evaluation)? addEvaluation,
    TResult Function(String userId, Research research)? addResearch,
    required TResult orElse(),
  }) {
    if (saveMember != null) {
      return saveMember(memberCreateBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveMember value) saveMember,
    required TResult Function(LoadMembers value) loadMembers,
    required TResult Function(DeleteMember value) deleteMember,
    required TResult Function(EditMember value) editMember,
    required TResult Function(AddEvaluation value) addEvaluation,
    required TResult Function(AddResearch value) addResearch,
  }) {
    return saveMember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveMember value)? saveMember,
    TResult? Function(LoadMembers value)? loadMembers,
    TResult? Function(DeleteMember value)? deleteMember,
    TResult? Function(EditMember value)? editMember,
    TResult? Function(AddEvaluation value)? addEvaluation,
    TResult? Function(AddResearch value)? addResearch,
  }) {
    return saveMember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveMember value)? saveMember,
    TResult Function(LoadMembers value)? loadMembers,
    TResult Function(DeleteMember value)? deleteMember,
    TResult Function(EditMember value)? editMember,
    TResult Function(AddEvaluation value)? addEvaluation,
    TResult Function(AddResearch value)? addResearch,
    required TResult orElse(),
  }) {
    if (saveMember != null) {
      return saveMember(this);
    }
    return orElse();
  }
}

abstract class SaveMember implements MemberEvent {
  const factory SaveMember(final MemberCreateBody memberCreateBody) =
      _$SaveMemberImpl;

  MemberCreateBody get memberCreateBody;

  /// Create a copy of MemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveMemberImplCopyWith<_$SaveMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMembersImplCopyWith<$Res> {
  factory _$$LoadMembersImplCopyWith(
    _$LoadMembersImpl value,
    $Res Function(_$LoadMembersImpl) then,
  ) = __$$LoadMembersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMembersImplCopyWithImpl<$Res>
    extends _$MemberEventCopyWithImpl<$Res, _$LoadMembersImpl>
    implements _$$LoadMembersImplCopyWith<$Res> {
  __$$LoadMembersImplCopyWithImpl(
    _$LoadMembersImpl _value,
    $Res Function(_$LoadMembersImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MemberEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMembersImpl implements LoadMembers {
  const _$LoadMembersImpl();

  @override
  String toString() {
    return 'MemberEvent.loadMembers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMembersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MemberCreateBody memberCreateBody) saveMember,
    required TResult Function() loadMembers,
    required TResult Function(String userId, bool isActive) deleteMember,
    required TResult Function(String userId, MemberEditBody memberEditBody)
    editMember,
    required TResult Function(String userId, Evaluation evaluation)
    addEvaluation,
    required TResult Function(String userId, Research research) addResearch,
  }) {
    return loadMembers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MemberCreateBody memberCreateBody)? saveMember,
    TResult? Function()? loadMembers,
    TResult? Function(String userId, bool isActive)? deleteMember,
    TResult? Function(String userId, MemberEditBody memberEditBody)? editMember,
    TResult? Function(String userId, Evaluation evaluation)? addEvaluation,
    TResult? Function(String userId, Research research)? addResearch,
  }) {
    return loadMembers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MemberCreateBody memberCreateBody)? saveMember,
    TResult Function()? loadMembers,
    TResult Function(String userId, bool isActive)? deleteMember,
    TResult Function(String userId, MemberEditBody memberEditBody)? editMember,
    TResult Function(String userId, Evaluation evaluation)? addEvaluation,
    TResult Function(String userId, Research research)? addResearch,
    required TResult orElse(),
  }) {
    if (loadMembers != null) {
      return loadMembers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveMember value) saveMember,
    required TResult Function(LoadMembers value) loadMembers,
    required TResult Function(DeleteMember value) deleteMember,
    required TResult Function(EditMember value) editMember,
    required TResult Function(AddEvaluation value) addEvaluation,
    required TResult Function(AddResearch value) addResearch,
  }) {
    return loadMembers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveMember value)? saveMember,
    TResult? Function(LoadMembers value)? loadMembers,
    TResult? Function(DeleteMember value)? deleteMember,
    TResult? Function(EditMember value)? editMember,
    TResult? Function(AddEvaluation value)? addEvaluation,
    TResult? Function(AddResearch value)? addResearch,
  }) {
    return loadMembers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveMember value)? saveMember,
    TResult Function(LoadMembers value)? loadMembers,
    TResult Function(DeleteMember value)? deleteMember,
    TResult Function(EditMember value)? editMember,
    TResult Function(AddEvaluation value)? addEvaluation,
    TResult Function(AddResearch value)? addResearch,
    required TResult orElse(),
  }) {
    if (loadMembers != null) {
      return loadMembers(this);
    }
    return orElse();
  }
}

abstract class LoadMembers implements MemberEvent {
  const factory LoadMembers() = _$LoadMembersImpl;
}

/// @nodoc
abstract class _$$DeleteMemberImplCopyWith<$Res> {
  factory _$$DeleteMemberImplCopyWith(
    _$DeleteMemberImpl value,
    $Res Function(_$DeleteMemberImpl) then,
  ) = __$$DeleteMemberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, bool isActive});
}

/// @nodoc
class __$$DeleteMemberImplCopyWithImpl<$Res>
    extends _$MemberEventCopyWithImpl<$Res, _$DeleteMemberImpl>
    implements _$$DeleteMemberImplCopyWith<$Res> {
  __$$DeleteMemberImplCopyWithImpl(
    _$DeleteMemberImpl _value,
    $Res Function(_$DeleteMemberImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null, Object? isActive = null}) {
    return _then(
      _$DeleteMemberImpl(
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        isActive:
            null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$DeleteMemberImpl implements DeleteMember {
  const _$DeleteMemberImpl({required this.userId, required this.isActive});

  @override
  final String userId;
  @override
  final bool isActive;

  @override
  String toString() {
    return 'MemberEvent.deleteMember(userId: $userId, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMemberImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, isActive);

  /// Create a copy of MemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMemberImplCopyWith<_$DeleteMemberImpl> get copyWith =>
      __$$DeleteMemberImplCopyWithImpl<_$DeleteMemberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MemberCreateBody memberCreateBody) saveMember,
    required TResult Function() loadMembers,
    required TResult Function(String userId, bool isActive) deleteMember,
    required TResult Function(String userId, MemberEditBody memberEditBody)
    editMember,
    required TResult Function(String userId, Evaluation evaluation)
    addEvaluation,
    required TResult Function(String userId, Research research) addResearch,
  }) {
    return deleteMember(userId, isActive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MemberCreateBody memberCreateBody)? saveMember,
    TResult? Function()? loadMembers,
    TResult? Function(String userId, bool isActive)? deleteMember,
    TResult? Function(String userId, MemberEditBody memberEditBody)? editMember,
    TResult? Function(String userId, Evaluation evaluation)? addEvaluation,
    TResult? Function(String userId, Research research)? addResearch,
  }) {
    return deleteMember?.call(userId, isActive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MemberCreateBody memberCreateBody)? saveMember,
    TResult Function()? loadMembers,
    TResult Function(String userId, bool isActive)? deleteMember,
    TResult Function(String userId, MemberEditBody memberEditBody)? editMember,
    TResult Function(String userId, Evaluation evaluation)? addEvaluation,
    TResult Function(String userId, Research research)? addResearch,
    required TResult orElse(),
  }) {
    if (deleteMember != null) {
      return deleteMember(userId, isActive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveMember value) saveMember,
    required TResult Function(LoadMembers value) loadMembers,
    required TResult Function(DeleteMember value) deleteMember,
    required TResult Function(EditMember value) editMember,
    required TResult Function(AddEvaluation value) addEvaluation,
    required TResult Function(AddResearch value) addResearch,
  }) {
    return deleteMember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveMember value)? saveMember,
    TResult? Function(LoadMembers value)? loadMembers,
    TResult? Function(DeleteMember value)? deleteMember,
    TResult? Function(EditMember value)? editMember,
    TResult? Function(AddEvaluation value)? addEvaluation,
    TResult? Function(AddResearch value)? addResearch,
  }) {
    return deleteMember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveMember value)? saveMember,
    TResult Function(LoadMembers value)? loadMembers,
    TResult Function(DeleteMember value)? deleteMember,
    TResult Function(EditMember value)? editMember,
    TResult Function(AddEvaluation value)? addEvaluation,
    TResult Function(AddResearch value)? addResearch,
    required TResult orElse(),
  }) {
    if (deleteMember != null) {
      return deleteMember(this);
    }
    return orElse();
  }
}

abstract class DeleteMember implements MemberEvent {
  const factory DeleteMember({
    required final String userId,
    required final bool isActive,
  }) = _$DeleteMemberImpl;

  String get userId;
  bool get isActive;

  /// Create a copy of MemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteMemberImplCopyWith<_$DeleteMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditMemberImplCopyWith<$Res> {
  factory _$$EditMemberImplCopyWith(
    _$EditMemberImpl value,
    $Res Function(_$EditMemberImpl) then,
  ) = __$$EditMemberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, MemberEditBody memberEditBody});

  $MemberEditBodyCopyWith<$Res> get memberEditBody;
}

/// @nodoc
class __$$EditMemberImplCopyWithImpl<$Res>
    extends _$MemberEventCopyWithImpl<$Res, _$EditMemberImpl>
    implements _$$EditMemberImplCopyWith<$Res> {
  __$$EditMemberImplCopyWithImpl(
    _$EditMemberImpl _value,
    $Res Function(_$EditMemberImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null, Object? memberEditBody = null}) {
    return _then(
      _$EditMemberImpl(
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        memberEditBody:
            null == memberEditBody
                ? _value.memberEditBody
                : memberEditBody // ignore: cast_nullable_to_non_nullable
                    as MemberEditBody,
      ),
    );
  }

  /// Create a copy of MemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberEditBodyCopyWith<$Res> get memberEditBody {
    return $MemberEditBodyCopyWith<$Res>(_value.memberEditBody, (value) {
      return _then(_value.copyWith(memberEditBody: value));
    });
  }
}

/// @nodoc

class _$EditMemberImpl implements EditMember {
  const _$EditMemberImpl({required this.userId, required this.memberEditBody});

  @override
  final String userId;
  @override
  final MemberEditBody memberEditBody;

  @override
  String toString() {
    return 'MemberEvent.editMember(userId: $userId, memberEditBody: $memberEditBody)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditMemberImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.memberEditBody, memberEditBody) ||
                other.memberEditBody == memberEditBody));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, memberEditBody);

  /// Create a copy of MemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditMemberImplCopyWith<_$EditMemberImpl> get copyWith =>
      __$$EditMemberImplCopyWithImpl<_$EditMemberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MemberCreateBody memberCreateBody) saveMember,
    required TResult Function() loadMembers,
    required TResult Function(String userId, bool isActive) deleteMember,
    required TResult Function(String userId, MemberEditBody memberEditBody)
    editMember,
    required TResult Function(String userId, Evaluation evaluation)
    addEvaluation,
    required TResult Function(String userId, Research research) addResearch,
  }) {
    return editMember(userId, memberEditBody);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MemberCreateBody memberCreateBody)? saveMember,
    TResult? Function()? loadMembers,
    TResult? Function(String userId, bool isActive)? deleteMember,
    TResult? Function(String userId, MemberEditBody memberEditBody)? editMember,
    TResult? Function(String userId, Evaluation evaluation)? addEvaluation,
    TResult? Function(String userId, Research research)? addResearch,
  }) {
    return editMember?.call(userId, memberEditBody);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MemberCreateBody memberCreateBody)? saveMember,
    TResult Function()? loadMembers,
    TResult Function(String userId, bool isActive)? deleteMember,
    TResult Function(String userId, MemberEditBody memberEditBody)? editMember,
    TResult Function(String userId, Evaluation evaluation)? addEvaluation,
    TResult Function(String userId, Research research)? addResearch,
    required TResult orElse(),
  }) {
    if (editMember != null) {
      return editMember(userId, memberEditBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveMember value) saveMember,
    required TResult Function(LoadMembers value) loadMembers,
    required TResult Function(DeleteMember value) deleteMember,
    required TResult Function(EditMember value) editMember,
    required TResult Function(AddEvaluation value) addEvaluation,
    required TResult Function(AddResearch value) addResearch,
  }) {
    return editMember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveMember value)? saveMember,
    TResult? Function(LoadMembers value)? loadMembers,
    TResult? Function(DeleteMember value)? deleteMember,
    TResult? Function(EditMember value)? editMember,
    TResult? Function(AddEvaluation value)? addEvaluation,
    TResult? Function(AddResearch value)? addResearch,
  }) {
    return editMember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveMember value)? saveMember,
    TResult Function(LoadMembers value)? loadMembers,
    TResult Function(DeleteMember value)? deleteMember,
    TResult Function(EditMember value)? editMember,
    TResult Function(AddEvaluation value)? addEvaluation,
    TResult Function(AddResearch value)? addResearch,
    required TResult orElse(),
  }) {
    if (editMember != null) {
      return editMember(this);
    }
    return orElse();
  }
}

abstract class EditMember implements MemberEvent {
  const factory EditMember({
    required final String userId,
    required final MemberEditBody memberEditBody,
  }) = _$EditMemberImpl;

  String get userId;
  MemberEditBody get memberEditBody;

  /// Create a copy of MemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditMemberImplCopyWith<_$EditMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddEvaluationImplCopyWith<$Res> {
  factory _$$AddEvaluationImplCopyWith(
    _$AddEvaluationImpl value,
    $Res Function(_$AddEvaluationImpl) then,
  ) = __$$AddEvaluationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, Evaluation evaluation});

  $EvaluationCopyWith<$Res> get evaluation;
}

/// @nodoc
class __$$AddEvaluationImplCopyWithImpl<$Res>
    extends _$MemberEventCopyWithImpl<$Res, _$AddEvaluationImpl>
    implements _$$AddEvaluationImplCopyWith<$Res> {
  __$$AddEvaluationImplCopyWithImpl(
    _$AddEvaluationImpl _value,
    $Res Function(_$AddEvaluationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null, Object? evaluation = null}) {
    return _then(
      _$AddEvaluationImpl(
        null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                as String,
        null == evaluation
            ? _value.evaluation
            : evaluation // ignore: cast_nullable_to_non_nullable
                as Evaluation,
      ),
    );
  }

  /// Create a copy of MemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EvaluationCopyWith<$Res> get evaluation {
    return $EvaluationCopyWith<$Res>(_value.evaluation, (value) {
      return _then(_value.copyWith(evaluation: value));
    });
  }
}

/// @nodoc

class _$AddEvaluationImpl implements AddEvaluation {
  const _$AddEvaluationImpl(this.userId, this.evaluation);

  @override
  final String userId;
  @override
  final Evaluation evaluation;

  @override
  String toString() {
    return 'MemberEvent.addEvaluation(userId: $userId, evaluation: $evaluation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEvaluationImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.evaluation, evaluation) ||
                other.evaluation == evaluation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, evaluation);

  /// Create a copy of MemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEvaluationImplCopyWith<_$AddEvaluationImpl> get copyWith =>
      __$$AddEvaluationImplCopyWithImpl<_$AddEvaluationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MemberCreateBody memberCreateBody) saveMember,
    required TResult Function() loadMembers,
    required TResult Function(String userId, bool isActive) deleteMember,
    required TResult Function(String userId, MemberEditBody memberEditBody)
    editMember,
    required TResult Function(String userId, Evaluation evaluation)
    addEvaluation,
    required TResult Function(String userId, Research research) addResearch,
  }) {
    return addEvaluation(userId, evaluation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MemberCreateBody memberCreateBody)? saveMember,
    TResult? Function()? loadMembers,
    TResult? Function(String userId, bool isActive)? deleteMember,
    TResult? Function(String userId, MemberEditBody memberEditBody)? editMember,
    TResult? Function(String userId, Evaluation evaluation)? addEvaluation,
    TResult? Function(String userId, Research research)? addResearch,
  }) {
    return addEvaluation?.call(userId, evaluation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MemberCreateBody memberCreateBody)? saveMember,
    TResult Function()? loadMembers,
    TResult Function(String userId, bool isActive)? deleteMember,
    TResult Function(String userId, MemberEditBody memberEditBody)? editMember,
    TResult Function(String userId, Evaluation evaluation)? addEvaluation,
    TResult Function(String userId, Research research)? addResearch,
    required TResult orElse(),
  }) {
    if (addEvaluation != null) {
      return addEvaluation(userId, evaluation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveMember value) saveMember,
    required TResult Function(LoadMembers value) loadMembers,
    required TResult Function(DeleteMember value) deleteMember,
    required TResult Function(EditMember value) editMember,
    required TResult Function(AddEvaluation value) addEvaluation,
    required TResult Function(AddResearch value) addResearch,
  }) {
    return addEvaluation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveMember value)? saveMember,
    TResult? Function(LoadMembers value)? loadMembers,
    TResult? Function(DeleteMember value)? deleteMember,
    TResult? Function(EditMember value)? editMember,
    TResult? Function(AddEvaluation value)? addEvaluation,
    TResult? Function(AddResearch value)? addResearch,
  }) {
    return addEvaluation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveMember value)? saveMember,
    TResult Function(LoadMembers value)? loadMembers,
    TResult Function(DeleteMember value)? deleteMember,
    TResult Function(EditMember value)? editMember,
    TResult Function(AddEvaluation value)? addEvaluation,
    TResult Function(AddResearch value)? addResearch,
    required TResult orElse(),
  }) {
    if (addEvaluation != null) {
      return addEvaluation(this);
    }
    return orElse();
  }
}

abstract class AddEvaluation implements MemberEvent {
  const factory AddEvaluation(
    final String userId,
    final Evaluation evaluation,
  ) = _$AddEvaluationImpl;

  String get userId;
  Evaluation get evaluation;

  /// Create a copy of MemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddEvaluationImplCopyWith<_$AddEvaluationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddResearchImplCopyWith<$Res> {
  factory _$$AddResearchImplCopyWith(
    _$AddResearchImpl value,
    $Res Function(_$AddResearchImpl) then,
  ) = __$$AddResearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, Research research});

  $ResearchCopyWith<$Res> get research;
}

/// @nodoc
class __$$AddResearchImplCopyWithImpl<$Res>
    extends _$MemberEventCopyWithImpl<$Res, _$AddResearchImpl>
    implements _$$AddResearchImplCopyWith<$Res> {
  __$$AddResearchImplCopyWithImpl(
    _$AddResearchImpl _value,
    $Res Function(_$AddResearchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null, Object? research = null}) {
    return _then(
      _$AddResearchImpl(
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        research:
            null == research
                ? _value.research
                : research // ignore: cast_nullable_to_non_nullable
                    as Research,
      ),
    );
  }

  /// Create a copy of MemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResearchCopyWith<$Res> get research {
    return $ResearchCopyWith<$Res>(_value.research, (value) {
      return _then(_value.copyWith(research: value));
    });
  }
}

/// @nodoc

class _$AddResearchImpl implements AddResearch {
  const _$AddResearchImpl({required this.userId, required this.research});

  @override
  final String userId;
  @override
  final Research research;

  @override
  String toString() {
    return 'MemberEvent.addResearch(userId: $userId, research: $research)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddResearchImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.research, research) ||
                other.research == research));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, research);

  /// Create a copy of MemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddResearchImplCopyWith<_$AddResearchImpl> get copyWith =>
      __$$AddResearchImplCopyWithImpl<_$AddResearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MemberCreateBody memberCreateBody) saveMember,
    required TResult Function() loadMembers,
    required TResult Function(String userId, bool isActive) deleteMember,
    required TResult Function(String userId, MemberEditBody memberEditBody)
    editMember,
    required TResult Function(String userId, Evaluation evaluation)
    addEvaluation,
    required TResult Function(String userId, Research research) addResearch,
  }) {
    return addResearch(userId, research);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MemberCreateBody memberCreateBody)? saveMember,
    TResult? Function()? loadMembers,
    TResult? Function(String userId, bool isActive)? deleteMember,
    TResult? Function(String userId, MemberEditBody memberEditBody)? editMember,
    TResult? Function(String userId, Evaluation evaluation)? addEvaluation,
    TResult? Function(String userId, Research research)? addResearch,
  }) {
    return addResearch?.call(userId, research);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MemberCreateBody memberCreateBody)? saveMember,
    TResult Function()? loadMembers,
    TResult Function(String userId, bool isActive)? deleteMember,
    TResult Function(String userId, MemberEditBody memberEditBody)? editMember,
    TResult Function(String userId, Evaluation evaluation)? addEvaluation,
    TResult Function(String userId, Research research)? addResearch,
    required TResult orElse(),
  }) {
    if (addResearch != null) {
      return addResearch(userId, research);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveMember value) saveMember,
    required TResult Function(LoadMembers value) loadMembers,
    required TResult Function(DeleteMember value) deleteMember,
    required TResult Function(EditMember value) editMember,
    required TResult Function(AddEvaluation value) addEvaluation,
    required TResult Function(AddResearch value) addResearch,
  }) {
    return addResearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveMember value)? saveMember,
    TResult? Function(LoadMembers value)? loadMembers,
    TResult? Function(DeleteMember value)? deleteMember,
    TResult? Function(EditMember value)? editMember,
    TResult? Function(AddEvaluation value)? addEvaluation,
    TResult? Function(AddResearch value)? addResearch,
  }) {
    return addResearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveMember value)? saveMember,
    TResult Function(LoadMembers value)? loadMembers,
    TResult Function(DeleteMember value)? deleteMember,
    TResult Function(EditMember value)? editMember,
    TResult Function(AddEvaluation value)? addEvaluation,
    TResult Function(AddResearch value)? addResearch,
    required TResult orElse(),
  }) {
    if (addResearch != null) {
      return addResearch(this);
    }
    return orElse();
  }
}

abstract class AddResearch implements MemberEvent {
  const factory AddResearch({
    required final String userId,
    required final Research research,
  }) = _$AddResearchImpl;

  String get userId;
  Research get research;

  /// Create a copy of MemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddResearchImplCopyWith<_$AddResearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MemberState {
  Status get status => throw _privateConstructorUsedError;
  Status get createStatus => throw _privateConstructorUsedError;
  Status get editStatus => throw _privateConstructorUsedError;
  List<UserModel> get members => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of MemberState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberStateCopyWith<MemberState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberStateCopyWith<$Res> {
  factory $MemberStateCopyWith(
    MemberState value,
    $Res Function(MemberState) then,
  ) = _$MemberStateCopyWithImpl<$Res, MemberState>;
  @useResult
  $Res call({
    Status status,
    Status createStatus,
    Status editStatus,
    List<UserModel> members,
    String? errorMessage,
  });

  $StatusCopyWith<$Res> get status;
  $StatusCopyWith<$Res> get createStatus;
  $StatusCopyWith<$Res> get editStatus;
}

/// @nodoc
class _$MemberStateCopyWithImpl<$Res, $Val extends MemberState>
    implements $MemberStateCopyWith<$Res> {
  _$MemberStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? createStatus = null,
    Object? editStatus = null,
    Object? members = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as Status,
            createStatus:
                null == createStatus
                    ? _value.createStatus
                    : createStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            editStatus:
                null == editStatus
                    ? _value.editStatus
                    : editStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            members:
                null == members
                    ? _value.members
                    : members // ignore: cast_nullable_to_non_nullable
                        as List<UserModel>,
            errorMessage:
                freezed == errorMessage
                    ? _value.errorMessage
                    : errorMessage // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of MemberState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of MemberState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get createStatus {
    return $StatusCopyWith<$Res>(_value.createStatus, (value) {
      return _then(_value.copyWith(createStatus: value) as $Val);
    });
  }

  /// Create a copy of MemberState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get editStatus {
    return $StatusCopyWith<$Res>(_value.editStatus, (value) {
      return _then(_value.copyWith(editStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemberStateImplCopyWith<$Res>
    implements $MemberStateCopyWith<$Res> {
  factory _$$MemberStateImplCopyWith(
    _$MemberStateImpl value,
    $Res Function(_$MemberStateImpl) then,
  ) = __$$MemberStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status status,
    Status createStatus,
    Status editStatus,
    List<UserModel> members,
    String? errorMessage,
  });

  @override
  $StatusCopyWith<$Res> get status;
  @override
  $StatusCopyWith<$Res> get createStatus;
  @override
  $StatusCopyWith<$Res> get editStatus;
}

/// @nodoc
class __$$MemberStateImplCopyWithImpl<$Res>
    extends _$MemberStateCopyWithImpl<$Res, _$MemberStateImpl>
    implements _$$MemberStateImplCopyWith<$Res> {
  __$$MemberStateImplCopyWithImpl(
    _$MemberStateImpl _value,
    $Res Function(_$MemberStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MemberState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? createStatus = null,
    Object? editStatus = null,
    Object? members = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$MemberStateImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as Status,
        createStatus:
            null == createStatus
                ? _value.createStatus
                : createStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        editStatus:
            null == editStatus
                ? _value.editStatus
                : editStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        members:
            null == members
                ? _value._members
                : members // ignore: cast_nullable_to_non_nullable
                    as List<UserModel>,
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

class _$MemberStateImpl implements _MemberState {
  const _$MemberStateImpl({
    this.status = const Status.initial(),
    this.createStatus = const Status.initial(),
    this.editStatus = const Status.initial(),
    final List<UserModel> members = const [],
    this.errorMessage,
  }) : _members = members;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Status createStatus;
  @override
  @JsonKey()
  final Status editStatus;
  final List<UserModel> _members;
  @override
  @JsonKey()
  List<UserModel> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'MemberState(status: $status, createStatus: $createStatus, editStatus: $editStatus, members: $members, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createStatus, createStatus) ||
                other.createStatus == createStatus) &&
            (identical(other.editStatus, editStatus) ||
                other.editStatus == editStatus) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    createStatus,
    editStatus,
    const DeepCollectionEquality().hash(_members),
    errorMessage,
  );

  /// Create a copy of MemberState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberStateImplCopyWith<_$MemberStateImpl> get copyWith =>
      __$$MemberStateImplCopyWithImpl<_$MemberStateImpl>(this, _$identity);
}

abstract class _MemberState implements MemberState {
  const factory _MemberState({
    final Status status,
    final Status createStatus,
    final Status editStatus,
    final List<UserModel> members,
    final String? errorMessage,
  }) = _$MemberStateImpl;

  @override
  Status get status;
  @override
  Status get createStatus;
  @override
  Status get editStatus;
  @override
  List<UserModel> get members;
  @override
  String? get errorMessage;

  /// Create a copy of MemberState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberStateImplCopyWith<_$MemberStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
