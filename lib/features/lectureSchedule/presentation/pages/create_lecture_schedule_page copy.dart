// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../auth/data/models/user_model.dart';
// import '../../../department/data/models/department_model.dart';
// import '../../../department/presentation/bloc/department_bloc.dart';
// import '../../../faculty/presentation/bloc/faculty_bloc.dart';
// import '../../../subject/data/models/subject_model.dart';

// class CreateLectureSchedulePage extends StatefulWidget {
//   const CreateLectureSchedulePage({super.key});

//   @override
//   _CreateLectureSchedulePageState createState() =>
//       _CreateLectureSchedulePageState();
// }

// class _CreateLectureSchedulePageState extends State<CreateLectureSchedulePage> {
//   final _formKey = GlobalKey<FormState>();


//   Subject? _selectedSubject;
//   UserModel? _selectedUser;
  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Create Lecture Schedule')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 BlocBuilder<DepartmentBloc, DepartmentState>(
//                   builder: (context, state) {
//                     return _buildDropdown<Department>(
//                       context,
//                       hint: 'Faculty',
//                       items: state.faculties,
//                       selectedValue: selectedFaculty,
//                       onChanged: (faculty) {
//                         setState(() {
//                           selectedFaculty = faculty;
//                         });
//                       },
//                       displayTex: (faculty) => faculty.name,
//                     );
//                   },
//                 ),
//                 // Subject Dropdown
//                 BlocBuilder<SubjectBloc, SubjectState>(
//                   builder: (context, subjectState) {
//                     return BlocBuilder<
//                       LectureScheduleBloc,
//                       LectureScheduleState
//                     >(
//                       builder: (context, scheduleState) {
//                         // Get all subjects for the department
//                         final allSubjects =
//                             subjectState.subjects

//                                 .toList();

//                         // Get subjects already scheduled on the selected day
//                         final selectedDay =
//                             _startDateController.text.isNotEmpty
//                                 ? DateTime.parse(_startDateController.text)
//                                 : null;

//                         final scheduledSubjects =
//                             // scheduleState is LectureScheduleLoaded
//                             //     ? scheduleState.schedules
//                             //         .map((schedule) => schedule.subject)
//                             //         .toList()
//                             //     :
//                                  [];

//                         // Filter out subjects that are already scheduled on the same day
//                         final availableSubjects =
//                             allSubjects
//                                 .where(
//                                   (subject) =>
//                                       !scheduledSubjects.any(
//                                         (scheduledSubject) =>
//                                             scheduledSubject.id == subject.id,
//                                       ),
//                                 )
//                                 .toList();

//                         return DropDownWidget<Subject>(
//                           hint: 'Select Subject',
//                           items: availableSubjects,
//                           selectedValue: _selectedSubject,
//                           onChanged: (Subject? value) {
//                             setState(() {
//                               _selectedSubject = value;
//                             });
//                           },
//                           displayText: (Subject subject) => subject.name,
//                           validator: (value) {
//                             if (value == null) {
//                               return 'Please select a subject';
//                             }
//                             return null;
//                           },
//                         );
//                       },
//                     );
//                   },
//                 ),
//                 SizedBox(height: 16),

//                 // User Dropdown
//                 BlocBuilder<MemberBloc, MemberState>(
//                   builder: (context, state) {
//                     return DropDownWidget<UserModel>(
//                       hint: 'Select User',
//                       items:
//                           state.members
//                               .where((user) => user.role == Role.teacher)
//                               .toList(),
//                       selectedValue: _selectedUser,
//                       onChanged: (UserModel? value) {
//                         setState(() {
//                           _selectedUser = value;
//                         });
//                       },
//                       displayText: (UserModel user) => user.name,
//                       validator: (value) {
//                         if (value == null) {
//                           return 'Please select a user';
//                         }
//                         return null;
//                       },
//                     );
//                   },
//                 ),
//                 SizedBox(height: 16),
//                 TextFormField(
//                   controller: _hallController,
//                   decoration: const InputDecoration(labelText: 'Hall Name'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter a hall name';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 16),

