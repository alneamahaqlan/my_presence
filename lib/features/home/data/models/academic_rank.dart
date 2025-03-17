
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../notifications/data/models/academic_rank.freezed.dart';
part '../../../notifications/data/models/academic_rank.g.dart';

@freezed
class AcademicRank with _$AcademicRank {
  const factory AcademicRank({
    required String id,
    required String name,
  }) = _AcademicRank;

  factory AcademicRank.fromJson(Map<String, dynamic> json) => _$AcademicRankFromJson(json);
}