import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_presence/core/extensions/string_extensions.dart';

import '../../../../core/utils/enums/attendance_status.dart';
import '../../../../core/utils/ui.dart';
import '../../../attendance/data/models/attendance_model.dart';
import '../../../attendance/presentation/bloc/attendance_bloc.dart';
import '../../../auth/data/models/user_model.dart';
import '../../../lecture/data/models/lecture_model.dart';
import '../bloc/member_bloc.dart';

class AddAttendanceDialog extends StatefulWidget {
  final UserModel member;
  final Lecture lecture;

  const AddAttendanceDialog({
    super.key,
    required this.member,
    required this.lecture,
  });

  @override
  _AddAttendanceDialogState createState() => _AddAttendanceDialogState();
}

class _AddAttendanceDialogState extends State<AddAttendanceDialog> {
  final _formKey = GlobalKey<FormState>();
  DateTime? _selectedDate;
  AttendanceStatus? _selectedStatus; // Variable to store the selected status

  @override
  Widget build(BuildContext context) {
    return BlocListener<AttendanceBloc, AttendanceState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (message) {
            // Show success message
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(message)));

            // Notify MemberBloc to reload members
            context.read<MemberBloc>().add(LoadMembers());

            // Close the dialog
            Navigator.of(context).pop();
          },
          error: (message) {
            // Show error message
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(message)));
          },
        );
      },
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'إضافة حضور',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),

                  // تاريخ الحضور
                  ListTile(
                    title: Text(
                      _selectedDate == null
                          ? 'اختر تاريخ الحضور'
                          : 'التاريخ: ${_selectedDate!.toLocal()}',
                    ),
                    trailing: const Icon(Icons.calendar_today),
                    onTap: () async {
                      final DateTime? pickedDateTime = await Ui.selectDateTime(
                        context,
                        initialDate: _selectedDate,
                      );
                      if (pickedDateTime != null) {
                        setState(() {
                          _selectedDate = pickedDateTime;
                        });
                      }
                    },
                  ),
                  const SizedBox(height: 15),

                  // حالة الحضور (Dropdown)
                  DropdownButtonFormField<AttendanceStatus>(
                    value: _selectedStatus,
                    onChanged: (AttendanceStatus? newValue) {
                      setState(() {
                        _selectedStatus = newValue;
                      });
                    },
                    items:
                        AttendanceStatus.values.map((AttendanceStatus status) {
                          return DropdownMenuItem<AttendanceStatus>(
                            value: status,
                            child: Text(
                              status.toString().split('.').last.trans(context),
                            ),
                          );
                        }).toList(),
                    decoration: InputDecoration(
                      labelText: 'حالة الحضور',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 14,
                      ),
                    ),
                    validator: (value) {
                      if (value == null) {
                        return 'يرجى اختيار حالة الحضور';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),

                  // الأزرار
                  BlocBuilder<AttendanceBloc, AttendanceState>(
                    builder: (context, state) {
                      final isLoading = state is Loading;

                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text(
                              'إلغاء',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 12,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed:
                                isLoading
                                    ? null
                                    : () {
                                      if (_formKey.currentState!.validate() &&
                                          _selectedDate != null &&
                                          _selectedStatus != null) {
                                        final attendance = Attendance(
                                          lecture: widget.lecture,
                                          byUser: widget.member,
                                          arrivalDate: Timestamp.fromDate(
                                            _selectedDate!,
                                          ),
                                          status: attendanceStatusToJson(
                                            _selectedStatus!,
                                          ),
                                        );
                                        context.read<AttendanceBloc>().add(
                                          AddAttendance(
                                            attendance: attendance,
                                            member: widget.member,
                                          ),
                                        );
                                      }
                                    },
                            child:
                                isLoading
                                    ? const CircularProgressIndicator(
                                      color: Colors.white,
                                    )
                                    : const Text(
                                      'إضافة الحضور',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
