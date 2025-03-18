import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_presence/features/lectureSchedule/presentation/bloc/lecture_schedule_bloc.dart';

import '../../../../core/utils/ui.dart';
import '../../../../core/widgets/drop_down_widget.dart';
import '../../../department/data/models/department_model.dart';
import '../../data/models/schedule_create_body.dart';

class CreateLectureSchedulePage extends StatefulWidget {
  final Department department;

  const CreateLectureSchedulePage({super.key, required this.department});

  @override
  _CreateLectureSchedulePageState createState() =>
      _CreateLectureSchedulePageState();
}

class _CreateLectureSchedulePageState extends State<CreateLectureSchedulePage> {
  final _formKey = GlobalKey<FormState>();
  final _startDateController = TextEditingController();
  final _endDateController = TextEditingController();

  // Department? selectedDepartment;

  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? date = await Ui.selectDate(context);

    if (date != null) {
      setState(() {
        _startDateController.text = _formatDate(date); // Format the date
      });
    }
  }

  Future<void> _selectEndDate(BuildContext context) async {
    final DateTime? date = await Ui.selectDate(context);

    if (date != null) {
      setState(() {
        _endDateController.text = _formatDate(date); // Format the date
      });
    }
  }

  String _formatDate(DateTime date) {
    return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
  }

  // bool _isScheduleOverlapping(
  //   List<LectureSchedule> schedules,
  //   DateTime newStart,
  //   DateTime newEnd,
  // ) {
  //   for (final schedule in schedules) {
  //     final existingStart = schedule.date.toDate();
  //     final existingEnd = schedule.endDate.toDate();

  //     if ((newStart.isBefore(existingEnd) && newEnd.isAfter(existingStart))) {
  //       return true; // Overlapping schedule found
  //     }
  //   }
  //   return false; // No overlapping schedules
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Lecture Schedule')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                //   BlocBuilder<DepartmentBloc, DepartmentState>(
                //   builder: (context, state) {
                //     return _buildDropdown<Department>(
                //       context,
                //       hint: 'department',
                //       items: state.departments,
                //       selectedValue: selectedDepartment,
                //       onChanged: (department) {
                //         setState(() {
                //           selectedDepartment = department;
                //         });
                //       },
                //       displayTex: (faculty) => faculty.name,
                //     );
                //   },
                // ),
                // // Subject Dropdown
                // BlocBuilder<SubjectBloc, SubjectState>(
                //   builder: (context, subjectState) {
                //     return BlocBuilder<
                //       LectureScheduleBloc,
                //       LectureScheduleState
                //     >(
                //       builder: (context, scheduleState) {
                //         // Get all subjects for the department
                //         final allSubjects =
                //             subjectState.subjects

                //                 .toList();

                //         // Get subjects already scheduled on the selected day
                //         final selectedDay =
                //             _startDateController.text.isNotEmpty
                //                 ? DateTime.parse(_startDateController.text)
                //                 : null;

                //         final scheduledSubjects =
                //             // scheduleState is LectureScheduleLoaded
                //             //     ? scheduleState.schedules
                //             //         .map((schedule) => schedule.subject)
                //             //         .toList()
                //             //     :
                //                  [];

                //         // Filter out subjects that are already scheduled on the same day
                //         final availableSubjects =
                //             allSubjects
                //                 .where(
                //                   (subject) =>
                //                       !scheduledSubjects.any(
                //                         (scheduledSubject) =>
                //                             scheduledSubject.id == subject.id,
                //                       ),
                //                 )
                //                 .toList();

                //         return DropDownWidget<Subject>(
                //           hint: 'Select Subject',
                //           items: availableSubjects,
                //           selectedValue: _selectedSubject,
                //           onChanged: (Subject? value) {
                //             setState(() {
                //               _selectedSubject = value;
                //             });
                //           },
                //           displayText: (Subject subject) => subject.name,
                //           validator: (value) {
                //             if (value == null) {
                //               return 'Please select a subject';
                //             }
                //             return null;
                //           },
                //         );
                //       },
                //     );
                //   },
                // ),
                // SizedBox(height: 16),

                // // User Dropdown
                // BlocBuilder<MemberBloc, MemberState>(
                //   builder: (context, state) {
                //     return DropDownWidget<UserModel>(
                //       hint: 'Select User',
                //       items:
                //           state.members
                //               .where((user) => user.role == Role.teacher)
                //               .toList(),
                //       selectedValue: _selectedUser,
                //       onChanged: (UserModel? value) {
                //         setState(() {
                //           _selectedUser = value;
                //         });
                //       },
                //       displayText: (UserModel user) => user.name,
                //       validator: (value) {
                //         if (value == null) {
                //           return 'Please select a user';
                //         }
                //         return null;
                //       },
                //     );
                //   },
                // ),
                // SizedBox(height: 16),
                // TextFormField(
                //   controller: _hallController,
                //   decoration: const InputDecoration(labelText: 'Hall Name'),
                //   validator: (value) {
                //     if (value == null || value.isEmpty) {
                //       return 'Please enter a hall name';
                //     }
                //     return null;
                //   },
                // ),
                // SizedBox(height: 16),

                // Start Date and Time Field
                TextFormField(
                  controller: _startDateController,
                  decoration: InputDecoration(
                    labelText: 'Start Date and Time',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.calendar_today),
                      onPressed: () => _selectStartDate(context),
                    ),
                  ),
                  readOnly: true, // Prevent manual editing
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select a start date and time';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),

                // End Date and Time Field
                TextFormField(
                  controller: _endDateController,
                  decoration: InputDecoration(
                    labelText: 'End Date and Time',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.calendar_today),
                      onPressed: () => _selectEndDate(context),
                    ),
                  ),
                  readOnly: true, // Prevent manual editing
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select an end date and time';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),

                // Create Button
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final newStart = DateTime.parse(
                        _startDateController.text,
                      );
                      final newEnd = DateTime.parse(_endDateController.text);

                      // Prevent adding schedules on Fridays
                      if (newStart.weekday == DateTime.friday) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Schedules cannot be added on Fridays.',
                            ),
                          ),
                        );
                        return;
                      }

                      // If no overlapping schedules, proceed to create the new schedule
                      final schedule = ScheduleCreateBody(
                        termStart: Timestamp.fromDate(newStart),
                        termEnd: Timestamp.fromDate(newEnd),
                      );

                      context.read<LectureScheduleBloc>().add(
                        AddLectureSchedule(
                          departmentId: widget.department.id,
                          scheduleCreateBody: schedule,
                        ),
                      );

                      Navigator.pop(context);
                    }
                  },
                  child: Text('Create'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // List<Lecture> getLectures(Timestamp start, Timestamp end) {
  //   List<Lecture> lectures = [];

  //   generateWeeklyDates(start: start, end: end).forEach((date) {
  //     lectures.add(Lecture(date: date));
  //   });

  //   return lectures;
  // }

  List<Timestamp> generateWeeklyDates({
    required Timestamp start,
    required Timestamp end,
  }) {
    DateTime startDate = start.toDate();
    DateTime endDate = end.toDate();
    List<Timestamp> weeklyDates = [];

    DateTime current = startDate;
    while (current.isBefore(endDate) || current.isAtSameMomentAs(endDate)) {
      weeklyDates.add(
        Timestamp.fromDate(current),
      ); // Convert DateTime to Timestamp
      current = current.add(const Duration(days: 7)); // Move to the next week
    }

    return weeklyDates;
  }

  Widget _buildDropdown<T>(
    BuildContext context, {
    required String hint,
    required List<T> items,
    required T? selectedValue,
    required void Function(T?) onChanged,
    String Function(T)? displayTex,
  }) {
    return DropDownWidget<T>(
      displayText: displayTex,
      hint: hint,
      items: items,
      selectedValue: selectedValue,
      onChanged: onChanged,
      validator: (value) => value == null ? 'Please select a $hint' : null,
    );
  }
}
