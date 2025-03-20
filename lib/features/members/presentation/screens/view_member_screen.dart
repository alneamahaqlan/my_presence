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
import '../widgets/AddEvaluationDialog.dart';
import '../widgets/AddResearchDialog.dart';
import '../widgets/add_attendance_dialog.dart';
import '../widgets/pdf_generator.dart';

class ViewMemberScreen extends StatelessWidget {
  final UserModel member;

  const ViewMemberScreen({super.key, required this.member});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

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
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // ... (rest of the UI code)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _printMemberDetails(BuildContext context) async {
    final pdf = await PdfGenerator.generatePdf(member);
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

  void _showAddAttendanceDialog(BuildContext context, Lecture lecture) {
    showDialog(
      context: context,
      builder: (context) {
        return BlocProvider(
          create: (context) => getIt<AttendanceBloc>(),
          child: AddAttendanceDialog(member: member, lecture: lecture),
        );
      },
    );
  }
}
