import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/utils/enums/activity_status.dart';
import '../../../../core/utils/enums/role.dart';
import '../../../../core/utils/ui.dart';
import '../../../../core/widgets/app_bar_widget.dart';
import '../../../../core/widgets/drop_down_widget.dart';
import '../../../../core/widgets/text_field_widget.dart';
import '../../../../core/widgets/text_widget.dart';
import '../../../auth/data/models/user_model.dart';
import '../../../faculty/data/models/faculty_model.dart';
import '../../../faculty/presentation/bloc/faculty_bloc.dart';
import '../bloc/member_bloc.dart';

class AddMemberScreen extends StatelessWidget {
  const AddMemberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final roleController = TextEditingController();
    final activityStatusController = TextEditingController();
    final specializationController = TextEditingController();
    final academicRankController = TextEditingController();


    return Scaffold(
      appBar: AppBarWidget(title: "add_member"),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTextField(
                    context,
                    controller: nameController,
                    hint: "name",
                  ),
                  const SizedBox(height: 16),
                  _buildTextField(
                    context,
                    controller: emailController,
                    hint: "email",
                    isEmail: true,
                  ),
                  const SizedBox(height: 16),
                  // Role Dropdown
                  _buildDropdown<Role>(
                    context,
                    hint: "role",
                    displayTex: (role) => role.name,
                    items: Role.values,
                    selectedValue: null,
                    onChanged: (value) {
                      roleController.text = value!.toJson();
                    },
                  ),
                  const SizedBox(height: 16),

                  // Activity Status Dropdown
                  _buildDropdown<ActivityStatus>(
                    displayTex: (status) => status.name,
                    context,
                    hint: "activity_status",
                    items: ActivityStatus.values,
                    selectedValue: null,
                    onChanged: (value) {
                      activityStatusController.text = value!.toJson();
                    },
                  ),
                  const SizedBox(height: 16),
                  

                  _buildSpecializationField(specializationController),
                  const SizedBox(height: 16),
                  _buildAcademicRankField(academicRankController),
                  const SizedBox(height: 16),

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
      controller: controller,
      hint: hint,
      validator: (value) {
        if (value == null || value.isEmpty) return 'Please enter a $hint';
        if (isEmail && !value.contains('@')) {
          return 'Please enter a valid email';
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
      validator: (value) => value == null ? 'Please select a $hint' : null,
    );
  }

  Widget _buildSpecializationField(TextEditingController controller) {
    return TextFieldWidget(controller: controller, hint: "Specialization");
  }

  Widget _buildAcademicRankField(TextEditingController controller) {
    return TextFieldWidget(controller: controller, hint: "Academic Rank");
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
    return BlocConsumer<MemberBloc, MemberState>(
      listener: (context, state) {
        state.status.when(
          initial: () {},
          loading: () => _showLoadingDialog(context),
          success: () {
            Ui.showSnackBar(
              context: context,
              message: 'Member added successfully!',
              type: SnackBarType.success,
            );
            context.pop();
            context.pop();
          },
          failed:
              () => {
                context.pop(),
                Ui.showSnackBar(
                  context: context,
                  message: state.errorMessage!,
                  type: SnackBarType.error,
                ),
              },
        );
      },
      builder: (context, state) {
        return ElevatedButton(
          onPressed: () {
            // if (formKey.currentState!.validate()) {

            final user = UserModel(
              id: null,
              email: emailController.text,
              name: nameController.text,
              role: Role.fromJson(roleController.text),
              activityStatus: ActivityStatus.fromJson(
                activityStatusController.text,
              ),
              specialization: specializationController.text,
              academicRank: academicRankController.text,
            );
            context.read<MemberBloc>().add(MemberEvent.saveMember(user));
            // }
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
          child: Center(child: TextWidget(text: "save")),
        );
      },
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
