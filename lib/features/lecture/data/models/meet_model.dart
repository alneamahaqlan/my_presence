import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/converters/timestamp_converter.dart';
import '../../../auth/data/models/user_model.dart';

part 'meet_model.freezed.dart';
part 'meet_model.g.dart';

@freezed
class Meet with _$Meet {
  const factory Meet({
    @JsonKey(name: 'id') dynamic id,
     @TimestampConverter() @JsonKey(name: 'startTime') required Timestamp startTime,
    @TimestampConverter() @JsonKey(name: 'endTime') required Timestamp endTime,
      @JsonKey(name: 'status')  String? status,
       @JsonKey(name: 'byUser')  UserModel? byUser,
  }) = _Meet;

  factory Meet.fromJson(Map<String, dynamic> json) => _$MeetFromJson(json);
}
