import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../auth/data/models/user_model.dart';
import '../../../reports/data/models/research_model.dart';
import '../bloc/member_bloc.dart';

class AddResearchDialog extends StatefulWidget {
  final UserModel member;

  const AddResearchDialog({super.key, required this.member});

  @override
  _AddResearchDialogState createState() => _AddResearchDialogState();
}

class _AddResearchDialogState extends State<AddResearchDialog> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _linkController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'إضافة بحث',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),

                // اسم البحث
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'اسم البحث',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 14,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'يرجى إدخال اسم البحث';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),

                // وصف البحث
                TextFormField(
                  controller: _descriptionController,
                  decoration: InputDecoration(
                    labelText: 'وصف البحث',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 14,
                    ),
                  ),
                  maxLines: 3,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'يرجى إدخال وصف البحث';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),

                // رابط البحث
                TextFormField(
                  controller: _linkController,
                  decoration: InputDecoration(
                    labelText: 'رابط البحث',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 14,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'يرجى إدخال رابط البحث';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),

                // الأزرار
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('إلغاء', style: TextStyle(fontSize: 16)),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          final research = Research(
                            name: _nameController.text,
                            description: _descriptionController.text,
                            link: _linkController.text,
                            createdAt: Timestamp.now(),
                            updatedAt: Timestamp.now(),
                          );
                          context.read<MemberBloc>().add(
                            AddResearch(
                              userId: widget.member.id,
                              research: research,),
                          );
                          Navigator.of(context).pop();
                        }
                      },
                      child: const Text(
                        'إضافة البحث',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}