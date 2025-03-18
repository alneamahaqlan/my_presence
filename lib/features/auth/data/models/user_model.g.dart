// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'],
      email: json['email'] as String,
      name: json['name'] as String,
      role: Role.fromJson(json['role'] as String),
      activityStatus: ActivityStatus.fromJson(json['activityStatus'] as String),
      isActive: json['isActive'] as bool? ?? true,
      specialization: json['specialization'] as String?,
      academicRank: json['academic_rank'] as String?,
      fcmToken: json['fcmToken'] as String?,
      subjects:
          (json['subjects'] as List<dynamic>?)
              ?.map((e) => Subject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      evaluations:
          (json['evaluations'] as List<dynamic>?)
              ?.map((e) => Evaluation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      researches:
          (json['researches'] as List<dynamic>?)
              ?.map((e) => Research.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      notifications:
          (json['notifications'] as List<dynamic>?)
              ?.map(
                (e) => NotificationModel.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      attendances:
          (json['attendances'] as List<dynamic>?)
              ?.map((e) => Attendance.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: const TimestampConverter().fromJson(json['createdAt']),
      updatedAt: const TimestampConverter().fromJson(json['updatedAt']),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'role': instance.role,
      'activityStatus': instance.activityStatus,
      'isActive': instance.isActive,
      'specialization': instance.specialization,
      'academic_rank': instance.academicRank,
      'fcmToken': instance.fcmToken,
      'subjects': instance.subjects,
      'evaluations': instance.evaluations,
      'researches': instance.researches,
      'notifications': instance.notifications,
      'attendances': instance.attendances,
      'createdAt': _$JsonConverterToJson<dynamic, Timestamp>(
        instance.createdAt,
        const TimestampConverter().toJson,
      ),
      'updatedAt': _$JsonConverterToJson<dynamic, Timestamp>(
        instance.updatedAt,
        const TimestampConverter().toJson,
      ),
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
