// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_create_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberCreateBodyImpl _$$MemberCreateBodyImplFromJson(
  Map<String, dynamic> json,
) => _$MemberCreateBodyImpl(
  name: json['name'] as String,
  email: json['email'] as String,
  role: json['role'] as String,
  activityStatus: json['activityStatus'] as String,
  specialization: json['specialization'] as String,
  academicRank: json['academic_rank'] as String,
  isActive: json['isActive'] as bool? ?? true,
);

Map<String, dynamic> _$$MemberCreateBodyImplToJson(
  _$MemberCreateBodyImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'email': instance.email,
  'role': instance.role,
  'activityStatus': instance.activityStatus,
  'specialization': instance.specialization,
  'academic_rank': instance.academicRank,
  'isActive': instance.isActive,
};
