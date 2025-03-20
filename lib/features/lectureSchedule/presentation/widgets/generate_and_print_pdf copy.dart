// import 'package:flutter/services.dart' show rootBundle;
// import 'package:intl/intl.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
// import 'package:printing/printing.dart';

// import '../../../department/data/models/department_model.dart';
// import '../../data/models/schedule_model.dart';

// Future<void> generateAndPrintPdf(
//   List<Schedule> schedules,
//   Department department,
// ) async {
//   final pdf = pw.Document();

//   // Load Arabic font
//   final fontData = await rootBundle.load("assets/fonts/Amiri-Regular.ttf");
//   final ttf = pw.Font.ttf(fontData.buffer.asByteData());

//   pdf.addPage(
//     pw.Page(
//       pageFormat: PdfPageFormat.a4,
//       margin: pw.EdgeInsets.all(16),
//       build: (pw.Context context) {
//         return pw.Column(
//           crossAxisAlignment: pw.CrossAxisAlignment.center,
//           children: [
//             // Title
//             pw.Text(
//               "كشف بمتابعة اليومية لأعضاء هيئة التدريس",
//               style: pw.TextStyle(
//                 font: ttf,
//                 fontSize: 18,
//                 fontWeight: pw.FontWeight.bold,
//               ),
//               textDirection: pw.TextDirection.rtl,
//               textAlign: pw.TextAlign.center, // Center alignment
//             ),
//             pw.SizedBox(height: 8),

//             // Date and Department Section
//             pw.Row(
//               mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//               children: [
//                 pw.Text(
//                   "اليوم: ..............",
//                   style: pw.TextStyle(font: ttf, fontSize: 14),
//                   textDirection: pw.TextDirection.rtl,
//                   textAlign: pw.TextAlign.center, // Center alignment
//                 ),
//                 pw.Text(
//                   "التاريخ: ${DateFormat('yyyy-MM-dd', 'ar').format(DateTime.now())}",
//                   style: pw.TextStyle(font: ttf, fontSize: 14),
//                   textDirection: pw.TextDirection.rtl,
//                   textAlign: pw.TextAlign.center, // Center alignment
//                 ),
//                 pw.Text(
//                   "القسم: ${department.name}",
//                   style: pw.TextStyle(font: ttf, fontSize: 14),
//                   textDirection: pw.TextDirection.rtl,
//                   textAlign: pw.TextAlign.center, // Center alignment
//                 ),
//               ],
//             ),
//             pw.SizedBox(height: 16),

//             // Table Headers & Data with Arabic Fixes
//             pw.TableHelper.fromTextArray(
//               data: schedules.map((schedule) => []).toList(),
//               context: context,
//               cellAlignment:
//                   pw.Alignment.centerRight, // ✅ Right-align for Arabic
//               headerAlignment: pw.Alignment.centerRight,
//               headerStyle: pw.TextStyle(
//                 fontWeight: pw.FontWeight.bold,
//                 font: ttf,
//                 fontSize: 12,
//               ),
//               cellStyle: pw.TextStyle(font: ttf, fontSize: 10),
//               headers: [
//                 pw.Text(
//                   "التوقيع",
//                   style: pw.TextStyle(font: ttf),
//                   textDirection: pw.TextDirection.rtl,
//                   textAlign: pw.TextAlign.center, // Center alignment
//                 ),
//                 pw.Text(
//                   "عدد الساعات",
//                   style: pw.TextStyle(font: ttf),
//                   textDirection: pw.TextDirection.rtl,
//                   textAlign: pw.TextAlign.center, // Center alignment
//                 ),
//                 pw.Text(
//                   "اسم عضو هيئة التدريس",
//                   style: pw.TextStyle(font: ttf),
//                   textDirection: pw.TextDirection.rtl,
//                   textAlign: pw.TextAlign.center, // Center alignment
//                 ),
//                 pw.Text(
//                   "إلى",
//                   style: pw.TextStyle(font: ttf),
//                   textDirection: pw.TextDirection.rtl,
//                   textAlign: pw.TextAlign.center, // Center alignment
//                 ),
//                 pw.Text(
//                   "وقت المحاضرة من",
//                   style: pw.TextStyle(font: ttf),
//                   textDirection: pw.TextDirection.rtl,
//                   textAlign: pw.TextAlign.center, // Center alignment
//                 ),
//                 pw.Text(
//                   "القاعـــة",
//                   style: pw.TextStyle(font: ttf),
//                   textDirection: pw.TextDirection.rtl,
//                   textAlign: pw.TextAlign.center, // Center alignment
//                 ),
//                 pw.Text(
//                   "الشعبة",
//                   style: pw.TextStyle(font: ttf),
//                   textDirection: pw.TextDirection.rtl,
//                   textAlign: pw.TextAlign.center, // Center alignment
//                 ),
//                 pw.Text(
//                   "رقم المادة",
//                   style: pw.TextStyle(font: ttf),
//                   textDirection: pw.TextDirection.rtl,
//                   textAlign: pw.TextAlign.center, // Center alignment
//                 ),
//                 pw.Text(
//                   "رمز المادة",
//                   style: pw.TextStyle(font: ttf),
//                   textDirection: pw.TextDirection.rtl,
//                   textAlign: pw.TextAlign.center, // Center alignment
//                 ),
//                 pw.Text(
//                   "اسم المادة",
//                   style: pw.TextStyle(font: ttf),
//                   textDirection: pw.TextDirection.rtl,
//                   textAlign: pw.TextAlign.center, // Center alignment
//                 ),
//               ],
//               // data:
//               //     schedules.map((schedule) {
//               //       final startDate = schedule.date.toDate();
//               //       final endDate = schedule.endDate.toDate();
//               //       final startTime = DateFormat('hh:mm a', 'ar').format(startDate);
//               //       final endTime =
//               //           DateFormat('hh:mm a', 'ar').format(endDate);

