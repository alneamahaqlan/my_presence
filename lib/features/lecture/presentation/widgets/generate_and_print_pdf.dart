// import 'package:flutter/services.dart' show rootBundle;
// import 'package:intl/intl.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
// import 'package:printing/printing.dart';

// import '../../../department/data/models/department_model.dart';
// import '../../data/models/lecture_model.dart';


// Future<void> generateAndPrintPdf(
//  List<Lecture> lectures,
//   Department department,
// ) async {
//   final pdf = pw.Document();
//   final ttf = await _loadArabicFont();

//   pdf.addPage(
//     pw.Page(
//       pageFormat: PdfPageFormat.a4,
//       margin: pw.EdgeInsets.all(16),
//       build: (pw.Context context) {
//         return pw.Column(
//           crossAxisAlignment: pw.CrossAxisAlignment.center,
//           children: [
//             _buildTitle(ttf),
//             _buildDateAndDepartmentSection(ttf, department),
//             _buildScheduleTable(ttf, lectures, department),
//             _buildFooter(ttf),
//           ],
//         );
//       },
//     ),
//   );

//   await Printing.layoutPdf(
//     onLayout: (PdfPageFormat format) async => pdf.save(),
//   );
// }

// Future<pw.Font> _loadArabicFont() async {
//   final fontData = await rootBundle.load("assets/fonts/Amiri-Regular.ttf");
//   return pw.Font.ttf(fontData.buffer.asByteData());
// }

// pw.Widget _buildTitle(pw.Font ttf) {
//   return pw.Text(
//     "كشف بمتابعة اليومية لأعضاء هيئة التدريس",
//     style: pw.TextStyle(
//       font: ttf,
//       fontSize: 18,
//       fontWeight: pw.FontWeight.bold,
//     ),
//     textDirection: pw.TextDirection.rtl,
//     textAlign: pw.TextAlign.center,
//   );
// }

// pw.Widget _buildDateAndDepartmentSection(pw.Font ttf, Department department) {
//   return pw.Column(
//     children: [
//       pw.SizedBox(height: 8),
//       pw.Row(
//         mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//         children: [
//           _buildText("اليوم: ..............", ttf),
//           _buildText("التاريخ: ${DateFormat('yyyy-MM-dd', 'ar').format(DateTime.now())}", ttf),
//           _buildText("القسم: ${department.name}", ttf),
//         ],
//       ),
//       pw.SizedBox(height: 16),
//     ],
//   );
// }

// pw.Widget _buildScheduleTable(pw.Font ttf,  List<Lecture> lectures, Department department) {
//   return pw.TableHelper.fromTextArray(
//     data: lectures.map((schedule) => _mapScheduleToTableRow(schedule, department, ttf)).toList(),
//     context: null,
//     cellAlignment: pw.Alignment.centerRight,
//     headerAlignment: pw.Alignment.centerRight,
//     headerStyle: pw.TextStyle(
//       fontWeight: pw.FontWeight.bold,
//       font: ttf,
//       fontSize: 12,
//     ),
//     cellStyle: pw.TextStyle(font: ttf, fontSize: 10),
//     headers: [
//       _buildText("التوقيع", ttf),
//       _buildText("عدد الساعات", ttf),
//       _buildText("اسم عضو هيئة التدريس", ttf),
//       _buildText("إلى", ttf),
//       _buildText("وقت المحاضرة من", ttf),
//       _buildText("القاعـــة", ttf),
//       _buildText("الشعبة", ttf),
//       _buildText("رقم المادة", ttf),
//       _buildText("رمز المادة", ttf),
//       _buildText("اسم المادة", ttf),
//     ],
//     border: pw.TableBorder.all(),
//   );
// }

// List<pw.Widget> _mapScheduleToTableRow(Lecture lecture, Department department, pw.Font ttf) {
//   final startDate = lecture.startTime.toDate();
//   final endDate = lecture.endTime.toDate();
//   final startTime = DateFormat('hh:mm a', 'ar').format(startDate);
//   final endTime = DateFormat('hh:mm a', 'ar').format(endDate);

//   return [
//     _buildText("...........", ttf),
//     _buildText("${(endDate.difference(startDate).inHours).abs()}", ttf),
//     _buildText(lecture.user.name, ttf),
//     _buildText(endTime, ttf),
//     _buildText(startTime, ttf),
//     _buildText(lecture.hall, ttf),
//     _buildText(department.name, ttf),
//     _buildText(lecture.subject.number, ttf),
//     _buildText(lecture.subject.code, ttf),
//     _buildText(lecture.subject.name, ttf),
//   ];
// }

// pw.Widget _buildFooter(pw.Font ttf) {
//   return pw.Row(
//     mainAxisAlignment: pw.MainAxisAlignment.end,
//     children: [
//       _buildText("مدير القسم", ttf),
//     ],
//   );
// }

// pw.Text _buildText(String text, pw.Font ttf) {
//   return pw.Text(
//     text,
//     style: pw.TextStyle(font: ttf),
//     textDirection: pw.TextDirection.rtl,
//     textAlign: pw.TextAlign.center,
//   );
// }