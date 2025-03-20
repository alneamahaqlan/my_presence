import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:intl/intl.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../auth/data/models/user_model.dart';
import '../../../attendance/data/models/attendance_model.dart';

class PdfGenerator {
  static Future<pw.Document> generatePdf(UserModel member) async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text(
                'تفاصيل العضو',
                style: pw.TextStyle(
                  fontSize: 24,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.SizedBox(height: 20),
              pw.Table(
                border: pw.TableBorder.all(),
                children: [
                  _buildPdfTableRow('الاسم', member.name),
                  _buildPdfTableRow('البريد الإلكتروني', member.email),
                  _buildPdfTableRow(
                    'الدور',
                    member.role.name == "teacher" ? "مدرس" : "طالب",
                  ),
                  _buildPdfTableRow(
                    'حالة النشاط',
                    member.activityStatus.name == "active" ? "نشط" : "غير نشط",
                  ),
                  _buildPdfTableRow(
                    'التخصص',
                    member.specialization ?? "غير متوفر",
                  ),
                  _buildPdfTableRow(
                    'الرتبة الأكاديمية',
                    member.academicRank ?? "غير متوفر",
                  ),
                ],
              ),
              pw.SizedBox(height: 20),
              pw.Text(
                'المواد التي يدرسها',
                style: pw.TextStyle(
                  fontSize: 18,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              if (member.subjects.isNotEmpty)
                pw.Wrap(
                  children: member.subjects.map((subject) {
                    return pw.Container(
                      margin: pw.EdgeInsets.all(4),
                      padding: pw.EdgeInsets.all(8),
                      decoration: pw.BoxDecoration(
                        border: pw.Border.all(color: PdfColors.teal),
                        borderRadius: pw.BorderRadius.circular(4),
                      ),
                      child: pw.Text(
                        subject.name,
                        style: pw.TextStyle(color: PdfColors.teal),
                      ),
                    );
                  }).toList(),
                )
              else
                pw.Text(
                  'لا توجد مواد',
                  style: pw.TextStyle(color: PdfColors.grey),
                ),
              pw.SizedBox(height: 20),
              pw.Text(
                'التقييمات',
                style: pw.TextStyle(
                  fontSize: 18,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              if (member.evaluations.isNotEmpty)
                pw.Wrap(
                  children: member.evaluations.map((evaluation) {
                    return pw.Container(
                      margin: pw.EdgeInsets.all(4),
                      padding: pw.EdgeInsets.all(8),
                      decoration: pw.BoxDecoration(
                        border: pw.Border.all(color: PdfColors.blue),
                        borderRadius: pw.BorderRadius.circular(4),
                      ),
                      child: pw.Text(
                        "${evaluation.score} - ${evaluation.comment ?? "بدون تعليق"}",
                        style: pw.TextStyle(color: PdfColors.blue),
                      ),
                    );
                  }).toList(),
                )
              else
                pw.Text(
                  'لا توجد تقييمات',
                  style: pw.TextStyle(color: PdfColors.grey),
                ),
              pw.SizedBox(height: 20),
              pw.Text(
                'الأبحاث',
                style: pw.TextStyle(
                  fontSize: 18,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              if (member.researches.isNotEmpty)
                pw.Wrap(
                  children: member.researches.map((research) {
                    return pw.Container(
                      margin: pw.EdgeInsets.all(4),
                      padding: pw.EdgeInsets.all(8),
                      decoration: pw.BoxDecoration(
                        border: pw.Border.all(color: PdfColors.purple),
                        borderRadius: pw.BorderRadius.circular(4),
                      ),
                      child: pw.Text(
                        research.name,
                        style: pw.TextStyle(color: PdfColors.purple),
                      ),
                    );
                  }).toList(),
                )
              else
                pw.Text(
                  'لا توجد أبحاث',
                  style: pw.TextStyle(color: PdfColors.grey),
                ),
              pw.SizedBox(height: 20),
              pw.Text(
                'الحضور',
                style: pw.TextStyle(
                  fontSize: 18,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              if (member.attendances.isNotEmpty)
                pw.Wrap(
                  children: member.attendances.map((attendance) {
                    return pw.Container(
                      margin: pw.EdgeInsets.all(4),
                      padding: pw.EdgeInsets.all(8),
                      decoration: pw.BoxDecoration(
                        border: pw.Border.all(color: PdfColors.orange),
                        borderRadius: pw.BorderRadius.circular(4),
                      ),
                      child: pw.Text(
                        "${attendance.arrivalDate?.toDate()} - ${attendance.status}",
                        style: pw.TextStyle(color: PdfColors.orange),
                      ),
                    );
                  }).toList(),
                )
              else
                pw.Text(
                  'لا توجد سجلات حضور',
                  style: pw.TextStyle(color: PdfColors.grey),
                ),
              pw.SizedBox(height: 20),
              pw.Text(
                'المحاضرات',
                style: pw.TextStyle(
                  fontSize: 18,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              if (member.lectures.isNotEmpty)
                pw.Wrap(
                  children: member.lectures.map((lecture) {
                    return pw.Container(
                      margin: pw.EdgeInsets.all(4),
                      padding: pw.EdgeInsets.all(8),
                      decoration: pw.BoxDecoration(
                        border: pw.Border.all(color: PdfColors.green),
                        borderRadius: pw.BorderRadius.circular(4),
                      ),
                      child: pw.Text(
                        "${lecture.subject.name} - ${lecture.hall} (${lecture.startTime.toDate()} إلى ${lecture.endTime.toDate()})",
                        style: pw.TextStyle(color: PdfColors.green),
                      ),
                    );
                  }).toList(),
                )
              else
                pw.Text(
                  'لا توجد محاضرات',
                  style: pw.TextStyle(color: PdfColors.grey),
                ),
            ],
          );
        },
      ),
    );

    return pdf;
  }

  static pw.TableRow _buildPdfTableRow(String label, String value) {
    return pw.TableRow(
      children: [
        pw.Padding(
          padding: const pw.EdgeInsets.all(8.0),
          child: pw.Text(
            label,
            style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 16),
          ),
        ),
        pw.Padding(
          padding: const pw.EdgeInsets.all(8.0),
          child: pw.Text(value, style: pw.TextStyle(fontSize: 14)),
        ),
      ],
    );
  }
}