//               //       return [
//               //         pw.Text(
//               //           "...........",
//               //           style: pw.TextStyle(font: ttf),
//               //           textDirection: pw.TextDirection.rtl,
//               //           textAlign: pw.TextAlign.center, // Center alignment
//               //         ),
//               //         pw.Text(
//               //           "${(schedule.endDate.toDate().difference(schedule.date.toDate()).inHours).abs()} ",
//               //           style: pw.TextStyle(font: ttf),
//               //           textDirection: pw.TextDirection.rtl,
//               //           textAlign: pw.TextAlign.center, // Center alignment
//               //         ),
//               //         pw.Text(
//               //           schedule.user.name,
//               //           style: pw.TextStyle(font: ttf),
//               //           textDirection: pw.TextDirection.rtl,
//               //           textAlign: pw.TextAlign.center, // Center alignment
//               //         ),
//               //         pw.Text(
//               //           endTime,
//               //           style: pw.TextStyle(font: ttf),
//               //           textDirection: pw.TextDirection.rtl,
//               //           textAlign: pw.TextAlign.center, // Center alignment
//               //         ),
//               //         pw.Text(
//               //           startTime,
//               //           style: pw.TextStyle(font: ttf),
//               //           textDirection: pw.TextDirection.rtl,
//               //           textAlign: pw.TextAlign.center, // Center alignment
//               //         ),
//               //         pw.Text(
//               //           schedule.hall,
//               //           style: pw.TextStyle(font: ttf),
//               //           textDirection: pw.TextDirection.rtl,
//               //           textAlign: pw.TextAlign.center, // Center alignment
//               //         ),
//               //         pw.Text(
//               //           department.name,
//               //           style: pw.TextStyle(font: ttf),
//               //           textDirection: pw.TextDirection.rtl,
//               //           textAlign: pw.TextAlign.center, // Center alignment
//               //         ),
//               //         pw.Text(
//               //           schedule.subject.number,
//               //           style: pw.TextStyle(font: ttf),
//               //           textDirection: pw.TextDirection.rtl,
//               //           textAlign: pw.TextAlign.center, // Center alignment
//               //         ),
//               //         pw.Text(
//               //           schedule.subject.code,
//               //           style: pw.TextStyle(font: ttf),
//               //           textDirection: pw.TextDirection.rtl,
//               //           textAlign: pw.TextAlign.center, // Center alignment
//               //         ),
//               //         pw.Text(
//               //           schedule.subject.name,
//               //           style: pw.TextStyle(font: ttf),
//               //           textDirection: pw.TextDirection.rtl,
//               //           textAlign: pw.TextAlign.center, // Center alignment
//               //         ),
//               //       ];
//               //     }).toList(),
//               border: pw.TableBorder.all(),
//             ),
//             pw.SizedBox(height: 20),

//             // Footer
//             pw.Row(
//               mainAxisAlignment: pw.MainAxisAlignment.end,
//               children: [
//                 pw.Text(
//                   "مدير القسم",
//                   style: pw.TextStyle(font: ttf, fontSize: 14),
//                   textDirection: pw.TextDirection.rtl,
//                   textAlign: pw.TextAlign.center, // Center alignment
//                 ),
//               ],
//             ),
//           ],
//         );
//       },
//     ),
//   );

//   // Print the PDF
//   await Printing.layoutPdf(
//     onLayout: (PdfPageFormat format) async => pdf.save(),
//   );
// }
