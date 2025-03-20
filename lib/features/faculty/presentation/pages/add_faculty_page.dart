import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_presence/features/faculty/presentation/bloc/faculty_bloc.dart';

import '../../../../core/widgets/button_widget.dart';
import '../../../../core/widgets/text_field_widget.dart';

class AddFacultyPage extends StatefulWidget {
  const AddFacultyPage({super.key});

  @override
  _AddFacultyPageState createState() => _AddFacultyPageState();
}

class _AddFacultyPageState extends State<AddFacultyPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  bool _isSubmitting = false;

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
              ButtonWidget(
                text: 'إضافة كلية',
                isSubmitting: _isSubmitting,
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    setState(() => _isSubmitting = true);

                    context.read<FacultyBloc>().add(
                      AddFaculty(_nameController.text),
                    );
                    setState(() => _isSubmitting = false);
                    Navigator.pop(context);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
