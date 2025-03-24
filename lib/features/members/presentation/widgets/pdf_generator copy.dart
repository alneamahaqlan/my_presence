// // lib/features/reports/presentation/widgets/pdf_generator.dart
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/services.dart' show rootBundle;
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;

// import '../../../../core/utils/enums/days_of_week.dart';
// import '../../../auth/data/models/user_model.dart';
// import '../../../lecture/data/models/lecture_model.dart';

// class PdfGenerator {
//   final UserModel member;
//   final String? departmentId;
//   final String fontPath;
//   final String dateFormat;
//   final String timeFormat;

//   PdfGenerator({
//     required this.member,
//     this.departmentId,
//     this.fontPath = "assets/fonts/Amiri-Regular.ttf",
//     this.dateFormat = 'yyyy-MM-dd',
//     this.timeFormat = 'hh:mm a',
//   });

//   Future<pw.Document> generatePdf() async {
//     final pdf = pw.Document();
//     final ttf = await _loadFont(fontPath);

//     // Filter lectures by department if specified
//     final lectures =
//         departmentId == null
//             ? member.lectures
//             : member.lectures
//                 .where(
//                   (element) => element.schedule.department.id == departmentId,
//                 )
//                 .toList();

//     final totalUnits = lectures
//         .map((e) => e.subject.units)
//         .fold(0, (previousValue, element) => element + previousValue);
//     final filteredMember = member.copyWith(lectures: lectures);

//     pdf.addPage(
//       pw.Page(
//         textDirection: pw.TextDirection.rtl,
//         pageFormat: PdfPageFormat.a4,
//         margin: pw.EdgeInsets.all(16),
//         build: (pw.Context context) {
//           return pw.Column(
//             crossAxisAlignment: pw.CrossAxisAlignment.end,
//             children: [
//               _buildTitle(ttf, "جدول المحاظرات لعضو هيئة التدريس"),
//               _buildDetailSection(ttf, filteredMember),
//               pw.SizedBox(height: 50),
//               // _buildDivider(height: 50),
//               _buildLectureTable(ttf, lectures),
//               _buildDivider(),
//               _buildFooter(ttf, "المجموع: $totalUnits وحدة"),
//             ],
//           );
//         },
//       ),
//     );

//     return pdf;
//   }

//   Future<pw.Font> _loadFont(String fontPath) async {
//     final fontData = await rootBundle.load(fontPath);
//     return pw.Font.ttf(fontData.buffer.asByteData());
//   }

//   pw.Widget _buildTitle(pw.Font ttf, String title) {
//     return pw.Center(
//       child: pw.Text(
//         title,
//         style: pw.TextStyle(
//           font: ttf,
//           fontSize: 18,
//           fontWeight: pw.FontWeight.bold,
//         ),
//         textDirection: pw.TextDirection.rtl,
//         textAlign: pw.TextAlign.center,
//       ),
//     );
//   }

//   pw.Widget _buildDetailSection(pw.Font ttf, UserModel member) {
//     return pw.Row(
//       mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//       children: [
//         pw.Column(
//           crossAxisAlignment: pw.CrossAxisAlignment.start,
//           children: [
//             _buildText("الاسم: ${member.name}", ttf),
//             _buildText("البريد الإلكتروني: ${member.email}", ttf),
//             _buildText("الدور: ${member.role.name.tr()}", ttf),
//             _buildText(
//               "حالة النشاط: ${member.activityStatus.name == "active" ? "نشط" : "غير نشط"}",
//               ttf,
//             ),
//             _buildText("التخصص: ${member.specialization ?? "غير متوفر"}", ttf),
//             _buildText(
//               "الرتبة الأكاديمية: ${member.academicRank ?? "غير متوفر"}",
//               ttf,
//             ),
//           ],
//         ),
//         pw.Column(
//           crossAxisAlignment: pw.CrossAxisAlignment.start,
//           children: [
//             _buildText(
//               "تم الإنشاء في ${DateFormat(dateFormat).format(DateTime.now())}",
//               ttf,
//             ),
//             if (member.lectures.isNotEmpty) ...[
//               _buildText(
//                 "القسم: ${member.lectures.first.schedule.department.name}",
//                 ttf,
//               ),
//               _buildText(
//                 "الشعبة: ${member.lectures.first.schedule.division}",
//                 ttf,
//               ),
//               _buildText(
//                 "المستوى: ${member.lectures.first.schedule.level}",
//                 ttf,
//               ),
//             ],
//           ],
//         ),
//       ],
//     );
//   }

