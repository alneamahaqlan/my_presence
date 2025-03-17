// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirebaseErrorImpl _$$FirebaseErrorImplFromJson(Map<String, dynamic> json) =>
    _$FirebaseErrorImpl(
      code: json['code'] as String,
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FirebaseErrorImplToJson(_$FirebaseErrorImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$GenericErrorImpl _$$GenericErrorImplFromJson(Map<String, dynamic> json) =>
    _$GenericErrorImpl(
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$GenericErrorImplToJson(_$GenericErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$NetworkErrorImpl _$$NetworkErrorImplFromJson(Map<String, dynamic> json) =>
    _$NetworkErrorImpl(
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NetworkErrorImplToJson(_$NetworkErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$UnauthorizedErrorImpl _$$UnauthorizedErrorImplFromJson(
  Map<String, dynamic> json,
) => _$UnauthorizedErrorImpl(
  message: json['message'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$UnauthorizedErrorImplToJson(
  _$UnauthorizedErrorImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'runtimeType': instance.$type,
};

_$NotFoundErrorImpl _$$NotFoundErrorImplFromJson(Map<String, dynamic> json) =>
    _$NotFoundErrorImpl(
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NotFoundErrorImplToJson(_$NotFoundErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$ValidationErrorImpl _$$ValidationErrorImplFromJson(
  Map<String, dynamic> json,
) => _$ValidationErrorImpl(
  message: json['message'] as String,
  errors: json['errors'] as Map<String, dynamic>,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$ValidationErrorImplToJson(
  _$ValidationErrorImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'errors': instance.errors,
  'runtimeType': instance.$type,
};
