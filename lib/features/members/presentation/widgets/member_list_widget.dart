import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_presence/core/routes/app_pages.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../../../../core/models/status.dart';
import '../../../../core/utils/ui.dart';
import '../../../attendance/data/models/attendance_model.dart';
import '../bloc/member_bloc.dart';
import 'member_card.dart';

class MemberListWidget extends StatelessWidget {
  const MemberListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MemberBloc, MemberState>(
      builder: (context, state) {
        if (state.status == Status.loading()) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.status == Status.failed()) {
          return Center(
            child: Text('فشل في تحميل الأعضاء: ${state.errorMessage}'),
          );
        } else if (state.members.isEmpty) {
          return const Center(child: Text('لا يوجد أعضاء.'));
        } else {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: state.members.length,
                  itemBuilder: (context, index) {
                    final member = state.members[index];
                    return Dismissible(
                      key: Key(member.id!),
                      direction:
                          member.isActive
                              ? DismissDirection.endToStart
                              : DismissDirection.startToEnd,
                      background: Container(
                        color: member.isActive ? Colors.red : Colors.green,
                        alignment:
                            member.isActive
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                        padding: EdgeInsets.only(
                          right: member.isActive ? 20 : 0,
                          left: member.isActive ? 0 : 20,
                        ),
                        child: const Icon(Icons.delete, color: Colors.white),
                      ),
                      confirmDismiss: (direction) async {
                        return await Ui.showCustomDialog(
                          context: context,
                          title:
                              member.isActive
                                  ? 'تعطيل العضو'.tr()
                                  : 'تفعيل العضو'.tr(),
                          message:
                              member.isActive
                                  ? 'هل أنت متأكد أنك تريد تعطيل هذا العضو؟'
                                      .tr()
                                  : 'هل أنت متأكد أنك تريد تفعيل هذا العضو؟'
                                      .tr(),
                          confirmText:
                              member.isActive ? 'تعطيل'.tr() : 'تفعيل'.tr(),
                          cancelText: 'إلغاء'.tr(),
                          confirmButtonColor:
                              member.isActive ? Colors.red : Colors.green,
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
                          print(member.attendances.length);
                          context.pushNamed(
                            AppRoutes.viewMember,
                            extra: member,
                          );
                        },
                        child: MemberCard(
                          name: member.name,
                          email: member.email,
                          role: member.role.name,
                          activityStatus: member.activityStatus.name,
                          onEdit: () {
                            context.pushNamed(
                              AppRoutes.editMember,
                              extra: member,
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  // Assuming `state.members[index].attendances` contains the list of attendances
                  final attendances =
                      state.members
                          .expand((member) => member.attendances)
                          .toList();
                  final pdfGenerator = PdfGenerator(
                    title: 'قائمة الحضور',
                    footer:
                        'تم الإنشاء في ${DateFormat('yyyy-MM-dd').format(DateTime.now())}',
                    headers: [
                      'اسم المستخدم',
                      'المادة',
                      'القاعة',
                      'تاريخ الحضور',
                      'الحالة',
                    ],
                    attendances: attendances,
                  );
                  await pdfGenerator.generateAndPrintPdf();
                },
                child: Text('طباعة قائمة الحضور'),
              ),
            ],
          );
        }
      },
    );
  }
}

class PdfGenerator {
  final String title;
  final String footer;
  final List<String> headers;
  final List<Attendance> attendances;
  final String fontPath;
  final String dateFormat;
  final String timeFormat;

  PdfGenerator({
    required this.title,
    required this.footer,
    required this.headers,
    required this.attendances,
    this.fontPath = "assets/fonts/Amiri-Regular.ttf",
    this.dateFormat = 'yyyy-MM-dd',
    this.timeFormat = 'hh:mm a',
  });

  Future<void> generateAndPrintPdf() async {
    final pdf = pw.Document();
    final ttf = await _loadFont(fontPath);

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
              _buildTable(ttf, headers, attendances),
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

  pw.Widget _buildTable(
    pw.Font ttf,
    List<String> headers,
    List<Attendance> attendances,
  ) {
    return pw.TableHelper.fromTextArray(
      data: attendances.map((attendance) => _mapRow(attendance, ttf)).toList(),
      context: null,
      cellAlignment: pw.Alignment.centerRight,
      headerAlignment: pw.Alignment.centerRight,
      headerStyle: pw.TextStyle(
        fontWeight: pw.FontWeight.bold,
        font: ttf,
        fontSize: 12,
      ),
      cellStyle: pw.TextStyle(font: ttf, fontSize: 10),
      headers: headers.map((header) => _buildText(header, ttf)).toList(),
      border: pw.TableBorder.all(),
    );
  }

  List<pw.Widget> _mapRow(Attendance attendance, pw.Font ttf) {
    return [
      _buildText(attendance.byUser.name, ttf), // User (attendee) name
      _buildText(attendance.lecture.subject.name, ttf), // Lecture subject
      _buildText(attendance.lecture.hall, ttf), // Lecture hall
      _buildText(
        attendance.arrivalDate != null
            ? DateFormat(
              dateFormat,
              'ar',
            ).format(attendance.arrivalDate!.toDate())
            : 'غير محدد',
        ttf,
      ), // Arrival date
      _buildText(attendance.status, ttf), // Attendance status
    ];
  }

  pw.Widget _buildFooter(pw.Font ttf, String footer) {
    return pw.Row(
      mainAxisAlignment: pw.MainAxisAlignment.end,
      children: [_buildText(footer, ttf)],
    );
  }

  pw.Text _buildText(String text, pw.Font ttf) {
    return pw.Text(
      text.tr(),
      style: pw.TextStyle(font: ttf),
      textDirection: pw.TextDirection.rtl,
      textAlign: pw.TextAlign.center,
    );
  }
}
