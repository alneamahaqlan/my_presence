import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/utils/enums/academic_level.dart';
import '../../../../core/widgets/drop_down_widget.dart';
import '../../../../core/widgets/text_widget.dart';
import '../../../../dependency_injection.dart';
import '../../../attendance/presentation/bloc/attendance_bloc.dart';
import '../../../attendance/presentation/pages/add_attendance_page.dart';
import '../../../auth/data/models/user_model.dart';
import '../../../department/data/models/department_model.dart';
import '../../../faculty/data/models/faculty_model.dart';
import '../../../lecture/data/models/lecture_model.dart';
import '../../../lecture/presentation/widgets/lecture_meetings_widget.dart';
import '../widgets/AddEvaluationDialog.dart';
import '../widgets/AddResearchDialog.dart';
import '../widgets/pdf_generator.dart';

class ViewMemberScreen extends StatefulWidget {
  final UserModel member;

  const ViewMemberScreen({super.key, required this.member});

  @override
  State<ViewMemberScreen> createState() => _ViewMemberScreenState();
}

class _ViewMemberScreenState extends State<ViewMemberScreen> {
  String? selectedDepartmentId;
  int? selectedLevel;
  String? selectedFacultyId;

  String _getAcademicLevelText(int? level) {
    if (level == null) return "غير متوفر";
    return AcademicLevel.fromValue(level).toString();
  }

  @override
  Widget build(BuildContext context) {
    final faculties = widget.member.lectures
        .map((lecture) => lecture.schedule.department.faculty)
        .whereType<Faculty>()
        .fold<List<Faculty>>([], (list, faculty) {
          if (!list.any((f) => f.id == faculty.id)) {
            list.add(faculty);
          }
          return list;
        });

    final departments =
        widget.member.lectures
            .map((lecture) => lecture.schedule.department)
            .where(
              (department) =>
                  selectedFacultyId == null ||
                  department.faculty?.id == selectedFacultyId,
            )
            .toSet()
            .toList();

    final levels =
        widget.member.lectures
            .where(
              (lecture) =>
                  selectedFacultyId == null ||
                  lecture.schedule.department.faculty?.id == selectedFacultyId,
            )
            .map((lecture) => lecture.schedule.level)
            .toSet()
            .toList()
          ..sort();

    final filteredLectures =
        widget.member.lectures.where((lecture) {
          final facultyMatch =
              selectedFacultyId == null ||
              lecture.schedule.department.faculty?.id == selectedFacultyId;
          final departmentMatch =
              selectedDepartmentId == null ||
              lecture.schedule.department.id == selectedDepartmentId;
          final levelMatch =
              selectedLevel == null || lecture.schedule.level == selectedLevel;
          return facultyMatch && departmentMatch && levelMatch;
        }).toList();

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
              // Filter Row
              if (faculties.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: DropDownWidget<Faculty>(
                    hint: 'اختر الكلية',
                    items: faculties.cast<Faculty>(),
                    selectedValue:
                        selectedFacultyId == null
                            ? null
                            : faculties.cast<Faculty?>().firstWhere(
                              (f) => f?.id == selectedFacultyId,
                              orElse: () => null,
                            ),
                    onChanged: (Faculty? faculty) {
                      setState(() {
                        selectedFacultyId = faculty?.id;
                        selectedDepartmentId =
                            null; // Reset department when faculty changes
                      });
                    },
                    displayText: (Faculty faculty) => faculty.name,
                  ),
                ),

              Row(
                children: [
                  if (departments.isNotEmpty)
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 16.0,
                          right: 8.0,
                        ),
                        child: DropDownWidget<Department>(
                          hint: 'اختر القسم',
                          items: departments,
                          selectedValue:
                              selectedDepartmentId == null
                                  ? null
                                  : departments.firstWhere(
                                    (d) => d.id == selectedDepartmentId,
                                  ),
                          onChanged: (Department? department) {
                            setState(() {
                              selectedDepartmentId = department?.id;
                            });
                          },
                          displayText:
                              (Department department) => department.name,
                        ),
                      ),
                    ),

