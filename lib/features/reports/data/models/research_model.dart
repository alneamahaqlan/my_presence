import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/converters/timestamp_converter.dart';

part 'research_model.freezed.dart';
part 'research_model.g.dart';

@freezed
class Research with _$Research {
  const factory Research({
    @JsonKey(name: 'id') dynamic id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'comment') String? description,
        @JsonKey(name: 'link') String? link,
    @TimestampConverter() @JsonKey(name: 'createdAt') Timestamp? createdAt,

    @TimestampConverter() @JsonKey(name: 'updatedAt') Timestamp? updatedAt,
  }) = _Research;

  factory Research.fromJson(Map<String, dynamic> json) =>
      _$ResearchFromJson(json);
}
