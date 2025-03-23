import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_presence/core/extensions/context_extensions.dart';
import 'package:my_presence/features/faculty/presentation/bloc/faculty_bloc.dart';

import '../../../../core/widgets/button_widget.dart';
import '../../../../core/widgets/text_field_widget.dart';
import '../../data/models/faculty_create_body.dart';

class AddFacultyPage extends StatefulWidget {
  const AddFacultyPage({super.key});

  @override
  _AddFacultyPageState createState() => _AddFacultyPageState();
}

class _AddFacultyPageState extends State<AddFacultyPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('إضافة كلية')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFieldWidget(
                controller: _nameController,
                hint: 'اسم الكلية',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'الرجاء إدخال اسم';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),

              BlocConsumer<FacultyBloc, FacultyState>(
                listener: (context, state) {
                  // TODO: implement listener

                  state.createStatus.maybeWhen(
                    success: () {
                      context.pop();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('تم الحفظ بنجاح')),
                      );
                    },
                    failed: () {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text(state.message!)));
                    },
                    orElse: () {},
                  );
                },
                builder: (context, state) {
                  return ButtonWidget(
                    text: 'إضافة كلية',
                    isSubmitting: state.createStatus.maybeWhen(
                      orElse: () => false,
                      loading: () => true,
                    ),
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        context.read<FacultyBloc>().add(
                          AddFaculty(
                            facultyCreateBody: FacultyCreateBody(
                              name: _nameController.text,
                            ),
                          ),
                        );
                      }
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
