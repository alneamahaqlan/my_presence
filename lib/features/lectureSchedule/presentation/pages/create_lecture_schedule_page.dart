import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_presence/features/lectureSchedule/presentation/bloc/lecture_schedule_bloc.dart';

import '../../../../core/models/status.dart';
import '../../../../core/utils/ui.dart';
import '../../../../core/widgets/button_widget.dart'; // استيراد ButtonWidget
import '../../../../core/widgets/text_field_widget.dart'; // استيراد TextFieldWidget
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
  final _titleController = TextEditingController();
  final _startDateController = TextEditingController();
  final _endDateController = TextEditingController();

  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? date = await Ui.selectDate(context);

    if (date != null) {
      setState(() {
        _startDateController.text = _formatDate(date);
      });
    }
  }

  Future<void> _selectEndDate(BuildContext context) async {
    final DateTime? date = await Ui.selectDate(context);

    if (date != null) {
      setState(() {
        _endDateController.text = _formatDate(date);
      });
    }
  }

  String _formatDate(DateTime date) {
    return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('إنشاء جدول المحاضرات'),
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
                // حقل العنوان
                TextFieldWidget(
                  hint: 'العنوان',
                  controller: _titleController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'يرجى إدخال عنوان';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // حقل تاريخ البدء
                TextFieldWidget(
                  hint: 'تاريخ البدء',
                  controller: _startDateController,
                  readOnly: true,
                  onTap: () => _selectStartDate(context),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'يرجى اختيار تاريخ البدء';
                    }
                    return null;
                  },
                  suffixIcon: Icon(
                    Icons.calendar_today,
                    color: colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 16),

                // حقل تاريخ الانتهاء
                TextFieldWidget(
                  hint: 'تاريخ الانتهاء',
                  controller: _endDateController,
                  readOnly: true,
                  onTap: () => _selectEndDate(context),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'يرجى اختيار تاريخ الانتهاء';
                    }
                    return null;
                  },
                  suffixIcon: Icon(
                    Icons.calendar_today,
                    color: colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 20),

                // زر الإنشاء
                BlocBuilder<LectureScheduleBloc, LectureScheduleState>(
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

                          // منع إضافة الجداول يوم الجمعة
                          if (newStart.weekday == DateTime.friday) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'لا يمكن إضافة الجداول يوم الجمعة.',
                                ),
                                backgroundColor: colorScheme.error,
                              ),
                            );
                            return;
                          }

                          // إنشاء الجدول بالمعلومات المطلوبة
                          final schedule = ScheduleCreateBody(
                            title: _titleController.text,
                            departmentId: widget.department.id,
                            termStart: Timestamp.fromDate(newStart),
                            termEnd: Timestamp.fromDate(newEnd),
                          );

                          // إرسال الحدث لإضافة الجدول
                          context.read<LectureScheduleBloc>().add(
                            AddLectureSchedule(
                              department: widget.department,
                              scheduleCreateBody: schedule,
                            ),
                          );

                          Navigator.pop(context);
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
}
