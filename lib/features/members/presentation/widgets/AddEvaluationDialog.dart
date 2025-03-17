import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_presence/core/extensions/string_extensions.dart';

import '../../../../core/utils/enums/rate_type.dart';
import '../../../auth/data/models/user_model.dart';
import '../../../reports/data/models/evaluation_model.dart';
import '../bloc/member_bloc.dart';

class AddEvaluationDialog extends StatefulWidget {
  final UserModel member;

  const AddEvaluationDialog({super.key, required this.member});

  @override
  _AddEvaluationDialogState createState() => _AddEvaluationDialogState();
}

class _AddEvaluationDialogState extends State<AddEvaluationDialog> {
  final _formKey = GlobalKey<FormState>();
  int _score = 0;
  String? _comment;
  RateType _rateType = RateType.teachingPerformance;
  final TextEditingController _scoreController = TextEditingController();
  final TextEditingController _commentController = TextEditingController();

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
                  'إضافة تقييم',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
            
                // نوع التقييم
                DropdownButtonFormField<RateType>(
                  value: _rateType,
                  onChanged: (value) {
                    setState(() {
                      _rateType = value!;
                    });
                  },
                  items:
                      RateType.values.map((type) {
                        return DropdownMenuItem<RateType>(
                          value: type,
                          child: Text(
                            type.name.trans(context),
                            style: const TextStyle(fontSize: 16),
                          ),
                        );
                      }).toList(),
                  decoration: InputDecoration(
                    labelText: 'نوع التقييم',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
            
                // إدخال الدرجة
                TextFormField(
                  controller: _scoreController,
                  decoration: InputDecoration(
                    labelText: 'الدرجة (0-100)',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 14,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'يرجى إدخال الدرجة';
                    }
                    final int? score = int.tryParse(value);
                    if (score == null || score < 0 || score > 100) {
                      return 'أدخل درجة صحيحة بين 0 و 100';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _score = int.tryParse(value) ?? 0;
                    });
                  },
                ),
                const SizedBox(height: 15),
            
                // إدخال التعليق
                TextFormField(
                  controller: _commentController,
                  decoration: InputDecoration(
                    labelText: 'التعليق',
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
                      return 'يرجى إدخال تعليق';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _comment = value;
                    });
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
                          final evaluation = Evaluation(
                            score: _score,
                            comment: _comment,
                            rateType: _rateType.toString().split('.').last,
                            createdAt: Timestamp.now(),
                            updatedAt: Timestamp.now(),
                          );
                          context.read<MemberBloc>().add(
                            AddEvaluation(widget.member.id, evaluation),
                          );
                          Navigator.of(context).pop();
                        }
                      },
                      child: const Text(
                        'إضافة التقييم',
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
