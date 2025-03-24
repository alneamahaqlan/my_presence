import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/models/status.dart';
import '../../../../core/utils/enums/activity_status.dart';
import '../../../../core/utils/enums/role.dart';
import '../../../../core/utils/ui.dart';
import '../../../../core/widgets/app_bar_widget.dart';
import '../../../../core/widgets/button_widget.dart';
import '../../../../core/widgets/drop_down_widget.dart';
import '../../../../core/widgets/text_field_widget.dart';
import '../../../auth/data/models/user_model.dart';
import '../../data/models/member_edit_body.dart';
import '../bloc/member_bloc.dart';

class EditMemberScreen extends StatelessWidget {
  final UserModel member;

  const EditMemberScreen({super.key, required this.member});

  @override
  Widget build(BuildContext context) {
    
    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController(text: member.name);
    final emailController = TextEditingController(text: member.email);
    final roleController = TextEditingController(text: member.role.name);
    final activityStatusController = TextEditingController(
      text: member.activityStatus.name,
    );
    final specializationController = TextEditingController(
      text: member.specialization,
    );
    final academicRankController = TextEditingController(
      text: member.academicRank,
    );

    return Scaffold(
      appBar: AppBarWidget(title: "تعديل العضو"),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // حقل الاسم
                  _buildTextField(
                    context,
                    controller: nameController,
                    hint: "الاسم",
                  ),
                  const SizedBox(height: 16),

                  // حقل البريد الإلكتروني
                  _buildTextField(
                    context,
                    controller: emailController,
                    hint: "البريد الإلكتروني",
                    isEmail: true,
                  ),
                  const SizedBox(height: 16),

                  // قائمة منسدلة للدور
                  _buildDropdown<Role>(
                    context,
                    hint: "الدور",
                    displayTex: (role) => role.name.tr(),
                    items: Role.values,
                    selectedValue:
                        roleController.text.isEmpty
                            ? member.role
                            : Role.fromJson(roleController.text),
                    onChanged: (value) {
                      roleController.text = value!.toJson();
                    },
                  ),
                  const SizedBox(height: 16),

                  // قائمة منسدلة لحالة النشاط
                  _buildDropdown<ActivityStatus>(
                    context,
                    hint: "حالة النشاط",
                    displayTex: (status) => status.name.tr(),
                    items: ActivityStatus.values,
                    selectedValue:
                        activityStatusController.text.isEmpty
                            ? member.activityStatus
                            : ActivityStatus.fromJson(
                              activityStatusController.text,
                            ),
                    onChanged: (value) {
                      activityStatusController.text = value!.toJson();
                    },
                  ),
                  const SizedBox(height: 16),

                  // حقل التخصص
                  _buildTextField(
                    context,
                    controller: specializationController,
                    hint: "التخصص",
                    validator: (value) {
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),

                  // حقل الرتبة الأكاديمية
                  _buildTextField(
                    context,
                    controller: academicRankController,
                    hint: "الرتبة الأكاديمية",
                    validator: (value) {
                      return null;
                    },
                  ),
                  const SizedBox(height: 24),

                  // زر الحفظ
                  _buildSaveButton(
                    context,
                    formKey,
                    nameController,
                    emailController,
                    roleController,
                    activityStatusController,
                    specializationController,
                    academicRankController,
                    member.id!,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
    BuildContext context, {
    required TextEditingController controller,
    required String hint,
    bool isEmail = false,
    String? Function(String?)? validator,
  }) {
    return TextFieldWidget(
      controller: controller,
      hint: hint,
      validator:
          validator ??
          (value) {
            if (value == null || value.isEmpty) return 'يرجى إدخال $hint';
            if (isEmail && !value.contains('@')) {
              return 'يرجى إدخال بريد إلكتروني صالح';
            }
            return null;
          },
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
      validator: (value) => value == null ? 'يرجى اختيار $hint' : null,
    );
  }
Widget _buildSaveButton(
  BuildContext context,
  GlobalKey<FormState> formKey,
  TextEditingController nameController,
  TextEditingController emailController,
  TextEditingController roleController,
  TextEditingController activityStatusController,
  TextEditingController specializationController,
  TextEditingController academicRankController,
  String memberId,
) {
  return BlocListener<MemberBloc, MemberState>(
    listener: (context, state) {
      state.editStatus.maybeWhen(
        initial: () {},
        loading: () => _showLoadingDialog(context),
        success: () {
          Navigator.of(context).pop(); // Close the loading dialog
          Ui.showSnackBar(
            context: context,
            message: 'تم تعديل العضو بنجاح!',
            type: SnackBarType.success,
          );
          Navigator.of(context).pop(); // Close the current screen
        },
        orElse: () {},
      );
    },
    child: BlocBuilder<MemberBloc, MemberState>(
      builder: (context, state) {
        return ButtonWidget(
          text: 'تحديث',
          onPressed: () {
            if (formKey.currentState!.validate()) {
              context.read<MemberBloc>().add(
                MemberEvent.editMember(
                  userId: memberId,
                  memberEditBody: MemberEditBody(
                    name: nameController.text,
                    email: emailController.text,
                    role: roleController.text,
                    activityStatus: activityStatusController.text,
                    specialization: specializationController.text,
                    academicRank: academicRankController.text,
                  ),
                ),
              );
            }
          },
          isSubmitting: state.editStatus == Status.loading(),
        );
      },
    ),
  );
}

  void _showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );
  }
}
