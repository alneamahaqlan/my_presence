import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/widgets/text_widget.dart';
import '../../../../dependency_injection.dart';
import '../../../attendance/presentation/bloc/attendance_bloc.dart';
import '../../../auth/data/models/user_model.dart';
import '../../../lecture/data/models/lecture_model.dart';
import '../../../lecture/presentation/widgets/lecture_meetings_widget.dart';
import '../widgets/AddEvaluationDialog.dart';
import '../widgets/AddResearchDialog.dart';
import '../widgets/add_attendance_dialog.dart';
import '../widgets/pdf_generator.dart';

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
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                title: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.book, color: Colors.teal),
                  title: const Text(
                    "المواد التي يدرسها",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                children: [
                  if (member.subjects.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children:
                            member.subjects.map((subject) {
                              return Chip(
                                label: Text(subject.name),
                                backgroundColor: Colors.teal.withOpacity(0.2),
                                labelStyle: const TextStyle(color: Colors.teal),
                              );
                            }).toList(),
                      ),
                    )
                  else
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "لا توجد مواد",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                ],
              ),
              _buildDivider(), // Divider moved HERE (outside ExpansionTile)
              // Collapsible section for evaluations
              ExpansionTile(
                title: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.star, color: Colors.blue),
                  title: const Text(
                    "التقييمات",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                children: [
                  if (member.evaluations.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children:
                            member.evaluations.map((evaluation) {
                              return Chip(
                                label: Text(
                                  "${evaluation.score} - ${evaluation.comment ?? "بدون تعليق"}",
                                ),
                                backgroundColor: Colors.blue.withOpacity(0.2),
                                labelStyle: const TextStyle(color: Colors.blue),
                              );
                            }).toList(),
                      ),
                    )
                  else
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "لا توجد تقييمات",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                ],
              ),
              _buildDivider(), // Divider moved HERE (outside ExpansionTile)
              // Collapsible section for researches
              ExpansionTile(
                title: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.article, color: Colors.purple),
                  title: const Text(
                    "الأبحاث",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                children: [
                  if (member.researches.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children:
                            member.researches.map((research) {
                              return Chip(
                                label: Text(research.name),
                                backgroundColor: Colors.purple.withOpacity(0.2),
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
                      child: Text(
                        "لا توجد أبحاث",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                ],
              ),
              _buildDivider(), // Divider moved HERE (outside ExpansionTile)
              // Collapsible section for attendance
              ExpansionTile(
                title: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(
                    Icons.calendar_today,
                    color: Colors.orange,
                  ),
                  title: const Text(
                    "الحضور",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                children: [
                  if (member.attendances.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children:
                            member.attendances.map((attendance) {
                              return Chip(
                                label: Text(
                                  "${attendance.arrivalDate!.toDate()} - ${attendance.status}",
                                ),
                                backgroundColor: Colors.orange.withOpacity(0.2),
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
                      child: Text(
                        "لا توجد سجلات حضور",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                ],
              ),
              _buildDivider(), // Divider moved HERE (outside ExpansionTile)
              // Collapsible section for lectures
              ExpansionTile(
                title: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.school, color: Colors.green),
                  title: const Text(
                    "المحاضرات",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                children: [
                  if (member.lectures.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children:
                            member.lectures.map((lecture) {
                              return LectureMeetingsWidget(
                                lecture: lecture,
                                onTap:
                                    (startTime) => _showAddAttendanceDialog(
                                      context,
                                      lecture,
                                      startTime, // Pass the startTime
                                    ),
                              );
                            }).toList(),
                      ),
                    )
                  else
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "لا توجد محاضرات",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                ],
              ),
              _buildDivider(), // Divider moved HERE (outside ExpansionTile)
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _printMemberDetails(BuildContext context) async {
    final pdfGenerator = PdfGenerator(member: member);
    final pdf = await pdfGenerator.generatePdf();
    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save(),
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

  void _showAddAttendanceDialog(
    BuildContext context,
    Lecture lecture,
    DateTime startTime,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return BlocProvider(
          create: (context) => getIt<AttendanceBloc>(),
          child: AddAttendanceDialog(
            member: member,
            lecture: lecture,
            initialStartTime: startTime, // Pass the startTime
          ),
        );
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
}
