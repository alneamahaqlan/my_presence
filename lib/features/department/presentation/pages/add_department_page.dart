import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/models/status.dart';
import '../../../../core/widgets/button_widget.dart'; // استيراد زر ButtonWidget
import '../../../../core/widgets/drop_down_widget.dart';
import '../../../../core/widgets/text_field_widget.dart';
import '../../../faculty/data/models/faculty_model.dart';
import '../../../faculty/presentation/bloc/faculty_bloc.dart';
import '../../data/models/department_create_body.dart';
import '../bloc/department_bloc.dart';

class AddDepartmentPage extends StatefulWidget {
  const AddDepartmentPage({super.key});

  @override
  _AddDepartmentPageState createState() => _AddDepartmentPageState();
}

class _AddDepartmentPageState extends State<AddDepartmentPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  Faculty? selectedFaculty;

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('إضافة قسم')),
      body: BlocListener<DepartmentBloc, DepartmentState>(
        listener: (context, state) {
          if (state.status == Status.success()) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('تمت إضافة القسم بنجاح!')));
            Navigator.of(context).pop(); // العودة بعد النجاح
          } else if (state.status == Status.failed()) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message ?? 'فشل في إضافة القسم')),
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFieldWidget(
                  hint: 'اسم القسم',
                  controller: _nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'الرجاء إدخال اسم القسم';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                BlocBuilder<FacultyBloc, FacultyState>(
                  builder: (context, state) {
                    return _buildDropdown<Faculty>(
                      context,
                      hint: 'الكليّة',
                      items: state.faculties,
                      selectedValue: selectedFaculty,
                      onChanged: (faculty) {
                        setState(() {
                          selectedFaculty = faculty;
                        });
                      },
                      displayTex: (faculty) => faculty.name,
                    );
                  },
                ),
                SizedBox(height: 20),
                BlocConsumer<DepartmentBloc, DepartmentState>(
                  listener: (context, state) {
                    if (state.createStatus == Status.success()) {
                      // context.pop();
                      context.read<DepartmentBloc>().add(FetchDepartments());
                    }
                  },

                  builder: (context, state) {
                    return ButtonWidget(
                      text: 'إضافة قسم',
                      onPressed: () {
                        if (_formKey.currentState!.validate() &&
                            selectedFaculty != null) {
                          final department = DepartmentCreateBody(
                            name: _nameController.text,
                            faculty: selectedFaculty!,
                          );
                          context.read<DepartmentBloc>().add(
                            AddDepartment(
                              facultyId: selectedFaculty!.id,
                              departmentCreateBody: department,
                            ),
                          );
                        }
                      },
                      isSubmitting: state.createStatus == Status.loading(),
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
      validator: (value) => value == null ? 'الرجاء اختيار $hint' : null,
    );
  }
}
