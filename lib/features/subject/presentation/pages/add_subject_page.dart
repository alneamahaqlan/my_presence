import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/button_widget.dart';
import '../../../../core/widgets/text_field_widget.dart';
import '../../data/models/subject_model.dart';
import '../bloc/subject_bloc.dart';

class AddSubjectPage extends StatefulWidget {
  const AddSubjectPage({super.key});

  @override
  _AddSubjectPageState createState() => _AddSubjectPageState();
}

class _AddSubjectPageState extends State<AddSubjectPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _codeController = TextEditingController();
  final _numberController = TextEditingController();
  bool _isSubmitting = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Subject')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFieldWidget(
                  controller: _nameController,
                  hint: 'Subject Name',
                  validator:
                      (value) =>
                          (value == null || value.isEmpty)
                              ? 'Please enter a subject name'
                              : null,
                ),
                const SizedBox(height: 16),
                TextFieldWidget(
                  controller: _codeController,
                  hint: 'Subject Code',
                  validator:
                      (value) =>
                          (value == null || value.isEmpty)
                              ? 'Please enter a subject code'
                              : null,
                ),
                const SizedBox(height: 16),
                TextFieldWidget(
                  controller: _numberController,
                  hint: 'Subject Number',
                  validator:
                      (value) =>
                          (value == null || value.isEmpty)
                              ? 'Please enter a subject number'
                              : null,
                ),
                const SizedBox(height: 20),
                ButtonWidget(
                  text: 'Add Subject',
                  isSubmitting: _isSubmitting,
                  onPressed: _submitForm,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isSubmitting = true;
      });

      final newSubject = Subject(
        name: _nameController.text,
        code: _codeController.text,
        number: _numberController.text,
      );

      context.read<SubjectBloc>().add(AddSubject(newSubject));

      Future.delayed(const Duration(seconds: 1), () {
        setState(() {
          _isSubmitting = false;
        });
        Navigator.pop(context);
      });
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _codeController.dispose();
    _numberController.dispose();
    super.dispose();
  }
}
