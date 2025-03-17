import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../core/utils/enums/attendance_status.dart';
import '../../../../core/utils/ui.dart';
import '../../../../dependency_injection.dart';
import '../../../attendance/data/models/attendance_model.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../department/data/models/department_model.dart';
import '../../data/models/lecture.dart';
import '../../data/models/lecture_schedule.dart';
import '../bloc/lecture_schedule_bloc.dart';

class ScheduleCard extends StatefulWidget {
  const ScheduleCard({
    super.key,
    required this.schedule,
    required this.department,
  });

  final LectureSchedule schedule;
  final Department department;

  @override
  _ScheduleCardState createState() => _ScheduleCardState();
}

class _ScheduleCardState extends State<ScheduleCard> {
  bool _isExpanded = false;
  AttendanceStatus _selectedStatus = AttendanceStatus.absent;
  DateTime? _arrivalDate; // Moved to widget state

  // Function to show dialog to add or edit attendance
  void _showAttendanceDialog(BuildContext context, Lecture lecture) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            'Add Attendance',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Dropdown to select attendance status
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: DropdownButton<AttendanceStatus>(
                    value: _selectedStatus,
                    isExpanded: true,
                    underline: const SizedBox(), // Remove default underline
                    onChanged: (AttendanceStatus? newValue) {
                      setState(() {
                        _selectedStatus = newValue!;
                      });
                    },
                    items:
                        AttendanceStatus.values
                            .map<DropdownMenuItem<AttendanceStatus>>((
                              AttendanceStatus value,
                            ) {
                              return DropdownMenuItem<AttendanceStatus>(
                                value: value,
                                child: Text(
                                  value.toString().split('.').last,
                                  style: const TextStyle(fontSize: 16),
                                ),
                              );
                            })
                            .toList(),
                  ),
                ),
                const SizedBox(height: 20),
                // Date picker for arrival date
                InkWell(
                  onTap: () async {
                    final pickedDate = await showDatePicker(
                      context: context,
                      initialDate: _arrivalDate ?? DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101),
                    );
                    if (pickedDate != null && pickedDate != _arrivalDate) {
                      setState(() {
                        _arrivalDate = pickedDate;
                      });
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _arrivalDate == null
                              ? 'Select Arrival Date'
                              : DateFormat('yyyy-MM-dd').format(_arrivalDate!),
                          style: const TextStyle(fontSize: 16),
                        ),
                        const Icon(Icons.calendar_today, color: Colors.blue),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Action buttons: Save and Cancel
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Cancel Button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 2,
                      ),
                      onPressed: () {
                        Navigator.of(
                          context,
                        ).pop(); // Close the dialog on Cancel
                      },
                      child: const Text(
                        'Cancel',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    // Save Button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 2,
                      ),
                      onPressed: () {
                        if (_arrivalDate == null) {
                          Ui.showSnackBar(
                            context: context,
                            message: 'Please select an arrival date!',
                            type: SnackBarType.error,
                          );
                          return;
                        }

                        final attendance = AttendanceModel(
                          byUser: getIt<AuthBloc>().state.user!,
                          status: _selectedStatus.name,
                          arrivalDate: Timestamp.fromDate(_arrivalDate!),
                        );

                        // Dispatch the UpdateAttendance event
                        context.read<LectureScheduleBloc>().add(
                          UpdateAttendance(
                            scheduleId: widget.schedule.id,
                            lectureId: lecture.id,
                            attendance: attendance,
                          ),
                        );

                        Navigator.of(
                          context,
                        ).pop(); // Close the dialog after saving
                      },
                      child: const Text('Save', style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ListTile(
            //   leading: const Icon(Icons.school, size: 40, color: Colors.blue),
            //   title: Text(
            //     widget.schedule.subject.name,
            //     style: const TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontSize: 18,
            //     ),
            //   ),
            //   subtitle: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         'Instructor: ${widget.schedule.user.name}',
            //         style: const TextStyle(fontSize: 14),
            //       ),
            //       Text(
            //         'Hall: ${widget.schedule.hall}',
            //         style: const TextStyle(fontSize: 14),
            //       ),
            //       Text(
            //         'Time: ${DateFormat.jm().format(widget.schedule.date.toDate())} - ${DateFormat.jm().format(widget.schedule.endDate.toDate())}',
            //         style: const TextStyle(fontSize: 14),
            //       ),
            //     ],
            //   ),
            // ),
            // const Divider(),
            // ExpansionTile(
            //   initiallyExpanded: _isExpanded,
            //   onExpansionChanged:
            //       (expanded) => setState(() => _isExpanded = expanded),
            //   title: const Text(
            //     'تحظير',
            //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            //   ),
            //   children: [
            //     Wrap(
            //       spacing: 8,
            //       children:
            //           widget.schedule.lectures!
            //               .map(
            //                 (lecture) => InkWell(
            //                   onTap: () {
            //                     if (lecture.attendance == null) {
            //                       _showAttendanceDialog(context, lecture);
            //                     }
            //                   },
            //                   child: Chip(
            //                     color:
            //                         lecture.attendance != null
            //                             ? WidgetStateProperty.all(
            //                               Colors.grey.shade200,
            //                             )
            //                             : WidgetStateProperty.all(
            //                               Colors.blue.shade100,
            //                             ),
            //                     label: Text(
            //                       DateFormat(
            //                         'yyyy-MM-dd',
            //                       ).format(lecture.date.toDate()),
            //                     ),
            //                     backgroundColor: Colors.blue.shade100,
            //                   ),
            //                 ),
            //               )
            //               .toList(),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
