// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: 'id')
  dynamic get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;
  ActivityStatus get activityStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'isActive')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'specialization')
  String? get specialization => throw _privateConstructorUsedError;
  @JsonKey(name: 'academic_rank')
  String? get academicRank => throw _privateConstructorUsedError;
  @JsonKey(name: 'fcmToken')
  String? get fcmToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'subjects')
  List<Subject> get subjects => throw _privateConstructorUsedError;
  @JsonKey(name: 'evaluations')
  List<Evaluation> get evaluations => throw _privateConstructorUsedError;
  @JsonKey(name: 'researches')
  List<Research> get researches => throw _privateConstructorUsedError;
  @JsonKey(name: 'notifications')
  List<NotificationModel> get notifications =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'attendances')
  List<AttendanceModel> get attendances => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'createdAt')
  Timestamp? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  Timestamp? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') dynamic id,
    String email,
    String name,
    Role role,
    ActivityStatus activityStatus,
    @JsonKey(name: 'isActive') bool isActive,
    @JsonKey(name: 'specialization') String? specialization,
    @JsonKey(name: 'academic_rank') String? academicRank,
    @JsonKey(name: 'fcmToken') String? fcmToken,
    @JsonKey(name: 'subjects') List<Subject> subjects,
    @JsonKey(name: 'evaluations') List<Evaluation> evaluations,
    @JsonKey(name: 'researches') List<Research> researches,
    @JsonKey(name: 'notifications') List<NotificationModel> notifications,
    @JsonKey(name: 'attendances') List<AttendanceModel> attendances,
    @TimestampConverter() @JsonKey(name: 'createdAt') Timestamp? createdAt,
    @TimestampConverter() @JsonKey(name: 'updatedAt') Timestamp? updatedAt,
  });
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = null,
    Object? name = null,
    Object? role = null,
    Object? activityStatus = null,
    Object? isActive = null,
    Object? specialization = freezed,
    Object? academicRank = freezed,
    Object? fcmToken = freezed,
    Object? subjects = null,
    Object? evaluations = null,
    Object? researches = null,
    Object? notifications = null,
    Object? attendances = null,
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
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            role:
                null == role
                    ? _value.role
                    : role // ignore: cast_nullable_to_non_nullable
                        as Role,
            activityStatus:
                null == activityStatus
                    ? _value.activityStatus
                    : activityStatus // ignore: cast_nullable_to_non_nullable
                        as ActivityStatus,
            isActive:
                null == isActive
                    ? _value.isActive
                    : isActive // ignore: cast_nullable_to_non_nullable
                        as bool,
            specialization:
                freezed == specialization
                    ? _value.specialization
                    : specialization // ignore: cast_nullable_to_non_nullable
                        as String?,
            academicRank:
                freezed == academicRank
                    ? _value.academicRank
                    : academicRank // ignore: cast_nullable_to_non_nullable
                        as String?,
            fcmToken:
                freezed == fcmToken
                    ? _value.fcmToken
                    : fcmToken // ignore: cast_nullable_to_non_nullable
                        as String?,
            subjects:
                null == subjects
                    ? _value.subjects
                    : subjects // ignore: cast_nullable_to_non_nullable
                        as List<Subject>,
            evaluations:
                null == evaluations
                    ? _value.evaluations
                    : evaluations // ignore: cast_nullable_to_non_nullable
                        as List<Evaluation>,
            researches:
                null == researches
                    ? _value.researches
                    : researches // ignore: cast_nullable_to_non_nullable
                        as List<Research>,
            notifications:
                null == notifications
                    ? _value.notifications
                    : notifications // ignore: cast_nullable_to_non_nullable
                        as List<NotificationModel>,
            attendances:
                null == attendances
                    ? _value.attendances
                    : attendances // ignore: cast_nullable_to_non_nullable
                        as List<AttendanceModel>,
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
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
    _$UserModelImpl value,
    $Res Function(_$UserModelImpl) then,
  ) = __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') dynamic id,
    String email,
    String name,
    Role role,
    ActivityStatus activityStatus,
    @JsonKey(name: 'isActive') bool isActive,
    @JsonKey(name: 'specialization') String? specialization,
    @JsonKey(name: 'academic_rank') String? academicRank,
    @JsonKey(name: 'fcmToken') String? fcmToken,
    @JsonKey(name: 'subjects') List<Subject> subjects,
    @JsonKey(name: 'evaluations') List<Evaluation> evaluations,
    @JsonKey(name: 'researches') List<Research> researches,
    @JsonKey(name: 'notifications') List<NotificationModel> notifications,
    @JsonKey(name: 'attendances') List<AttendanceModel> attendances,
    @TimestampConverter() @JsonKey(name: 'createdAt') Timestamp? createdAt,
    @TimestampConverter() @JsonKey(name: 'updatedAt') Timestamp? updatedAt,
  });
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
    _$UserModelImpl _value,
    $Res Function(_$UserModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = null,
    Object? name = null,
    Object? role = null,
    Object? activityStatus = null,
    Object? isActive = null,
    Object? specialization = freezed,
    Object? academicRank = freezed,
    Object? fcmToken = freezed,
    Object? subjects = null,
    Object? evaluations = null,
    Object? researches = null,
    Object? notifications = null,
    Object? attendances = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$UserModelImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as dynamic,
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        role:
            null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                    as Role,
        activityStatus:
            null == activityStatus
                ? _value.activityStatus
                : activityStatus // ignore: cast_nullable_to_non_nullable
                    as ActivityStatus,
        isActive:
            null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                    as bool,
        specialization:
            freezed == specialization
                ? _value.specialization
                : specialization // ignore: cast_nullable_to_non_nullable
                    as String?,
        academicRank:
            freezed == academicRank
                ? _value.academicRank
                : academicRank // ignore: cast_nullable_to_non_nullable
                    as String?,
        fcmToken:
            freezed == fcmToken
                ? _value.fcmToken
                : fcmToken // ignore: cast_nullable_to_non_nullable
                    as String?,
        subjects:
            null == subjects
                ? _value._subjects
                : subjects // ignore: cast_nullable_to_non_nullable
                    as List<Subject>,
        evaluations:
            null == evaluations
                ? _value._evaluations
                : evaluations // ignore: cast_nullable_to_non_nullable
                    as List<Evaluation>,
        researches:
            null == researches
                ? _value._researches
                : researches // ignore: cast_nullable_to_non_nullable
                    as List<Research>,
        notifications:
            null == notifications
                ? _value._notifications
                : notifications // ignore: cast_nullable_to_non_nullable
                    as List<NotificationModel>,
        attendances:
            null == attendances
                ? _value._attendances
                : attendances // ignore: cast_nullable_to_non_nullable
                    as List<AttendanceModel>,
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
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl({
    @JsonKey(name: 'id') this.id,
    required this.email,
    required this.name,
    required this.role,
    required this.activityStatus,
    @JsonKey(name: 'isActive') this.isActive = true,
    @JsonKey(name: 'specialization') this.specialization,
    @JsonKey(name: 'academic_rank') this.academicRank,
    @JsonKey(name: 'fcmToken') this.fcmToken,
    @JsonKey(name: 'subjects') final List<Subject> subjects = const [],
    @JsonKey(name: 'evaluations') final List<Evaluation> evaluations = const [],
    @JsonKey(name: 'researches') final List<Research> researches = const [],
    @JsonKey(name: 'notifications')
    final List<NotificationModel> notifications = const [],
    @JsonKey(name: 'attendances')
    final List<AttendanceModel> attendances = const [],
    @TimestampConverter() @JsonKey(name: 'createdAt') this.createdAt,
    @TimestampConverter() @JsonKey(name: 'updatedAt') this.updatedAt,
  }) : _subjects = subjects,
       _evaluations = evaluations,
       _researches = researches,
       _notifications = notifications,
       _attendances = attendances;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final dynamic id;
  @override
  final String email;
  @override
  final String name;
  @override
  final Role role;
  @override
  final ActivityStatus activityStatus;
  @override
  @JsonKey(name: 'isActive')
  final bool isActive;
  @override
  @JsonKey(name: 'specialization')
  final String? specialization;
  @override
  @JsonKey(name: 'academic_rank')
  final String? academicRank;
  @override
  @JsonKey(name: 'fcmToken')
  final String? fcmToken;
  final List<Subject> _subjects;
  @override
  @JsonKey(name: 'subjects')
  List<Subject> get subjects {
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subjects);
  }

  final List<Evaluation> _evaluations;
  @override
  @JsonKey(name: 'evaluations')
  List<Evaluation> get evaluations {
    if (_evaluations is EqualUnmodifiableListView) return _evaluations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evaluations);
  }

  final List<Research> _researches;
  @override
  @JsonKey(name: 'researches')
  List<Research> get researches {
    if (_researches is EqualUnmodifiableListView) return _researches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_researches);
  }

  final List<NotificationModel> _notifications;
  @override
  @JsonKey(name: 'notifications')
  List<NotificationModel> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  final List<AttendanceModel> _attendances;
  @override
  @JsonKey(name: 'attendances')
  List<AttendanceModel> get attendances {
    if (_attendances is EqualUnmodifiableListView) return _attendances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendances);
  }

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
    return 'UserModel(id: $id, email: $email, name: $name, role: $role, activityStatus: $activityStatus, isActive: $isActive, specialization: $specialization, academicRank: $academicRank, fcmToken: $fcmToken, subjects: $subjects, evaluations: $evaluations, researches: $researches, notifications: $notifications, attendances: $attendances, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.activityStatus, activityStatus) ||
                other.activityStatus == activityStatus) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.specialization, specialization) ||
                other.specialization == specialization) &&
            (identical(other.academicRank, academicRank) ||
                other.academicRank == academicRank) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects) &&
            const DeepCollectionEquality().equals(
              other._evaluations,
              _evaluations,
            ) &&
            const DeepCollectionEquality().equals(
              other._researches,
              _researches,
            ) &&
            const DeepCollectionEquality().equals(
              other._notifications,
              _notifications,
            ) &&
            const DeepCollectionEquality().equals(
              other._attendances,
              _attendances,
            ) &&
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
    email,
    name,
    role,
    activityStatus,
    isActive,
    specialization,
    academicRank,
    fcmToken,
    const DeepCollectionEquality().hash(_subjects),
    const DeepCollectionEquality().hash(_evaluations),
    const DeepCollectionEquality().hash(_researches),
    const DeepCollectionEquality().hash(_notifications),
    const DeepCollectionEquality().hash(_attendances),
    createdAt,
    updatedAt,
  );

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel({
    @JsonKey(name: 'id') final dynamic id,
    required final String email,
    required final String name,
    required final Role role,
    required final ActivityStatus activityStatus,
    @JsonKey(name: 'isActive') final bool isActive,
    @JsonKey(name: 'specialization') final String? specialization,
    @JsonKey(name: 'academic_rank') final String? academicRank,
    @JsonKey(name: 'fcmToken') final String? fcmToken,
    @JsonKey(name: 'subjects') final List<Subject> subjects,
    @JsonKey(name: 'evaluations') final List<Evaluation> evaluations,
    @JsonKey(name: 'researches') final List<Research> researches,
    @JsonKey(name: 'notifications') final List<NotificationModel> notifications,
    @JsonKey(name: 'attendances') final List<AttendanceModel> attendances,
    @TimestampConverter()
    @JsonKey(name: 'createdAt')
    final Timestamp? createdAt,
    @TimestampConverter()
    @JsonKey(name: 'updatedAt')
    final Timestamp? updatedAt,
  }) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  dynamic get id;
  @override
  String get email;
  @override
  String get name;
  @override
  Role get role;
  @override
  ActivityStatus get activityStatus;
  @override
  @JsonKey(name: 'isActive')
  bool get isActive;
  @override
  @JsonKey(name: 'specialization')
  String? get specialization;
  @override
  @JsonKey(name: 'academic_rank')
  String? get academicRank;
  @override
  @JsonKey(name: 'fcmToken')
  String? get fcmToken;
  @override
  @JsonKey(name: 'subjects')
  List<Subject> get subjects;
  @override
  @JsonKey(name: 'evaluations')
  List<Evaluation> get evaluations;
  @override
  @JsonKey(name: 'researches')
  List<Research> get researches;
  @override
  @JsonKey(name: 'notifications')
  List<NotificationModel> get notifications;
  @override
  @JsonKey(name: 'attendances')
  List<AttendanceModel> get attendances;
  @override
  @TimestampConverter()
  @JsonKey(name: 'createdAt')
  Timestamp? get createdAt;
  @override
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  Timestamp? get updatedAt;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