                  if (levels.isNotEmpty) SizedBox(width: 8.0),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16.0, left: 8.0),
                      child: DropDownWidget<int>(
                        hint: 'اختر المستوى',
                        items: levels,
                        selectedValue: selectedLevel,
                        onChanged: (int? level) {
                          setState(() {
                            selectedLevel = level;
                          });
                        },
                        displayText:
                            (int level) => _getAcademicLevelText(level),
                      ),
                    ),
                  ),
                ],
              ),

              _buildDetailRow(Icons.person, "الاسم", widget.member.name),
              _buildDivider(),
              _buildDetailRow(
                Icons.email,
                "البريد الإلكتروني",
                widget.member.email,
              ),
              _buildDivider(),
              _buildDetailRow(
                Icons.admin_panel_settings,
                "الدور",
                widget.member.role.name == "teacher" ? "مدرس" : "طالب",
              ),
              _buildDivider(),
              _buildDetailRow(
                Icons.circle,
                "حالة النشاط",
                widget.member.activityStatus.name == "active"
                    ? "نشط"
                    : "غير نشط",
              ),
              _buildDivider(),
              _buildDetailRow(
                Icons.school,
                "التخصص",
                widget.member.specialization ?? "غير متوفر",
              ),
              _buildDivider(),
              _buildDetailRow(
                Icons.star,
                "الرتبة الأكاديمية",
                widget.member.academicRank ?? "غير متوفر",
              ),
              _buildDivider(),

              // Subjects Section
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
                  if (widget.member.subjects.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children:
                            widget.member.subjects.map((subject) {
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
              _buildDivider(),

              // Evaluations Section
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
                  if (widget.member.evaluations.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children:
                            widget.member.evaluations.map((evaluation) {
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
              _buildDivider(),

              // Researches Section
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
                  if (widget.member.researches.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children:
                            widget.member.researches.map((research) {
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
              _buildDivider(),

              // Attendance Section
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
                  if (widget.member.attendances.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children:
                            widget.member.attendances.map((attendance) {
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
              _buildDivider(),

              // Lectures Section with Filters
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
                  if (filteredLectures.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children:
                            filteredLectures.map((lecture) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListTile(
                                    title: Text(
                                      lecture.subject.name,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Text(
                                      "${lecture.schedule.department.faculty?.name ?? "غير متوفر"} - ${lecture.schedule.department.name}",
                                      style: const TextStyle(fontSize: 10),
                                    ),
                                    trailing: Text(
                                      "المستوى - ${_getAcademicLevelText(lecture.schedule.level)}",
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  LectureMeetingsWidget(
                                    lecture: lecture,
                                    onTap: (startTime) {
                                      _showAddAttendanceDialog(
                                        context,
                                        lecture,
                                        startTime,
                                      );
                                    },
                                  ),
                                ],
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
              _buildDivider(),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _printMemberDetails(BuildContext context) async {
    final pdfGenerator = PdfGenerator(
      member: widget.member,
      facultyId: selectedFacultyId,
      departmentId: selectedDepartmentId,
      level: selectedLevel,
    );
    final pdf = await pdfGenerator.generatePdf();
    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save(),
    );
  }

  void _showAddEvaluationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AddEvaluationDialog(member: widget.member);
      },
    );
  }

  void _showAddResearchDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AddResearchDialog(member: widget.member);
      },
    );
  }

  void _showAddAttendanceDialog(
    BuildContext context,
    Lecture lecture,
    Timestamp startTime,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return BlocProvider(
          create: (context) => getIt<AttendanceBloc>(),
          child: AddAttendancePage(
            member: widget.member,
            lecture: lecture,
            initialStartTime: startTime.toDate(),
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
