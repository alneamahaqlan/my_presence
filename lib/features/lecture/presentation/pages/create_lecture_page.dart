import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_presence/dependency_injection.dart';

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
import '../../data/models/lecture_model.dart';
import '../bloc/lecture_bloc.dart';

class CreateLecturePage extends StatefulWidget {
  const CreateLecturePage({super.key});

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
                // قائمة المواد
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

                // قائمة المدرسين
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

                // حقل اسم القاعة
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

                // تاريخ ووقت البداية
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

                // تاريخ ووقت النهاية
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

                // زر الإنشاء
                BlocBuilder<LectureBloc, LectureState>(
                  builder: (context, state) {
                    return ButtonWidget(
                      text: 'إنشاء',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          try {
                            final newStart = DateTime.parse(
                              _startDateController.text,
                            );
                            final newEnd = DateTime.parse(
                              _endDateController.text,
                            );

                            final router = getIt.call<GoRouter>();
                            final schedule =
                                (router.state.extra
                                        as Map<String, dynamic>?)?['schedule']
                                    as Schedule;

                            final lecture = Lecture(
                              subject: _selectedSubject!,
                              user: _selectedUser!,
                              scheduleId: schedule.id,
                              startTime: Timestamp.fromDate(newStart),
                              endTime: Timestamp.fromDate(newEnd),
                              hall: _hallController.text,
                            );

                            context.read<LectureBloc>().add(
                              AddLecture(lecture),
                            );

                            Navigator.pop(context);
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('تنسيق التاريخ غير صحيح: $e'),
                                backgroundColor: colorScheme.error,
                              ),
                            );
                          }
                        }
                      },
                      isSubmitting: state.status == Status.loading(),
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
    final DateTime? pickedDateTime = await Ui.selectDateTime(context);
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

    final DateTime? pickedDateTime = await Ui.selectDateTime(
      context,
      initialDate: _startDateTime,
      firstDate: _startDateTime,
      lastDate: DateTime(
        _startDateTime!.year,
        _startDateTime!.month,
        _startDateTime!.day,
        23,
        59,
      ),
    );

    if (pickedDateTime == null) return;

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
