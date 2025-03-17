// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
  title: json['title'] as String,
  icon: json['icon'] as String,
  route: json['route'] as String?,
  addRoute: json['addRoute'] as String?,
);

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'icon': instance.icon,
      'route': instance.route,
      'addRoute': instance.addRoute,
    };
