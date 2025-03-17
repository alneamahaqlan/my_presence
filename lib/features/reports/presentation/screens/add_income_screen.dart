import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/widgets/app_bar_widget.dart';
import '../../../../core/widgets/text_field_widget.dart';
import '../../../../core/widgets/text_widget.dart';
import '../../data/models/income_model.dart';
import '../bloc/income_bloc.dart';

class AddIncomeScreen extends StatelessWidget {
  const AddIncomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController amountController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();
    final TextEditingController dateController = TextEditingController();
    final TextEditingController currencyController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBarWidget(title: "add_income"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          keyboardDismissBehavior:
              ScrollViewKeyboardDismissBehavior
                  .onDrag, // Fix: Keyboard dismiss on drag
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/money_pile.png",
                    width: 80,
                    height: 70,
                  ),
                ),
                const SizedBox(height: 40),
                // _buildCategoryDropdown(context),
                const SizedBox(height: 16),
                _buildDateField(context, dateController: dateController),
                const SizedBox(height: 16),
                // _buildAmountAndCurrencyRow(
                //   context,
                //   amountController: amountController,
                //   currencyController: currencyController,
                // ),
                // const SizedBox(height: 16),
                _buildNameField(context, nameController: nameController),
                const SizedBox(height: 16),
                _buildDescriptionField(
                  context,
                  descriptionController: descriptionController,
                ),
                const SizedBox(height: 24),
                _buildSaveButton(
                  context,
                  formKey: formKey,
                  amountController: amountController,
                  nameController: nameController,
                  descriptionController: descriptionController,
                  currencyController: currencyController,
                  dateController: dateController,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget _buildCategoryDropdown(BuildContext context) {
  //   return BlocBuilder<IncomeBloc, IncomeState>(
  //     builder: (context, state) {
  //       return DropDownWidget<Category>(
  //         hint: "category".tr(),
  //         items: getIt<RootBloc>()
  //             .state
  //             .appData
  //             .categories
  //             .where((category) => category.type == CategoryType.income)
  //             .toList(),
  //         selectedValue: state.selectedCategory,
  //         onChanged: (value) {
  //           context
  //               .read<IncomeBloc>()
  //               .add(IncomeEvent.categorySelected(value!));
  //         },
  //         displayText: (category) =>
  //             category.getName(context.locale.languageCode),
  //         validator: (value) {
  //           if (value == null) {
  //             return 'error_select_category'.tr();
  //           }
  //           return null;
  //         },
  //       );
  //     },
  //   );
  // }

  Widget _buildDateField(
    BuildContext context, {
    required TextEditingController dateController,
  }) {
    return TextFieldWidget(
      controller: dateController,
      hint: "due_date",
      readOnly: true,
      onTap: () async {
        final DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
        );
        if (pickedDate != null) {
          dateController.text = pickedDate.toIso8601String();
        }
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please select a date';
        }
        return null;
      },
    );
  }

  // Widget _buildAmountAndCurrencyRow(BuildContext context,
  //     {required TextEditingController amountController,
  //     required TextEditingController currencyController}) {
  //   return Row(
  //     children: [
  //       Expanded(
  //         child: TextFieldWidget(
  //             controller: amountController,
  //             hint: "amount",
  //             keyboardType: TextInputType.number,
  //             validator: (value) {
  //               if (value == null || value.isEmpty) {
  //                 return 'Please enter an amount';
  //               }
  //               if (double.tryParse(value) == null) {
  //                 return 'Please enter a valid number';
  //               }
  //               return null;
  //             }),
  //       ),
  //       const SizedBox(width: 10),
  //       Expanded(
  //         child: DropDownWidget(
  //           hint: "currency",
  //           items: getIt<RootBloc>().state.appData.currencies,
  //           onChanged: (value) {
  //             currencyController.text = value!;
  //           },
  //           validator: (value) {
  //             if (value == null || value.isEmpty) {
  //               return 'Please select a currency';
  //             }
  //             return null;
  //           },
  //         ),
  //       ),
  //     ],
  //   );
  // }

  Widget _buildNameField(
    BuildContext context, {
    required TextEditingController nameController,
  }) {
    return TextFieldWidget(
      controller: nameController,
      hint: "name",
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a name';
        }
        return null;
      },
    );
  }

  Widget _buildDescriptionField(
    BuildContext context, {
    required TextEditingController descriptionController,
  }) {
    return TextFieldWidget(
      controller: descriptionController,
      hint: "description",
      maxLines: 3,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a description';
        }
        return null;
      },
    );
  }

  Widget _buildSaveButton(
    BuildContext context, {
    required GlobalKey<FormState> formKey,
    required TextEditingController amountController,
    required TextEditingController nameController,
    required TextEditingController descriptionController,
    required TextEditingController currencyController,
    required TextEditingController dateController,
  }) {
    return BlocConsumer<IncomeBloc, IncomeState>(
      listener: (context, state) {
        state.status.when(
          initial: () {},
          loading: () {
            showLoadingDialog(context);
          },
          success: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Income saved successfully!')),
            );
            context.pop();
            context.pop();
          },
          failed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage ?? 'Failed to save income.'),
              ),
            );
          },
        );
      },
      builder: (context, state) {
        return ElevatedButton(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();
              final income = Income(
                name: nameController.text,
                description: descriptionController.text,
                amount: double.parse(amountController.text),
                currency: currencyController.text,
                category: state.selectedCategory,
                date: Timestamp.fromDate(DateTime.parse(dateController.text)),
              );
              context.read<IncomeBloc>().add(IncomeEvent.saveIncome(income));
            }
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
          child: Center(child: TextWidget(text: "save")),
        );
      },
    );
  }

  //showLoadingDialog widget
  void showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );
  }
}
