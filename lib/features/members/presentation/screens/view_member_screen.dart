import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/widgets/text_widget.dart';
import '../../../auth/data/models/user_model.dart';
import '../widgets/AddAttendanceDialog.dart';
import '../widgets/AddEvaluationDialog.dart';
import '../widgets/AddResearchDialog.dart';

class ViewMemberScreen extends StatelessWidget {
  final UserModel member;

  const ViewMemberScreen({super.key, required this.member});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TextWidget(
          text: "تفاصيل العضو",
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.print),
            onPressed: () => _printMemberDetails(context),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => _showAddEvaluationDialog(context),
          ),
          IconButton(
            icon: const Icon(Icons.article),
            onPressed: () => _showAddResearchDialog(context),
          ),
          IconButton(
            icon: const Icon(Icons.calendar_today),
            onPressed: () => _showAddAttendanceDialog(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildDetailRow(Icons.person, "الاسم", member.name),
                _buildDivider(),
                _buildDetailRow(Icons.email, "البريد الإلكتروني", member.email),
                _buildDivider(),
                _buildDetailRow(
                  Icons.admin_panel_settings,
                  "الدور",
                  member.role.name == "teacher" ? "مدرس" : "طالب",
                ),
                _buildDivider(),
                _buildDetailRow(
                  Icons.circle,
                  "حالة النشاط",
                  member.activityStatus.name == "active" ? "نشط" : "غير نشط",
                ),
                _buildDivider(),
                _buildDetailRow(
                  Icons.school,
                  "التخصص",
                  member.specialization ?? "غير متوفر",
                ),
                _buildDivider(),
                _buildDetailRow(
                  Icons.star,
                  "الرتبة الأكاديمية",
                  member.academicRank ?? "غير متوفر",
                ),
                _buildDivider(),
                // Collapsible section for subjects
                ExpansionTile(
                  title: const TextWidget(
                    text: "المواد التي يدرسها",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    if (member.subjects.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Wrap(
                          spacing: 8.0, // Horizontal space between items
                          runSpacing: 8.0, // Vertical space between lines
                          children:
                              member.subjects.map((subject) {
                                return Chip(
                                  label: Text(subject.name),
                                  backgroundColor: Colors.teal.withOpacity(0.2),
                                  labelStyle: const TextStyle(
                                    color: Colors.teal,
                                  ),
                                );
                              }).toList(),
                        ),
                      )
                    else
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextWidget(
                          text: "لا توجد مواد",
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                  ],
                ),
                _buildDivider(),
                // Collapsible section for evaluations
                ExpansionTile(
                  title: const TextWidget(
                    text: "التقييمات",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    if (member.evaluations.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Wrap(
                          spacing: 8.0, // Horizontal space between items
                          runSpacing: 8.0, // Vertical space between lines
                          children:
                              member.evaluations.map((evaluation) {
                                return Chip(
                                  label: Text(
                                    "${evaluation.score} - ${evaluation.comment ?? "بدون تعليق"}",
                                  ),
                                  backgroundColor: Colors.blue.withOpacity(0.2),
                                  labelStyle: const TextStyle(
                                    color: Colors.blue,
                                  ),
                                );
                              }).toList(),
                        ),
                      )
                    else
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextWidget(
                          text: "لا توجد تقييمات",
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                  ],
                ),
                _buildDivider(),
                // Collapsible section for researches
                ExpansionTile(
                  title: const TextWidget(
                    text: "الأبحاث",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    if (member.researches.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Wrap(
                          spacing: 8.0, // Horizontal space between items
                          runSpacing: 8.0, // Vertical space between lines
                          children:
                              member.researches.map((research) {
                                return Chip(
                                  label: Text(research.name),
                                  backgroundColor: Colors.purple.withOpacity(
                                    0.2,
                                  ),
                                  labelStyle: const TextStyle(
                                    color: Colors.purple,
                                  ),
                                );
                              }).toList(),
                        ),
                      )
                    else
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextWidget(
                          text: "لا توجد أبحاث",
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                  ],
                ),
                _buildDivider(),
                // Collapsible section for attendance
                ExpansionTile(
                  title: const TextWidget(
                    text: "الحضور",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    if (member.attendances.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Wrap(
                          spacing: 8.0, // Horizontal space between items
                          runSpacing: 8.0, // Vertical space between lines
                          children:
                              member.attendances.map((attendance) {
                                return Chip(
                                  label: Text(
                                    "${attendance.arrivalDate?.toDate()} - ${attendance.status}",
                                  ),
                                  backgroundColor: Colors.orange.withOpacity(
                                    0.2,
                                  ),
                                  labelStyle: const TextStyle(
                                    color: Colors.orange,
                                  ),
                                );
                              }).toList(),
                        ),
                      )
                    else
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextWidget(
                          text: "لا توجد سجلات حضور",
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                  ],
                ),
                _buildDivider(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showAddEvaluationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AddEvaluationDialog(member: member);
      },
    );
  }

  void _showAddResearchDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AddResearchDialog(member: member);
      },
    );
  }

  void _showAddAttendanceDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AddAttendanceDialog(member: member);
      },
    );
  }

  Widget _buildDetailRow(IconData icon, String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      textDirection: TextDirection.rtl,
      children: [
        Icon(icon, color: Colors.teal, size: 22),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            textDirection: TextDirection.rtl,
            children: [
              TextWidget(
                text: label,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              const SizedBox(height: 4),
              TextWidget(text: value, fontSize: 14),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return const Divider(thickness: 1, height: 20);
  }

  Future<pw.Document> generatePdf(UserModel member) async {
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
                  children:
                      member.subjects.map((subject) {
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
                  children:
                      member.evaluations.map((evaluation) {
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
                  children:
                      member.researches.map((research) {
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
                  children:
                      member.attendances.map((attendance) {
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
            ],
          );
        },
      ),
    );

    return pdf;
  }

  pw.TableRow _buildPdfTableRow(String label, String value) {
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

  Future<void> _printMemberDetails(BuildContext context) async {
    final pdf = await generatePdf(member);
    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save(),
    );
  }
}
