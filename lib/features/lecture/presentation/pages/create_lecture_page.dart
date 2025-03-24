import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_presence/core/extensions/context_extensions.dart';

import '../../../../core/models/status.dart';
import '../../../../core/utils/enums/role.dart';
import '../../../../core/utils/ui.dart';
import '../../../../core/widgets/button_widget.dart'; // Import ButtonWidget
import '../../../../core/widgets/drop_down_widget.dart'; // Import DropDownWidget
import '../../../../core/widgets/text_field_widget.dart'; // Import TextFieldWidget
import '../../../auth/data/models/user_model.dart';
import '../../../lectureSchedule/data/models/schedule_model.dart';
import '../../../members/presentation/bloc/member_bloc.dart';
import '../../../subject/data/models/subject_model.dart';
import '../../../subject/presentation/bloc/subject_bloc.dart';
import '../../data/models/lecture_create_body.dart';
import '../bloc/lecture_bloc.dart';

class CreateLecturePage extends StatefulWidget {
  final Schedule schedule;
  const CreateLecturePage({super.key, required this.schedule});

  @override
  _CreateLecturePageState createState() => _CreateLecturePageState();
}

class _CreateLecturePageState extends State<CreateLecturePage> {
  final _formKey = GlobalKey<FormState>();
  final _hallController = TextEditingController();
  final _startDateController = TextEditingController();
  final _endDateController = TextEditingController();

  Subject? _selectedSubject;
  UserModel? _selectedUser;
  DateTime? _startDateTime;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('إنشاء محاضرة'),
        centerTitle: true,
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Subject Dropdown
                BlocBuilder<SubjectBloc, SubjectState>(
                  builder: (context, subjectState) {
                    return DropDownWidget<Subject>(
                      hint: 'اختر المادة',
                      items: subjectState.subjects,
                      selectedValue: _selectedSubject,
                      onChanged: (Subject? value) {
                        setState(() {
                          _selectedSubject = value;
                        });
                      },
                      displayText: (Subject subject) => subject.name,
                      validator: (value) {
                        if (value == null) {
                          return 'يرجى اختيار المادة';
                        }
                        return null;
                      },
                    );
                  },
                ),
                const SizedBox(height: 16),

                // Teacher Dropdown
                BlocBuilder<MemberBloc, MemberState>(
                  builder: (context, state) {
                    return DropDownWidget<UserModel>(
                      hint: 'اختر المدرس',
                      items:
                          state.members
                              .where((user) => user.role == Role.teacher)
                              .toList(),
                      selectedValue: _selectedUser,
                      onChanged: (UserModel? value) {
                        setState(() {
                          _selectedUser = value;
                        });
                      },
                      displayText: (UserModel user) => user.name,
                      validator: (value) {
                        if (value == null) {
                          return 'يرجى اختيار المدرس';
                        }
                        return null;
                      },
                    );
                  },
                ),
                const SizedBox(height: 16),

                // Hall TextField
                TextFieldWidget(
                  hint: 'اسم القاعة',
                  controller: _hallController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'يرجى إدخال اسم القاعة';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Start Date Picker
                TextFieldWidget(
                  hint: 'تاريخ ووقت البداية',
                  controller: _startDateController,
                  readOnly: true,
                  onTap: () => _selectStartDateTime(context),
                  suffixIcon: Icon(
                    Icons.calendar_today,
                    color: colorScheme.onSurface,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'يرجى تحديد وقت البداية';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // End Date Picker
                TextFieldWidget(
                  hint: 'تاريخ ووقت النهاية',
                  controller: _endDateController,
                  readOnly: true,
                  onTap: () => _selectEndDateTime(context),
                  suffixIcon: Icon(
                    Icons.calendar_today,
                    color: colorScheme.onSurface,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'يرجى تحديد وقت النهاية';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),

                // Create Button
                BlocConsumer<LectureBloc, LectureState>(
                  listener: (context, state) {
                    if (state.createStatus == const Status.success()) {
                      context.pop();

                      context.read<MemberBloc>().add(LoadMembers());
                    }
                  },
                  builder: (context, state) {
                    return ButtonWidget(
                      text: 'إنشاء',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          final newStart = DateTime.parse(
                            _startDateController.text,
                          );
                          final newEnd = DateTime.parse(
                            _endDateController.text,
                          );

                          final lecture = LectureCreateBody(
                            subject: _selectedSubject!,
                            user: _selectedUser!,
                            schedule: widget.schedule,
                            startTime: Timestamp.fromDate(newStart),
                            endTime: Timestamp.fromDate(newEnd),
                            hall: _hallController.text,
                          );

                          context.read<LectureBloc>().add(AddLecture(lecture));
                        }
                      },

                      isSubmitting: state.createStatus.maybeWhen(
                        loading: () => true,
                        orElse: () => false,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _selectStartDateTime(BuildContext context) async {
    final schedule = widget.schedule;
    final termStart = schedule.termStart.toDate();
    final termEnd = schedule.termEnd.toDate();

    final DateTime? pickedDateTime = await Ui.selectDateTime(
      context,
      initialDate: termStart, // Initialize with term start date
      firstDate: termStart, // Can't pick before term starts
      lastDate: termEnd, // Can't pick after term ends
    );

    if (pickedDateTime == null) return;

    setState(() {
      _startDateTime = pickedDateTime;
      _startDateController.text = _formatDateTime(pickedDateTime);
      _endDateController.clear();
    });
  }

  Future<void> _selectEndDateTime(BuildContext context) async {
    if (_startDateTime == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('يرجى تحديد وقت البداية أولاً')),
      );
      return;
    }

    // Get the same date as start time but with max time (23:59)
    final sameDayEnd = DateTime(
      _startDateTime!.year,
      _startDateTime!.month,
      _startDateTime!.day,
      23,
      59,
    );

    final DateTime? pickedDateTime = await Ui.selectDateTime(
      context,
      initialDate: _startDateTime!.add(
        const Duration(hours: 1),
      ), // Default to 1 hour after start
      firstDate: _startDateTime!, // Can't be before start time
      lastDate: sameDayEnd, // Can't be on different day
    );

    if (pickedDateTime == null) return;

    // Ensure end time is after start time
    if (pickedDateTime.isBefore(_startDateTime!)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('وقت النهاية يجب أن يكون بعد وقت البداية'),
        ),
      );
      return;
    }

    setState(() {
      _endDateController.text = _formatDateTime(pickedDateTime);
    });
  }

  String _formatDateTime(DateTime dateTime) {
    return '${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-'
        '${dateTime.day.toString().padLeft(2, '0')} '
        '${dateTime.hour.toString().padLeft(2, '0')}:'
        '${dateTime.minute.toString().padLeft(2, '0')}';
  }
}
