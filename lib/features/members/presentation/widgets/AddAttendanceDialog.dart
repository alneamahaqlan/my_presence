import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../attendance/data/models/attendance_model.dart';
import '../../../auth/data/models/user_model.dart';

class AddAttendanceDialog extends StatefulWidget {
  final UserModel member;

  const AddAttendanceDialog({super.key, required this.member});

  @override
  _AddAttendanceDialogState createState() => _AddAttendanceDialogState();
}

class _AddAttendanceDialogState extends State<AddAttendanceDialog> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _statusController = TextEditingController();
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Dialog(
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
                    final DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );
                    if (pickedDate != null) {
                      setState(() {
                        _selectedDate = pickedDate;
                      });
                    }
                  },
                ),
                const SizedBox(height: 15),

                // حالة الحضور
                TextFormField(
                  controller: _statusController,
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
                    if (value == null || value.trim().isEmpty) {
                      return 'يرجى إدخال حالة الحضور';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),

                // الأزرار
                Row(
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
                      onPressed: () {
                        if (_formKey.currentState!.validate() &&
                            _selectedDate != null) {
                          final attendance = AttendanceModel(
                            byUser: widget.member,
                            arrivalDate: Timestamp.fromDate(_selectedDate!),
                            status: _statusController.text,
                          );
                          // context.read<MemberBloc>().add(
                          //   AddAttendance(widget.member.id, attendance),
                          // );
                          // Navigator.of(context).pop();
                        }
                      },
                      child: const Text(
                        'إضافة الحضور',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
