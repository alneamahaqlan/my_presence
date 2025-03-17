import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_presence/features/lectureSchedule/presentation/bloc/lecture_schedule_bloc.dart';

import '../../../../core/widgets/drop_down_widget.dart';
import '../../../../core/widgets/text_field_widget.dart'; // Import the TextFieldWidget
import '../../../auth/data/models/user_model.dart';
import '../../../faculty/presentation/bloc/faculty_bloc.dart';
import '../../../faculty/data/models/faculty_model.dart';
import '../../../subject/data/models/subject_model.dart';
import '../../../members/presentation/bloc/member_bloc.dart';
import '../../../subject/presentation/bloc/subject_bloc.dart';
import '../../data/models/lecture_schedule.dart';

class EditLectureSchedulePage extends StatefulWidget {
  final LectureSchedule schedule;

  const EditLectureSchedulePage({super.key, required this.schedule});

  @override
  _EditLectureSchedulePageState createState() =>
      _EditLectureSchedulePageState();
}

class _EditLectureSchedulePageState extends State<EditLectureSchedulePage> {
  final _formKey = GlobalKey<FormState>();
  final _dateController = TextEditingController();

  Subject? _selectedSubject;
  UserModel? _selectedUser;


  // @override
  // void initState() {
  //   super.initState();
  //   // Initialize fields with the existing schedule data
  //   _selectedSubject = widget.schedule.subject;
  //   _selectedUser = widget.schedule.user;
  //   _dateController.text = widget.schedule.date?.toDate().toString().split(' ')[0] ?? '';
  // }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        _dateController.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Lecture Schedule')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Subject Dropdown
              BlocBuilder<SubjectBloc, SubjectState>(
                builder: (context, state) {
                  return DropDownWidget<Subject>(
                    hint: 'Select Subject',
                    items: state.subjects,
                    selectedValue: _selectedSubject,
                    onChanged: (Subject? value) {
                      setState(() {
                        _selectedSubject = value;
                      });
                    },
                    displayText: (Subject subject) => subject.name,
                    validator: (value) {
                      if (value == null) {
                        return 'Please select a subject';
                      }
                      return null;
                    },
                  );
                },
              ),
              SizedBox(height: 16),


              // User Dropdown
              BlocBuilder<MemberBloc, MemberState>(
                builder: (context, state) {
                  return DropDownWidget<UserModel>(
                    hint: 'Select User',
                    items: state.members,
                    selectedValue: _selectedUser,
                    onChanged: (UserModel? value) {
                      setState(() {
                        _selectedUser = value;
                      });
                    },
                    displayText: (UserModel user) => user.name,
                    validator: (value) {
                      if (value == null) {
                        return 'Please select a user';
                      }
                      return null;
                    },
                  );
                },
              ),
              SizedBox(height: 16),

              // Date Field with Date Picker using TextFieldWidget
              TextFieldWidget(
                controller: _dateController,
                hint: 'Date',
                readOnly: true, // Prevent manual editing
                onTap: () => _selectDate(context), // Open date picker on tap
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select a date';
                  }
                  return null;
                },
                icon: Icons.calendar_today, // Add calendar icon
              ),
              SizedBox(height: 20),

              // Update Button
              ElevatedButton(
                onPressed: () {
                  // if (_formKey.currentState!.validate()) {
                  //   final updatedSchedule = widget.schedule.copyWith(
                  //     subject: _selectedSubject!,
                  //     user: _selectedUser!,
                  //     date: Timestamp.fromDate(DateTime.parse(_dateController.text)),
                   
                  //   );

                  //   context.read<LectureScheduleBloc>().add(
                  //     UpdateLectureSchedule(widget.schedule.id, updatedSchedule),
                  //   );

                  //   Navigator.pop(context);
                  // }
                },
                child: Text('Update'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}