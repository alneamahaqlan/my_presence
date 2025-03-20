// import 'package:flutter/services.dart' show rootBundle;
// import 'package:intl/intl.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
// import 'package:printing/printing.dart';

// class PdfGenerator {
//   final String title;
//   final String footer;
//   final List<String> headers;
//   final List<Map<String, dynamic>> data;
//   final String fontPath;
//   final String dateFormat;
//   final String timeFormat;

//   PdfGenerator({
//     required this.title,
//     required this.footer,
//     required this.headers,
//     required this.data,
//     this.fontPath = "assets/fonts/Amiri-Regular.ttf",
//     this.dateFormat = 'yyyy-MM-dd',
//     this.timeFormat = 'hh:mm a',
//   });

//   Future<void> generateAndPrintPdf() async {
//     final pdf = pw.Document();
//     final ttf = await _loadFont(fontPath);

//     pdf.addPage(
//       pw.Page(
//         pageFormat: PdfPageFormat.a4,
//         margin: pw.EdgeInsets.all(16),
//         build: (pw.Context context) {
//           return pw.Column(
//             crossAxisAlignment: pw.CrossAxisAlignment.center,
//             children: [
//               _buildTitle(ttf, title),
//               _buildDateSection(ttf, dateFormat),
//               _buildTable(ttf, headers, data),
//               _buildFooter(ttf, footer),
//             ],
//           );
//         },
//       ),
//     );

//     await Printing.layoutPdf(
//       onLayout: (PdfPageFormat format) async => pdf.save(),
//     );
//   }

//   Future<pw.Font> _loadFont(String fontPath) async {
//     final fontData = await rootBundle.load(fontPath);
//     return pw.Font.ttf(fontData.buffer.asByteData());
//   }

//   pw.Widget _buildTitle(pw.Font ttf, String title) {
//     return pw.Text(
//       title,
//       style: pw.TextStyle(
//         font: ttf,
//         fontSize: 18,
//         fontWeight: pw.FontWeight.bold,
//       ),
//       textDirection: pw.TextDirection.rtl,
//       textAlign: pw.TextAlign.center,
//     );
//   }

//   pw.Widget _buildDateSection(pw.Font ttf, String dateFormat) {
//     return pw.Column(
//       children: [
//         pw.SizedBox(height: 8),
//         pw.Row(
//           mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//           children: [
//             _buildText("اليوم: ..............", ttf),
//             _buildText(
//               "التاريخ: ${DateFormat(dateFormat, 'ar').format(DateTime.now())}",
//               ttf,
//             ),
//           ],
//         ),
//         pw.SizedBox(height: 16),
//       ],
//     );
//   }

//   pw.Widget _buildTable(
//     pw.Font ttf,
//     List<String> headers,
//     List<Map<String, dynamic>> data,
//   ) {
//     return pw.TableHelper.fromTextArray(
//       data: data.map((row) => _mapRow(row, ttf)).toList(),
//       context: null,
//       cellAlignment: pw.Alignment.centerRight,
//       headerAlignment: pw.Alignment.centerRight,
//       headerStyle: pw.TextStyle(
//         fontWeight: pw.FontWeight.bold,
//         font: ttf,
//         fontSize: 12,
//       ),
//       cellStyle: pw.TextStyle(font: ttf, fontSize: 10),
//       headers: headers.map((header) => _buildText(header, ttf)).toList(),
//       border: pw.TableBorder.all(),
//     );
//   }

//   List<pw.Widget> _mapRow(Map<String, dynamic> row, pw.Font ttf) {
//     return row.values.map((value) => _buildText(value.toString(), ttf)).toList();
//   }

//   pw.Widget _buildFooter(pw.Font ttf, String footer) {
//     return pw.Row(
//       mainAxisAlignment: pw.MainAxisAlignment.end,
//       children: [
//         _buildText(footer, ttf),
//       ],
//     );
//   }

//   pw.Text _buildText(String text, pw.Font ttf) {
//     return pw.Text(
//       text,
//       style: pw.TextStyle(font: ttf),
//       textDirection: pw.TextDirection.rtl,
//       textAlign: pw.TextAlign.center,
//     );
//   }
// }