//                 // Start Date and Time Field
//                 TextFormField(
//                   controller: _startDateController,
//                   decoration: InputDecoration(
//                     labelText: 'Start Date and Time',
//                     suffixIcon: IconButton(
//                       icon: Icon(Icons.calendar_today),
//                       onPressed: () => _selectStartDate(context),
//                     ),
//                   ),
//                   readOnly: true, // Prevent manual editing
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please select a start date and time';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 16),

//                 // End Date and Time Field
//                 TextFormField(
//                   controller: _endDateController,
//                   decoration: InputDecoration(
//                     labelText: 'End Date and Time',
//                     suffixIcon: IconButton(
//                       icon: Icon(Icons.calendar_today),
//                       onPressed: () {}
//                       //  _selectEndDate(context),
//                     ),
//                   ),
//                   readOnly: true, // Prevent manual editing
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please select an end date and time';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 20),

//                 // Create Button
//                 ElevatedButton(
//                   onPressed: () {
//                     if (_formKey.currentState!.validate()) {
//                       final newStart = DateTime.parse(
//                         _startDateController.text,
//                       );
//                       final newEnd = DateTime.parse(_endDateController.text);

//                       // Prevent adding schedules on Fridays
//                       if (newStart.weekday == DateTime.friday) {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(
//                             content: Text(
//                               'Schedules cannot be added on Fridays.',
//                             ),
//                           ),
//                         );
//                         return;
//                       }

//                       // Fetch existing schedules for the selected user on the same day
//                       final state = context.read<LectureScheduleBloc>().state;
//                       if (state is LectureScheduleLoaded) {
//                         final userSchedules =
//                             state.schedules
//                                 .where(
//                                   (schedule) =>
//                                       schedule.user.id == _selectedUser?.id &&
//                                       schedule.date.toDate().day ==
//                                           newStart.day &&
//                                       schedule.date.toDate().month ==
//                                           newStart.month &&
//                                       schedule.date.toDate().year ==
//                                           newStart.year,
//                                 )
//                                 .toList();

//                         // Check for overlapping schedules
//                         if (_isScheduleOverlapping(
//                           userSchedules,
//                           newStart,
//                           newEnd,
//                         )) {
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             SnackBar(
//                               content: Text(
//                                 'The selected time overlaps with an existing schedule for this user.',
//                               ),
//                             ),
//                           );
//                           return; // Prevent creating the schedule
//                         }
//                       }

//                       // If no overlapping schedules, proceed to create the new schedule
//                       final schedule = LectureSchedule(
//                         subject: _selectedSubject!,
//                         user: _selectedUser!,
//                         date: Timestamp.fromDate(newStart),
//                         endDate: Timestamp.fromDate(newEnd),
//                         hall: _hallController.text,
//                         lectures: getLectures(
//                           Timestamp.fromDate(
//                             widget.department.termStart.toDate(),
//                           ),
//                           Timestamp.fromDate(
//                             widget.department.termEnd.toDate(),
//                           ),
//                         ),
//                       );

//                       context.read<LectureScheduleBloc>().add(
//                         AddLectureSchedule(schedule),
//                       );

//                       Navigator.pop(context);
//                     }
//                   },
//                   child: Text('Create'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   // List<Lecture> getLectures(Timestamp start, Timestamp end) {
//   //   List<Lecture> lectures = [];

//   //   generateWeeklyDates(start: start, end: end).forEach((date) {
//   //     lectures.add(Lecture(date: date));
//   //   });

//   //   return lectures;
//   // }

//   List<Timestamp> generateWeeklyDates({
//     required Timestamp start,
//     required Timestamp end,
//   }) {
//     DateTime startDate = start.toDate();
//     DateTime endDate = end.toDate();
//     List<Timestamp> weeklyDates = [];

//     DateTime current = startDate;
//     while (current.isBefore(endDate) || current.isAtSameMomentAs(endDate)) {
//       weeklyDates.add(
//         Timestamp.fromDate(current),
//       ); // Convert DateTime to Timestamp
//       current = current.add(const Duration(days: 7)); // Move to the next week
//     }

//     return weeklyDates;
//   }
// }
