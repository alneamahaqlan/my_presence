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
import '../../data/models/member_create_body.dart';
import '../bloc/member_bloc.dart';

class AddMemberScreen extends StatelessWidget {
  const AddMemberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final roleController = TextEditingController();
    final activityStatusController = TextEditingController();
    final specializationController = TextEditingController();
    final academicRankController = TextEditingController();

    return Scaffold(
      appBar: AppBarWidget(title: "إضافة عضو"),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTextField(
                    context,
                    controller: nameController,
                    hint: "الاسم",
                  ),
                  const SizedBox(height: 16),

                  _buildTextField(
                    context,
                    controller: emailController,
                    hint: "البريد الإلكتروني",
                    isEmail: true,
                  ),
                  const SizedBox(height: 16),

                  _buildDropdown<Role>(
                    context,
                    hint: "الدور",
                    displayTex: (role) => role.name.tr(),
                    items: Role.values,
                    selectedValue: null,
                    onChanged: (value) {
                      roleController.text = value!.toJson();
                    },
                  ),
                  const SizedBox(height: 16),

                  _buildDropdown<ActivityStatus>(
                    context,
                    hint: "حالة النشاط",
                    displayTex: (status) => status.name.tr(),
                    items: ActivityStatus.values,
                    selectedValue: null,
                    onChanged: (value) {
                      activityStatusController.text = value!.toJson();
                    },
                  ),
                  const SizedBox(height: 16),

                  _buildTextField(
                    context,
                    controller: specializationController,
                    hint: "التخصص",
                  ),
                  const SizedBox(height: 16),

                  _buildTextField(
                    context,
                    controller: academicRankController,
                    hint: "الرتبة الأكاديمية",
                  ),
                  const SizedBox(height: 24),

                  _buildSaveButton(
                    context,
                    formKey,
                    nameController,
                    emailController,
                    roleController,
                    activityStatusController,
                    specializationController,
                    academicRankController,
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
  }) {
    return TextFieldWidget(
      keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      controller: controller,
      hint: hint,
      validator: (value) {
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
) {
  return BlocListener<MemberBloc, MemberState>(
    listener: (context, state) {
      state.createStatus.when(
        initial: () {},
        loading: () => _showLoadingDialog(context),
        success: () {
          Navigator.of(context).pop(); // Close the loading dialog
          Ui.showSnackBar(
            context: context,
            message: 'تمت إضافة العضو بنجاح!',
            type: SnackBarType.success,
          );
          Navigator.of(context).pop(); // Close the current screen
        },
        failed: () {
          Navigator.of(context).pop(); // Close the loading dialog
          Ui.showSnackBar(
            context: context,
            message: state.errorMessage!,
            type: SnackBarType.error,
          );
        },
      );
    },
    child: BlocBuilder<MemberBloc, MemberState>(
      builder: (context, state) {
        return ButtonWidget(
          text: 'حفظ',
          onPressed: () {
            if (formKey.currentState!.validate()) {
              final user = MemberCreateBody(
                email: emailController.text,
                name: nameController.text,
                role: roleController.text,
                activityStatus: activityStatusController.text,
                specialization: specializationController.text,
                academicRank: academicRankController.text,
              );
              context.read<MemberBloc>().add(MemberEvent.saveMember(user));
            }
          },
          isSubmitting: state.createStatus == Status.loading(),
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
