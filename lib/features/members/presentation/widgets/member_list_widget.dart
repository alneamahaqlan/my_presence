import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:my_presence/core/routes/app_pages.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../../../../core/models/status.dart';
import '../../../../core/utils/ui.dart';
import '../../../../core/widgets/drop_down_widget.dart';
import '../../../attendance/data/models/attendance_model.dart';
import '../../../auth/data/models/user_model.dart';
import '../../../faculty/data/models/faculty_model.dart';
import '../../../lecture/data/models/lecture_model.dart';
import '../bloc/member_bloc.dart';
import 'member_card.dart';

class MemberListWidget extends StatefulWidget {
  const MemberListWidget({super.key});

  @override
  State<MemberListWidget> createState() => _MemberListWidgetState();
}

class _MemberListWidgetState extends State<MemberListWidget> {
  String? selectedFacultyId;
  bool filterByCurrentDay = true;

  String _getCurrentDayName() {
    return DateFormat('EEEE', 'ar').format(DateTime.now());
  }

  List<Lecture> _filterLecturesForToday(List<Lecture> lectures) {
    final today = DateTime.now();
    final todayName = _getCurrentDayName();

    return lectures.where((lecture) {
      return lecture.meetings.any((meeting) {
        final meetingDate = meeting.startTime.toDate();
        final meetingDayName = DateFormat('EEEE', 'ar').format(meetingDate);

        return meetingDayName == todayName &&
            meetingDate.year == today.year &&
            meetingDate.month == today.month &&
            meetingDate.day == today.day;
      });
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MemberBloc, MemberState>(
      listener: (context, state) {
        state.createStatus.maybeWhen(
          orElse: () {},
          success: () {
            Ui.showSnackBar(
              context: context,
              message: 'تم إضافة العضو بنجاح',
              type: SnackBarType.success,
            );
          },
          failed: () {
            Ui.showSnackBar(
              context: context,
              message: state.errorMessage!,
              type: SnackBarType.error,
            );
          },
        );
        state.editStatus.maybeWhen(
          orElse: () {},
          success: () {
            Ui.showSnackBar(
              context: context,
              message: 'تم تعديل العضو بنجاح',
              type: SnackBarType.success,
            );
          },
          failed: () {
            Ui.showSnackBar(
              context: context,
              message: state.errorMessage!,
              type: SnackBarType.error,
            );
          },
        );
      },
      builder: (context, state) {
        if (state.status == Status.loading()) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.status == Status.failed()) {
          return Center(
            child: Text('فشل في تحميل الأعضاء: ${state.errorMessage}'),
          );
        } else if (state.members.isEmpty) {
          return const Center(child: Text('لا يوجد أعضاء'));
        } else {
          // Get unique faculties from members' lectures
          final faculties =
              state.members
                  .expand(
                    (member) =>
                        member.lectures
                            .map(
                              (lecture) => lecture.schedule.department.faculty,
                            )
                            .whereType<Faculty>(),
                  )
                  .fold<Map<String, Faculty>>({}, (map, faculty) {
                    if (!map.containsKey(faculty.id)) {
                      map[faculty.id] = faculty;
                    }
                    return map;
                  })
                  .values
                  .toList();

          // Filter members based on selected faculty and current day
          final filteredMembers =
              state.members
                  .map((member) {
                    // First filter by faculty if selected
                    var lectures =
                        selectedFacultyId == null
                            ? member.lectures
                            : member.lectures.where(
                              (lecture) =>
                                  lecture.schedule.department.faculty?.id ==
                                  selectedFacultyId,
                            );

                    // Then filter by current day if enabled
                    if (filterByCurrentDay) {
                      lectures = _filterLecturesForToday(lectures.toList());
                    }

                    return member.copyWith(lectures: lectures.toList());
                  })
                  .where((member) => member.lectures.isNotEmpty)
                  .toList();

          return Column(
            children: [
              // Filter controls row
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8,
                ),
                child: Row(
                  children: [
                    // Faculty filter dropdown
                    if (faculties.isNotEmpty)
                      Expanded(
                        child: DropDownWidget<Faculty>(
                          hint: 'اختر الكلية',
                          items: faculties,
                          selectedValue:
                              selectedFacultyId == null
                                  ? null
                                  : faculties.firstWhere(
                                    (f) => f.id == selectedFacultyId,
                                    orElse:
                                        () =>
                                            Faculty(id: '', name: 'غير معروف'),
                                  ),
                          onChanged: (Faculty? faculty) {
                            setState(() {
                              selectedFacultyId = faculty?.id;
                            });
                          },
                          displayText: (Faculty faculty) => faculty.name,
                        ),
                      ),

                    const SizedBox(width: 10),

                    // Current day filter toggle
                    Tooltip(
                      message: 'تصفية حسب اليوم الحالي',
                      child: FilterChip(
                        label: Text('اليوم: ${_getCurrentDayName()}'),
                        selected: filterByCurrentDay,
                        onSelected: (bool selected) {
                          setState(() {
                            filterByCurrentDay = selected;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 8),

              Expanded(
                child:
                    filteredMembers.isEmpty
                        ? const Center(child: Text('لا توجد نتائج'))
                        : ListView.builder(
                          itemCount: filteredMembers.length,
                          itemBuilder: (context, index) {
                            final member = filteredMembers[index];
                            return _buildDismissibleMemberCard(context, member);
                          },
                        ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () async {
                    final pdfGenerator = PdfGenerator(
                      title:
                          filterByCurrentDay
                              ? 'قائمة حضور يوم ${_getCurrentDayName()}'
                              : 'قائمة الحضور الأسبوعية',
                      footer:
                          'تم الإنشاء في ${DateFormat('yyyy-MM-dd').format(DateTime.now())}',
                      headers: [
                        'اسم المستخدم',
                        'المادة',
                        'رمز المادة',
                        'رقم المادة',
                        'الشعبة',
                        'القاعة',
                        'وقت البداية',
                        'وقت النهاية',
                      ],
                      attendances:
                          filteredMembers
                              .expand((member) => member.attendances)
                              .where((attendance) {
                                if (!filterByCurrentDay) return true;
                                final date = attendance.arrivalDate?.toDate();
                                return date != null &&
                                    date.year == DateTime.now().year &&
                                    date.month == DateTime.now().month &&
                                    date.day == DateTime.now().day;
                              })
                              .toList(),
                      members: filteredMembers,
                      facultyId: selectedFacultyId,
                      filterByCurrentDay: filterByCurrentDay,
                    );
                    await pdfGenerator.generateAndPrintPdf();
                  },
                  child: Text(
                    filterByCurrentDay
                        ? 'كشف المتابعة اليومية'
                        : 'كشف المتابعة الأسبوعية',
                  ),
                ),
              ),
            ],
          );
        }
      },
    );
  }

  Widget _buildDismissibleMemberCard(BuildContext context, UserModel member) {
    return Dismissible(
      key: Key(member.id!),
      direction:
          member.isActive
              ? DismissDirection.endToStart
              : DismissDirection.startToEnd,
      background: _buildDismissibleBackground(member),
      confirmDismiss: (direction) async {
        return await Ui.showCustomDialog(
          context: context,
          title: member.isActive ? 'تعطيل العضو' : 'تفعيل العضو',
          message:
              member.isActive
                  ? 'هل أنت متأكد أنك تريد تعطيل هذا العضو؟'
                  : 'هل أنت متأكد أنك تريد تفعيل هذا العضو؟',
          confirmText: member.isActive ? 'تعطيل' : 'تفعيل',
          cancelText: 'إلغاء',
          confirmButtonColor: member.isActive ? Colors.red : Colors.green,
        );
      },
      onDismissed: (direction) {
        context.read<MemberBloc>().add(
          MemberEvent.deleteMember(
            userId: member.id,
            isActive: !member.isActive,
          ),
        );
      },
      child: InkWell(
        onTap: () {
          context.pushNamed(AppRoutes.viewMember, extra: member);
        },
        child: MemberCard(
          name: member.name,
          email: member.email,
          role: member.role.name,
          activityStatus: member.activityStatus.name,
          onEdit: () {
            context.pushNamed(AppRoutes.editMember, extra: member);
          },
        ),
      ),
    );
  }

  Widget _buildDismissibleBackground(UserModel member) {
    return Container(
      color: member.isActive ? Colors.red : Colors.green,
      alignment: member.isActive ? Alignment.centerRight : Alignment.centerLeft,
      padding: EdgeInsets.only(
        right: member.isActive ? 20 : 0,
        left: member.isActive ? 0 : 20,
      ),
      child: const Icon(Icons.delete, color: Colors.white),
    );
  }
}

class PdfGenerator {
  final String title;
  final String footer;
  final List<String> headers;
  final List<Attendance> attendances;
  final List<UserModel> members;
  final String? facultyId;
  final bool filterByCurrentDay;
  final String fontPath;
  final String dateFormat;
  final String timeFormat;

  PdfGenerator({
    required this.title,
    required this.footer,
    required this.headers,
    required this.attendances,
    required this.members,
    this.facultyId,
    this.filterByCurrentDay = false,
    this.fontPath = "assets/fonts/Amiri-Regular.ttf",
    this.dateFormat = 'yyyy-MM-dd',
    this.timeFormat = 'hh:mm a',
  });

  Future<void> generateAndPrintPdf() async {
    final pdf = pw.Document();
    final ttf = await _loadFont(fontPath);

    // Filter lectures based on faculty if selected
    final filteredMembers =
        members
            .map((member) {
              var lectures =
                  facultyId == null
                      ? member.lectures
                      : member.lectures.where(
                        (lecture) =>
                            lecture.schedule.department.faculty?.id ==
                            facultyId,
                      );

              // Then filter by current day if enabled
              if (filterByCurrentDay) {
                lectures = lectures.where((lecture) {
                  return lecture.meetings.any((meeting) {
                    final meetingDate = meeting.startTime.toDate();
                    return meetingDate.year == DateTime.now().year &&
                        meetingDate.month == DateTime.now().month &&
                        meetingDate.day == DateTime.now().day;
                  });
                });
              }

              return member.copyWith(lectures: lectures.toList());
            })
            .where((member) => member.lectures.isNotEmpty)
            .toList();

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        margin: pw.EdgeInsets.all(16),
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            children: [
              _buildTitle(ttf, title),
              _buildDateSection(ttf, dateFormat),
              if (facultyId != null) _buildFacultyInfo(ttf, filteredMembers),
              if (filterByCurrentDay) _buildDayInfo(ttf),
              _buildMemberLecturesTable(ttf, filteredMembers),
              _buildFooter(ttf, footer),
            ],
          );
        },
      ),
    );

    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save(),
    );
  }

  pw.Widget _buildFacultyInfo(pw.Font ttf, List<UserModel> members) {
    final faculty = members
        .expand((member) => member.lectures)
        .map((lecture) => lecture.schedule.department.faculty)
        .whereType<Faculty>()
        .firstWhere(
          (f) => f.id == facultyId,
          orElse: () => Faculty(id: '', name: 'غير معروف'),
        );

    return pw.Padding(
      padding: const pw.EdgeInsets.only(bottom: 8),
      child: pw.Text(
        'الكلية: ${faculty.name}',
        style: pw.TextStyle(
          font: ttf,
          fontSize: 14,
          fontWeight: pw.FontWeight.bold,
        ),
        textDirection: pw.TextDirection.rtl,
      ),
    );
  }

  pw.Widget _buildDayInfo(pw.Font ttf) {
    return pw.Padding(
      padding: const pw.EdgeInsets.only(bottom: 8),
      child: pw.Text(
        'اليوم: ${DateFormat('EEEE', 'ar').format(DateTime.now())}',
        style: pw.TextStyle(
          font: ttf,
          fontSize: 14,
          fontWeight: pw.FontWeight.bold,
        ),
        textDirection: pw.TextDirection.rtl,
      ),
    );
  }

  pw.Widget _buildMemberLecturesTable(pw.Font ttf, List<UserModel> members) {
    final data =
        members.expand((member) {
          return member.lectures.map((lecture) {
            return [
              _buildText(member.name, ttf),
              _buildText(lecture.subject.name, ttf),
              _buildText(lecture.subject.code, ttf),
              _buildText(lecture.subject.number, ttf),
              _buildText(lecture.schedule.division, ttf),
              _buildText(lecture.hall, ttf),
              _buildText(
                DateFormat(timeFormat, 'ar').format(lecture.startTime.toDate()),
                ttf,
              ),
              _buildText(
                DateFormat(timeFormat, 'ar').format(lecture.endTime.toDate()),
                ttf,
              ),
            ];
          });
        }).toList();

    if (data.isEmpty) {
      return pw.Padding(
        padding: const pw.EdgeInsets.only(top: 16),
        child: _buildText('لا توجد محاضرات', ttf),
      );
    }

    return pw.TableHelper.fromTextArray(
      headers: headers.map((header) => _buildText(header, ttf)).toList(),
      data: data,
      cellAlignment: pw.Alignment.center,
      headerAlignment: pw.Alignment.center,
      tableWidth: pw.TableWidth.max,
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

  Future<pw.Font> _loadFont(String fontPath) async {
    final fontData = await rootBundle.load(fontPath);
    return pw.Font.ttf(fontData.buffer.asByteData());
  }

  pw.Widget _buildTitle(pw.Font ttf, String title) {
    return pw.Text(
      title,
      style: pw.TextStyle(
        font: ttf,
        fontSize: 18,
        fontWeight: pw.FontWeight.bold,
      ),
      textDirection: pw.TextDirection.rtl,
      textAlign: pw.TextAlign.center,
    );
  }

  pw.Widget _buildDateSection(pw.Font ttf, String dateFormat) {
    return pw.Column(
      children: [
        pw.SizedBox(height: 8),
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            _buildText("اليوم: ..............", ttf),
            _buildText(
              "التاريخ: ${DateFormat(dateFormat, 'ar').format(DateTime.now())}",
              ttf,
            ),
          ],
        ),
        pw.SizedBox(height: 16),
      ],
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
      style: pw.TextStyle(font: ttf),
      textDirection: pw.TextDirection.rtl,
      textAlign: pw.TextAlign.center,
    );
  }
}
