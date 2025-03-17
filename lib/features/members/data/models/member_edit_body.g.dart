// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_edit_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberEditBodyImpl _$$MemberEditBodyImplFromJson(Map<String, dynamic> json) =>
    _$MemberEditBodyImpl(
      name: json['name'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      activityStatus: json['activityStatus'] as String?,
      specialization: json['specialization'] as String?,
      academicRank: json['academic_rank'] as String?,
    );

Map<String, dynamic> _$$MemberEditBodyImplToJson(
  _$MemberEditBodyImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'email': instance.email,
  'role': instance.role,
  'activityStatus': instance.activityStatus,
  'specialization': instance.specialization,
  'academic_rank': instance.academicRank,
};
