import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../../attendance/data/models/attendance_model.dart';
import '../../../auth/data/models/user_model.dart';
import '../../../lecture/data/models/lecture_model.dart';

class PdfGenerator {
  final UserModel member;
  final String fontPath;
  final String dateFormat;
  final String timeFormat;

  PdfGenerator({
    required this.member,
    this.fontPath = "assets/fonts/Amiri-Regular.ttf",
    this.dateFormat = 'yyyy-MM-dd',
    this.timeFormat = 'hh:mm a',
  });

  Future<pw.Document> generatePdf() async {
    final pdf = pw.Document();
    final ttf = await _loadFont(fontPath);

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        margin: pw.EdgeInsets.all(16),
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.end,
            children: [
              _buildTitle(ttf, "تفاصيل العضو"),
              _buildDetailSection(ttf, member),
              _buildDivider(),
              _buildLectureTable(ttf, member.lectures),
              _buildDivider(),
              _buildAttendanceTable(ttf, member.attendances),
              _buildDivider(),
              _buildFooter(
                ttf,
                "تم الإنشاء في ${DateFormat(dateFormat).format(DateTime.now())}",
              ),
            ],
          );
        },
      ),
    );

    return pdf;
  }

  Future<pw.Font> _loadFont(String fontPath) async {
    final fontData = await rootBundle.load(fontPath);
    return pw.Font.ttf(fontData.buffer.asByteData());
  }

  pw.Widget _buildTitle(pw.Font ttf, String title) {
    return pw.Center(
      child: pw.Text(
        title,
        style: pw.TextStyle(
          font: ttf,
          fontSize: 18,
          fontWeight: pw.FontWeight.bold,
        ),
        textDirection: pw.TextDirection.rtl,
        textAlign: pw.TextAlign.center,
      ),
    );
  }

  pw.Widget _buildDetailSection(pw.Font ttf, UserModel member) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.end,
      children: [
        _buildText("الاسم: ${member.name}", ttf),
        _buildText("البريد الإلكتروني: ${member.email}", ttf),
        _buildText("الدور: ${member.role.name.tr()}", ttf),
        _buildText(
          "حالة النشاط: ${member.activityStatus.name == "active" ? "نشط" : "غير نشط"}",
          ttf,
        ),
        _buildText("التخصص: ${member.specialization ?? "غير متوفر"}", ttf),
        _buildText(
          "الرتبة الأكاديمية: ${member.academicRank ?? "غير متوفر"}",
          ttf,
        ),
      ],
    );
  }

  pw.Widget _buildLectureTable(pw.Font ttf, List<Lecture> lectures) {
    // Define the days of the week in Arabic
    final daysOfWeek = [
      'السبت',
      'الأحد',
      'الاثنين',
      'الثلاثاء',
      'الأربعاء',
      'الخميس',
      'الجمعة',
    ];

    // Define the headers for the table
    final headers = [
      'المادة',
      'رمز', // Add subject code
      'رقم', // Add subject number
      'القاعة',
      'بداية', // Add start time
      'نهاية', // Add end time
      ...daysOfWeek, // Add days of the week to the headers
    ];

    // Generate data for the table
    final data =
        lectures.map((lecture) {
          // Get the day of the week based on the lecture's startTime
          final dayOfWeek = _getDayOfWeek(lecture.startTime);

          // Create a list of attendance statuses for each day of the week
          final attendanceStatusByDay =
              daysOfWeek.map((day) {
                return day == dayOfWeek
                    ? _buildRedCircle() // Use a red circle instead of the time range
                    : pw.Text('-');
              }).toList();

          return [
            lecture.subject.name,
            lecture.subject.code, // Add subject code
            lecture.subject.number, // Add subject number
            lecture.hall,
            DateFormat(
              timeFormat,
            ).format(lecture.startTime.toDate()), // Add start time
            DateFormat(
              timeFormat,
            ).format(lecture.endTime.toDate()), // Add end time
            ...attendanceStatusByDay, // Add attendance statuses for each day
          ];
        }).toList();

    return pw.TableHelper.fromTextArray(
      headers: headers.map((header) => _buildText(header, ttf)).toList(),
      data: data,
      cellAlignment: pw.Alignment.center,
      headerAlignment: pw.Alignment.center,
      headerStyle: pw.TextStyle(
        font: ttf,
        fontSize: 12,
        fontWeight: pw.FontWeight.bold,
      ),
      cellStyle: pw.TextStyle(font: ttf, fontSize: 10),
      border: pw.TableBorder.all(),
      tableDirection: pw.TextDirection.rtl,
    );
  }

  pw.Widget _buildRedCircle() {
    return pw.Container(
      width: 10,
      height: 10,
      decoration: pw.BoxDecoration(
        shape: pw.BoxShape.circle,
        color: PdfColors.red,
      ),
    );
  }

  pw.Widget _buildAttendanceTable(pw.Font ttf, List<Attendance> attendances) {
    final headers = ['الحالة', 'تاريخ الحضور'];

    final data =
        attendances.map((attendance) {
          return [
            attendance.status,
            DateFormat(dateFormat).format(attendance.arrivalDate!.toDate()),
          ];
        }).toList();

    return pw.TableHelper.fromTextArray(
      headers: headers.map((header) => _buildText(header, ttf)).toList(),
      data: data,
      cellAlignment: pw.Alignment.centerRight,
      headerAlignment: pw.Alignment.centerRight,
      headerStyle: pw.TextStyle(
        font: ttf,
        fontSize: 12,
        fontWeight: pw.FontWeight.bold,
      ),
      cellStyle: pw.TextStyle(font: ttf, fontSize: 10),
      border: pw.TableBorder.all(),
    );
  }

  pw.Widget _buildFooter(pw.Font ttf, String footer) {
    return pw.Row(
      mainAxisAlignment: pw.MainAxisAlignment.end,
      children: [_buildText(footer, ttf)],
    );
  }

  pw.Text _buildText(String text, pw.Font ttf) {
    return pw.Text(
      text,
      style: pw.TextStyle(font: ttf, fontSize: 12),
      textDirection: pw.TextDirection.rtl,
      textAlign: pw.TextAlign.start,
    );
  }

  pw.Widget _buildDivider() {
    return pw.Divider(thickness: 1, height: 20);
  }

  // Helper method to get the day of the week in Arabic
  String _getDayOfWeek(Timestamp timestamp) {
    final date = timestamp.toDate();
    return DateFormat(
      'EEEE',
      'ar',
    ).format(date); // 'EEEE' gives the full day name
  }
}
