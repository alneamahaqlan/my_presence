import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/extensions/context_extensions.dart';

import '../../../../core/extensions/string_extensions.dart';
import '../../../../core/utils/enums/attendance_status.dart';
import '../../../../core/utils/ui.dart';
import '../../../../dependency_injection.dart';
import '../../../attendance/data/models/attendance_model.dart';
import '../../../attendance/presentation/bloc/attendance_bloc.dart';
import '../../../auth/data/models/user_model.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../lecture/data/models/lecture_model.dart';
import '../../../lecture/data/models/meet_model.dart';
import '../bloc/member_bloc.dart';
class AddAttendanceDialog extends StatefulWidget {
  final UserModel member;
  final Lecture lecture;
  final DateTime? initialStartTime; // Add initialStartTime

  const AddAttendanceDialog({
    super.key,
    required this.member,
    required this.lecture,
    this.initialStartTime, // Initialize initialStartTime
  });

  @override
  _AddAttendanceDialogState createState() => _AddAttendanceDialogState();
}

class _AddAttendanceDialogState extends State<AddAttendanceDialog> {
  final _formKey = GlobalKey<FormState>();
  AttendanceStatus? _selectedStatus;
  Meet? _selectedMeet;
  DateTime? _arrivalDate;

  @override
  void initState() {
    super.initState();
    // Set _selectedMeet based on initialStartTime
    if (widget.initialStartTime != null) {
      _selectedMeet = widget.lecture.meetings.firstWhere(
        (meet) => meet.startTime.toDate() == widget.initialStartTime,
      );
      _arrivalDate = widget.initialStartTime;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AttendanceBloc, AttendanceState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (message) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
            context.read<MemberBloc>().add(LoadMembers());
            context.pop();
            context.pop();
          },
          error: (message) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
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

                  // Select Meet
                  DropdownButtonFormField<Meet>(
                    value: _selectedMeet,
                    onChanged: (Meet? newValue) {
                      setState(() {
                        _selectedMeet = newValue;
                        _arrivalDate = newValue?.startTime.toDate();
                      });
                    },
                    items: widget.lecture.meetings
                        .where((meet) => meet.status == null)
                        .map((meet) {
                          return DropdownMenuItem<Meet>(
                            value: meet,
                            child: Text(
                              '${meet.startTime.toDate().year}-${meet.startTime.toDate().month.toString().padLeft(2, '0')}-${meet.startTime.toDate().day.toString().padLeft(2, '0')}',
                              style: const TextStyle(fontSize: 10),
                            ),
                          );
                        })
                        .toList(),
                    decoration: InputDecoration(
                      labelText: 'اختر الاجتماع',
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
                        return 'يرجى اختيار الاجتماع';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),

                  // Display arrivalDate with time picker
                  if (_selectedStatus != AttendanceStatus.absent &&
                      _selectedStatus != AttendanceStatus.excused)
                    ListTile(
                      title: Text(
                        _arrivalDate == null
                            ? 'اختر وقت الحضور'
                            : 'وقت الحضور: ${_arrivalDate!.toLocal().toString().split(' ')[1]}',
                      ),
                      trailing: const Icon(Icons.access_time),
                      onTap: () async {
                        if (_selectedMeet == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('يرجى اختيار الاجتماع أولاً'),
                            ),
                          );
                          return;
                        }

                        final TimeOfDay? pickedTime = await Ui.selectTime(
                          context,
                          startTime: TimeOfDay.fromDateTime(_arrivalDate!),
                        );
                        if (pickedTime != null) {
                          setState(() {
                            _arrivalDate = DateTime(
                              _arrivalDate!.year,
                              _arrivalDate!.month,
                              _arrivalDate!.day,
                              pickedTime.hour,
                              pickedTime.minute,
                            );
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
                        if (newValue == AttendanceStatus.absent ||
                            newValue == AttendanceStatus.excused) {
                          _arrivalDate = null;
                        }
                      });
                    },
                    items: AttendanceStatus.values.map((AttendanceStatus status) {
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
                            onPressed: isLoading
                                ? null
                                : () {
                                    if (_formKey.currentState!.validate() &&
                                        _selectedStatus != null &&
                                        _selectedMeet != null) {
                                      if (_selectedStatus ==
                                              AttendanceStatus.absent ||
                                          _selectedStatus ==
                                              AttendanceStatus.excused) {
                                        _arrivalDate = null;
                                      }
                                      final auth = getIt<AuthBloc>();
                                      final byUser = auth.state.user!;

                                      final attendance = Attendance(
                                        lecture: widget.lecture,
                                        meet: _selectedMeet!.copyWith(
                                          status: attendanceStatusToJson(
                                            _selectedStatus!,
                                          ),
                                          byUser: byUser,
                                        ),
                                        byUser: byUser,
                                        arrivalDate: _arrivalDate != null
                                            ? Timestamp.fromDate(_arrivalDate!)
                                            : null,
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
                            child: isLoading
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