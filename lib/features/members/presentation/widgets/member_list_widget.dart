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
import '../../../auth/data/models/user_model.dart';
import '../bloc/member_bloc.dart';
import 'member_card.dart';

class MemberListWidget extends StatelessWidget {
  const MemberListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MemberBloc, MemberState>(
      listener: (context, state) {
        if (state.status == Status.success()) {
          // context.read<MemberBloc>().add(const MemberEvent.loadMembers());
          Ui.showSnackBar(
            context: context,
            type: SnackBarType.success,
            message: 'تم تحديث الأعضاء بنجاح.',
          );
        } else if (state.status == Status.failed()) {
          Ui.showSnackBar(
            context: context,
            type: SnackBarType.error,
            message: 'فشل في تحديث الأعضاء: ${state.errorMessage}',
          );
        }
      },
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
                    return _buildDismissibleMemberCard(context, member);
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  final pdfGenerator = PdfGenerator(
                    title: 'قائمه الحظور للاسبوع الحالي',
                    footer:
                        'تم الإنشاء في ${DateFormat('yyyy-MM-dd').format(DateTime.now())}',
                    headers: [
                      'اسم المستخدم',
                      'المادة',
                      'القاعة',
                      'تاريخ الحضور',
                      'الحالة',
                    ],
                    attendances:
                        state.members
                            .expand((member) => member.attendances)
                            .toList(),
                    members: state.members,
                  );
                  await pdfGenerator.generateAndPrintPdf();
                },
                child: Text('كشف المتابعه اليوميه لكليه'),
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
          title: member.isActive ? 'تعطيل العضو'.tr() : 'تفعيل العضو'.tr(),
          message:
              member.isActive
                  ? 'هل أنت متأكد أنك تريد تعطيل هذا العضو؟'.tr()
                  : 'هل أنت متأكد أنك تريد تفعيل هذا العضو؟'.tr(),
          confirmText: member.isActive ? 'تعطيل'.tr() : 'تفعيل'.tr(),
          cancelText: 'إلغاء'.tr(),
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
  final String fontPath;
  final String dateFormat;
  final String timeFormat;

  PdfGenerator({
    required this.title,
    required this.footer,
    required this.headers,
    required this.attendances,
    required this.members,
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
              _buildMemberLecturesTable(ttf, members),
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

  pw.Widget _buildMemberLecturesTable(pw.Font ttf, List<UserModel> members) {
    final headers = [
      'اسم العضو',
      'المادة',
      'رمز المادة',
      'رقم المادة',
      'الشعبة',
      'القاعة',
      'وقت البداية',
      'وقت النهاية',
    ];

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

  // Keep all other helper methods the same (_loadFont, _buildTitle, etc.)
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