//   pw.Widget _buildLectureTable(pw.Font ttf, List<Lecture> lectures) {
//     final daysOfWeek = DaysOfWeek.values.map((e) => e.toString()).toList();

//     final headers = [
//       'المادة',
//       'الرمز',
//       'الرقم',
//       'الوحدات',
//       'الشعبة',
//       'القاعة',
//       'بدايه',
//       'نهايه',
//       ...daysOfWeek.reversed,
//     ];

//     final data =
//         lectures.map((lecture) {
//           final dayOfWeek = _getDayOfWeek(lecture.startTime);

//           final attendanceStatusByDay =
//               daysOfWeek
//                   .map((day) {
//                     return day == dayOfWeek ? _buildRedCircle() : pw.Text('-');
//                   })
//                   .toList()
//                   .reversed;

//           return [
//             lecture.subject.name,
//             lecture.subject.code,
//             lecture.subject.number,
//             lecture.subject.units.toString(),
//             lecture.schedule.division,
//             lecture.hall,
//             DateFormat(timeFormat).format(lecture.startTime.toDate()),
//             DateFormat(timeFormat).format(lecture.endTime.toDate()),
//             ...attendanceStatusByDay,
//           ];
//         }).toList();

//     final transposedData =
//         [headers, ...data].map((row) => row.reversed.toList()).toList();

//     return pw.TableHelper.fromTextArray(
//       headers:
//           transposedData.first
//               .map((header) => _buildText(header as String, ttf))
//               .toList(),
//       data: transposedData.skip(1).toList(),
//       cellAlignment: pw.Alignment.center,
//       headerAlignment: pw.Alignment.center,
//       tableWidth: pw.TableWidth.max,
//       headerStyle: pw.TextStyle(
//         font: ttf,
//         fontSize: 12,
//         fontWeight: pw.FontWeight.bold,
//       ),
//       cellStyle: pw.TextStyle(font: ttf, fontSize: 10),
//       border: pw.TableBorder.all(),
//       tableDirection: pw.TextDirection.rtl,
//     );
//   }

//   pw.Widget _buildRedCircle() {
//     return pw.Container(
//       width: 10,
//       height: 10,
//       decoration: pw.BoxDecoration(
//         shape: pw.BoxShape.circle,
//         color: PdfColors.red,
//       ),
//     );
//   }

//   pw.Widget _buildFooter(pw.Font ttf, String footer) {
//     return pw.Row(
//       mainAxisAlignment: pw.MainAxisAlignment.start,
//       children: [_buildText(footer, ttf)],
//     );
//   }

//   pw.Text _buildText(String text, pw.Font ttf) {
//     return pw.Text(
//       text,
//       style: pw.TextStyle(font: ttf, fontSize: 12),
//       textDirection: pw.TextDirection.rtl,
//       textAlign: pw.TextAlign.start,
//     );
//   }

//   pw.Widget _buildDivider({double? height}) {
//     return pw.Divider(thickness: 1, height: height ?? 20);
//   }

//   String _getDayOfWeek(Timestamp timestamp) {
//     final date = timestamp.toDate();
//     final dayOfWeek = DaysOfWeek.fromDateTime(date);
//     return dayOfWeek.toString();
//   }
// }
