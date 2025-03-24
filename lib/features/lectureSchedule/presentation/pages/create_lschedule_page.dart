import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/models/status.dart';
import '../../../../core/utils/enums/academic_level.dart';
import '../../../../core/utils/ui.dart';
import '../../../../core/widgets/button_widget.dart';
import '../../../../core/widgets/number_picker_widget';
import '../../../../core/widgets/text_field_widget.dart';
import '../../../../dependency_injection.dart';
import '../../../department/data/models/department_model.dart';
import '../../data/models/schedule_create_body.dart';
import '../bloc/lecture_schedule_bloc.dart';

class CreateSchedulePage extends StatefulWidget {
  const CreateSchedulePage({super.key});

  @override
  _CreateSchedulePageState createState() => _CreateSchedulePageState();
}

class _CreateSchedulePageState extends State<CreateSchedulePage> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _startDateController = TextEditingController();
  final _endDateController = TextEditingController();
  final _divisionController = TextEditingController();
  AcademicLevel _selectedLevel = AcademicLevel.first; 

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
    final router = getIt<GoRouter>();
    final department = router.state.extra as Department;
    context.read<LectureScheduleBloc>().add(
      SetDepartment(department: department),
    );
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
                // Title field
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
  const Text('المستوى', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 8),
                DropdownButtonFormField<AcademicLevel>(
                  value: _selectedLevel,
                  items: AcademicLevel.values.map((level) {
                    return DropdownMenuItem(
                      value: level,
                      child: Text('المستوى ${level.toString()}'),
                    );
                  }).toList(),
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        _selectedLevel = value;
                      });
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                    hintText: 'اختر المستوى',
                  ),
                ),
                const SizedBox(height: 16),

                // Division field
                TextFieldWidget(
                  hint: 'الشعبه',
                  controller: _divisionController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'يرجى إدخال الشعبة';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Start date field
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

                // End date field
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

                // Create button
                BlocConsumer<LectureScheduleBloc, LectureScheduleState>(
                  listener: (context, state) {
                    state.status.maybeWhen(
                      success: () {
                        context.pop();
                      },
                      failed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('فشل إنشاء الجدول.'),
                            backgroundColor: colorScheme.error,
                          ),
                        );
                      },

                      orElse: () {},
                    );
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

                          final schedule = ScheduleCreateBody(
                            title: _titleController.text,
                            department: department,
                              level: _selectedLevel.value,
                            division: _divisionController.text,
                            termStart: newStart,
                            termEnd: newEnd,
                          );
                          log('Create schedule: ${schedule.toJson()}');

                          context.read<LectureScheduleBloc>().add(
                            AddLectureSchedule(scheduleCreateBody: schedule),
                          );
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
