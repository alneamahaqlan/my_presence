import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/models/status.dart';
import '../../../../core/widgets/drop_down_widget.dart';
import '../../../faculty/data/models/faculty_model.dart';
import '../../../faculty/presentation/bloc/faculty_bloc.dart';
import '../../data/models/department_create_body.dart';
import '../../data/models/department_model.dart';
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
      appBar: AppBar(title: Text('Add Department')),
      body: BlocListener<DepartmentBloc, DepartmentState>(
        listener: (context, state) {
          if (state.status == Status.success()) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Department added successfully!')),
            );
            Navigator.of(context).pop(); // Navigate back after success
          } else if (state.status == Status.failed()) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message ?? 'Failed to add department'),
              ),
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: 'Department Name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a department name';
                    }
                    return null;
                  },
                ),
                BlocBuilder<FacultyBloc, FacultyState>(
                  builder: (context, state) {
                    return _buildDropdown<Faculty>(
                      context,
                      hint: 'Faculty',
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
                BlocBuilder<DepartmentBloc, DepartmentState>(
                  builder: (context, state) {
                    if (state.status == Status.loading()) {
                      return CircularProgressIndicator();
                    }
                    return ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate() &&
                            selectedFaculty != null) {
                          final department = DepartmentCreateBody(
                            name: _nameController.text,
                          );
                          context.read<DepartmentBloc>().add(
                            AddDepartment(
                              facultyId: selectedFaculty!.id,
                              departmentCreateBody: department,
                            ),
                          );
                        }
                      },
                      child: Text('Add Department'),
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
      validator: (value) => value == null ? 'Please select a $hint' : null,
    );
  }
}
