// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../lectureSchedule/presentation/bloc/lecture_schedule_bloc.dart';
// import '../../../subject/data/models/subject_model.dart';
// import '../../data/models/attendance_model.dart';
// import '../bloc/attendance_bloc.dart';
// import '../../../subject/presentation/bloc/subject_bloc.dart'; // Import SubjectBloc

// class AddAttendancePage extends StatelessWidget {
//   const AddAttendancePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final TextEditingController statusController = TextEditingController();
//     final TextEditingController dateController = TextEditingController();

//     return Scaffold(
//       appBar: AppBar(title: const Text('Add Attendance')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             // Date Picker
//             TextField(
//               controller: dateController,
//               decoration: const InputDecoration(
//                 labelText: 'Select Date',
//                 suffixIcon: Icon(Icons.calendar_today),
//               ),
//               onTap: () async {
//                 final selectedDate = await showDatePicker(
//                   context: context,
//                   initialDate: DateTime.now(),
//                   firstDate: DateTime(2000),
//                   lastDate: DateTime(2100),
//                 );
//                 if (selectedDate != null) {
//                   dateController.text = selectedDate.toIso8601String().split('T')[0];
//                 }
//               },
//             ),
//             const SizedBox(height: 16),

//             // Subject Dropdown
//             BlocBuilder<SubjectBloc, SubjectState>(
//               builder: (context, subjectState) {
//                 return BlocBuilder<LectureScheduleBloc, LectureScheduleState>(
//                   builder: (context, scheduleState) {
//                     // Get all subjects for the department
//                     final allSubjects = subjectState.subjects
//                         .where((subject) => subject.department == 'departmentId') // Replace with actual department ID
//                         .toList();

//                     // Get subjects already scheduled on the selected day
//                     final selectedDay = dateController.text.isNotEmpty
//                         ? DateTime.parse(dateController.text)
//                         : null;

//                     final scheduledSubjects = scheduleState is LectureScheduleLoaded
//                         ? scheduleState.schedules
//                             .where((schedule) =>
//                                 schedule.date.toDate().toIso8601String().split('T')[0] ==
//                                 selectedDay?.toIso8601String().split('T')[0])
//                             .map((schedule) => schedule.subject)
//                             .toList()
//                         : [];

//                     // Filter out subjects that are already scheduled on the same day
//                     final availableSubjects = allSubjects
//                         .where((subject) => !scheduledSubjects.any(
//                               (scheduledSubject) => scheduledSubject.id == subject.id,
//                             ))
//                         .toList();

//                     return DropdownButtonFormField<Subject>(
//                       hint: const Text('Select Subject'),
//                       items: availableSubjects
//                           .map((subject) => DropdownMenuItem<Subject>(
//                                 value: subject,
//                                 child: Text(subject.name),
//                               ))
//                           .toList(),
//                       onChanged: (Subject? value) {
//                         // Handle subject selection
//                       },
//                       validator: (value) {
//                         if (value == null) {
//                           return 'Please select a subject';
//                         }
//                         return null;
//                       },
//                     );
//                   },
//                 );
//               },
//             ),
//             const SizedBox(height: 16),

//             // Status Field
//             TextField(
//               controller: statusController,
//               decoration: const InputDecoration(labelText: 'Status'),
//             ),
//             const SizedBox(height: 20),

//             // Save Button
//             ElevatedButton(
//               onPressed: () {
//                 if (dateController.text.isEmpty) {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text('Please select a date')),
//                   );
//                   return;
//                 }

//                 final selectedDate = DateTime.parse(dateController.text);
//                 final attendance = AttendanceModel(
//                   byUser: UserModel(id: '1', name: 'John Doe'), // Replace with actual user
//                   arrivalDate: Timestamp.fromDate(selectedDate),
//                   subject: Subject(id: '1', name: 'Math'), // Replace with selected subject
//                   status: statusController.text,
//                 );
//                 context.read<AttendanceBloc>().add(AttendanceEvent.add(attendance));
//                 Navigator.pop(context);
//               },
//               child: const Text('Save'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }