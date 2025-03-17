import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/routes/app_pages.dart';
import '../../../root/data/models/category_model.dart';
import '../../data/models/income_model.dart';
import '../bloc/income_bloc.dart';
import 'transaction_card_widget.dart';

class IncomeCategoryList extends StatelessWidget {
  const IncomeCategoryList({super.key, required this.groupedIncomes});

  final Map<Category, List<Income>> groupedIncomes;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: groupedIncomes.length,
        itemBuilder: (context, index) {
          final category = groupedIncomes.keys.elementAt(index);
          final categoryIncomes = groupedIncomes[category]!;

          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ExpansionTile(
              leading: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: category.colorValue,
                  shape: BoxShape.circle,
                ),
              ),
              title: Text(
                category.getName(context.locale.languageCode),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Row(
                children: [
                  Text(
                    '${categoryIncomes.length} ${'income'.tr()}',
                    style: const TextStyle(fontSize: 14),
                  ),
                  const Spacer(),
                  Text(
                    categoryIncomes
                        .map((income) => income.amount)
                        .reduce((a, b) => a + b)
                        .toStringAsFixed(2),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
              trailing: IconButton(
                icon: const Icon(Icons.arrow_forward),
                onPressed: () {
                  // Navigate to CategoryDetailsScreen
                  context.pushNamed(
                    AppRoutes.categoryDetails,
                    extra: category, // Pass the selected category
                  );
                },
              ),
              children:
                  categoryIncomes.map((income) {
                    return Dismissible(
                      key: Key(income.id), // Unique key for each item
                      direction:
                          DismissDirection
                              .endToStart, // Swipe from right to left
                      background: Container(
                        color: Colors.red,
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.only(right: 20),
                        child: const Icon(Icons.delete, color: Colors.white),
                      ),
                      confirmDismiss: (direction) async {
                        // Show a confirmation dialog before deleting
                        return await showDialog(
                          context: context,
                          builder:
                              (context) => AlertDialog(
                                title: Text('delete_income_title'.tr()),
                                content: Text('delete_income_message'.tr()),
                                actions: [
                                  TextButton(
                                    onPressed:
                                        () => Navigator.of(context).pop(false),
                                    child: Text('cancel'.tr()),
                                  ),
                                  TextButton(
                                    onPressed:
                                        () => Navigator.of(context).pop(true),
                                    child: Text('delete'.tr()),
                                  ),
                                ],
                              ),
                        );
                      },
                      onDismissed: (direction) {
                        // Trigger the delete event
                        context.read<IncomeBloc>().add(
                          IncomeEvent.deleteIncome(income.id),
                        );
                      },
                      child: TransactionCardWidget(
                        title: income.name,
                        amount: income.amount,
                        onDelete: () {
                          context.read<IncomeBloc>().add(
                            IncomeEvent.deleteIncome(income.id),
                          );
                        },
                        onEdit: () {
                          context.pushNamed(
                            AppRoutes.editReport,
                            extra: income,
                          );
                        },
                      ),
                    );
                  }).toList(),
            ),
          );
        },
      ),
    );
  }
}
