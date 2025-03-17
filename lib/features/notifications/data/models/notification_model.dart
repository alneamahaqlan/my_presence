import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/converters/timestamp_converter.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  factory NotificationModel({
    @JsonKey(name: 'id') dynamic id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'message') required String message,
    @TimestampConverter() @JsonKey(name: 'date') required Timestamp date,
      @JsonKey(name: 'type') required String type,
    @TimestampConverter() @JsonKey(name: 'createdAt') Timestamp? createdAt,
    @TimestampConverter() @JsonKey(name: 'updatedAt') Timestamp? updatedAt,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}
