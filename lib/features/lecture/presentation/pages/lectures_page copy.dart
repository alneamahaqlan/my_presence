// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';
// import 'package:intl/intl.dart';

// import '../../../../core/models/status.dart';
// import '../../../../core/routes/app_pages.dart';
// import '../../../../dependency_injection.dart';
// import '../../../department/data/models/department_model.dart';
// import '../../../lectureSchedule/data/models/schedule_model.dart';
// import '../../data/models/lecture_model.dart';
// import '../bloc/lecture_bloc.dart';
// import '../widgets/lecture_card.dart';
// import '../widgets/pdf_generator.dart';


// class LecturesPage extends StatelessWidget {
//   const LecturesPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final router = getIt.call<GoRouter>();
//     final schedule =
//         (router.state.extra as Map<String, dynamic>?)?['schedule'] as Schedule;
//     final department =
//         (router.state.extra as Map<String, dynamic>?)?['department'] as Department;

//     context.read<LectureBloc>().add(SetSchedule(schedule: schedule, department: department));
//     context.read<LectureBloc>().add(const FetchLectures());

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Lectures'),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.add),
//             onPressed: () {
//               // Navigate to the CreateLecturePage
//               final state = context.read<LectureBloc>().state;
//               context.pushNamed(
//                 AppRoutes.createLecture,
//                 extra: {
//                   'schedule': state.schedule,
//                   'department': state.department,
//                 },
//               );
//             },
//           ),
//           IconButton(
//             icon: const Icon(Icons.print),
//             onPressed: () {
//               final state = context.read<LectureBloc>().state;
//               if (state.status == Status.success()) {
//                 final lectures = state.lectures;
//                 _generatePdf(lectures, state.department!);
//               }
//             },
//           ),
//         ],
//       ),
//       body: BlocBuilder<LectureBloc, LectureState>(
//         builder: (context, state) {
//           if (state.status == Status.loading()) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (state.status == Status.success()) {
//             final lectures = state.lectures;

//             if (lectures.isEmpty) {
//               return _buildEmptyState();
//             }

//             return ListView.builder(
//               padding: const EdgeInsets.all(10),
//               itemCount: lectures.length,
//               itemBuilder: (context, index) {
//                 final lecture = lectures[index];
//                 return LectureCard(lecture: lecture);
//               },
//             );
//           } else {
//             return Center(
//               child: Text(
//                 state.errorMessage ?? 'Failed to load lectures',
//                 style: const TextStyle(color: Colors.red),
//               ),
//             );
//           }
//         },
//       ),
//     );
//   }

//   /// Displays a UI when there are no lectures available.
//   Widget _buildEmptyState() {
//     return const Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(Icons.event_busy, size: 80, color: Colors.grey),
//           SizedBox(height: 10),
//           Text(
//             'No lectures available',
//             style: TextStyle(fontSize: 18, color: Colors.grey),
//           ),
//         ],
//       ),
//     );
//   }

//   /// Generates and prints a PDF using the PdfGenerator class.
//   Future<void> _generatePdf(List<Lecture> lectures, Department department) async {
//     // Map lectures to the required format for PdfGenerator
//     final data = lectures.map((lecture) {
//       final startDate = lecture.startTime.toDate();
//       final endDate = lecture.endTime.toDate();
//       final startTime = DateFormat('hh:mm a', 'ar').format(startDate);
//       final endTime = DateFormat('hh:mm a', 'ar').format(endDate);

//       return {
//         "التوقيع": "...........",
//         "عدد الساعات": "${(endDate.difference(startDate).inHours).abs()}",
//         "اسم عضو هيئة التدريس": lecture.user.name,
//         "إلى": endTime,
//         "وقت المحاضرة من": startTime,
//         "القاعـــة": lecture.hall,
//         "الشعبة": department.name,
//         "رقم المادة": lecture.subject.number,
//         "رمز المادة": lecture.subject.code,
//         "اسم المادة": lecture.subject.name,
//       };
//     }).toList();

//     // Create an instance of PdfGenerator
//     final pdfGenerator = PdfGenerator(
//       title: "كشف بمتابعة اليومية لأعضاء هيئة التدريس",
//       footer: "مدير القسم",
//       headers: [
//         "التوقيع",
//         "عدد الساعات",
//         "اسم عضو هيئة التدريس",
//         "إلى",
//         "وقت المحاضرة من",
//         "القاعـــة",
//         "الشعبة",
//         "رقم المادة",
//         "رمز المادة",
//         "اسم المادة",
//       ],
//       data: data,
//     );

//     // Generate and print the PDF
//     await pdfGenerator.generateAndPrintPdf();
//   }
// }