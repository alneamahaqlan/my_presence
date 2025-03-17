import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/converters/timestamp_converter.dart';

part 'evaluation_model.freezed.dart';
part 'evaluation_model.g.dart';

@freezed
class Evaluation with _$Evaluation {
  const factory Evaluation({
    @JsonKey(name: 'id') dynamic id,
    @JsonKey(name: 'score') required int score,
    @JsonKey(name: 'comment') String? comment,
     @JsonKey(name: 'rateType') required String rateType,
    @TimestampConverter() @JsonKey(name: 'createdAt') Timestamp? createdAt,
    @TimestampConverter() @JsonKey(name: 'updatedAt') Timestamp? updatedAt,
  }) = _Evaluation;

  factory Evaluation.fromJson(Map<String, dynamic> json) =>
      _$EvaluationFromJson(json);
}
