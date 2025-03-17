// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'performance_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PerformanceReportImpl _$$PerformanceReportImplFromJson(
  Map<String, dynamic> json,
) => _$PerformanceReportImpl(
  userId: json['userId'] as String,
  attendancePercentage: (json['attendancePercentage'] as num).toDouble(),
  absences: (json['absences'] as num).toInt(),
  delays: (json['delays'] as num).toInt(),
  teachingPerformance: json['teachingPerformance'] as String,
  interactionWithStudents: json['interactionWithStudents'] as String,
  researchPublications: (json['researchPublications'] as num).toInt(),
  strengths:
      (json['strengths'] as List<dynamic>).map((e) => e as String).toList(),
  weaknesses:
      (json['weaknesses'] as List<dynamic>).map((e) => e as String).toList(),
  recommendations:
      (json['recommendations'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
);

Map<String, dynamic> _$$PerformanceReportImplToJson(
  _$PerformanceReportImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'attendancePercentage': instance.attendancePercentage,
  'absences': instance.absences,
  'delays': instance.delays,
  'teachingPerformance': instance.teachingPerformance,
  'interactionWithStudents': instance.interactionWithStudents,
  'researchPublications': instance.researchPublications,
  'strengths': instance.strengths,
  'weaknesses': instance.weaknesses,
  'recommendations': instance.recommendations,
};
