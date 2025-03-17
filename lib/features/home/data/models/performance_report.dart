import 'package:freezed_annotation/freezed_annotation.dart';

part 'performance_report.freezed.dart';
part 'performance_report.g.dart';

@freezed
class PerformanceReport with _$PerformanceReport {
  factory PerformanceReport({
    required String userId,
    required double attendancePercentage,
    required int absences,
    required int delays,
    required String teachingPerformance,
    required String interactionWithStudents,
    required int researchPublications,
    required List<String> strengths,
    required List<String> weaknesses,
    required List<String> recommendations,
  }) = _PerformanceReport;

  factory PerformanceReport.fromJson(Map<String, dynamic> json) =>
      _$PerformanceReportFromJson(json);

 
}
