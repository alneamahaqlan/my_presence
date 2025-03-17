// import 'package:easy_localization/easy_localization.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../../core/models/status.dart';
// import '../../../root/data/models/category_model.dart';
// import '../screens/test/expense_bloc.dart';

// class ExpensePieChartWidget extends StatelessWidget {
//   const ExpensePieChartWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ExpenseBloc, ExpenseState>(
//       builder: (context, state) {
//         if (state.status == Status.success()) {
//           // Group expenses by category and calculate totals
//           final categoryTotals = <Category, double>{};
//           for (final expense in state.expenses) {
//             categoryTotals.update(
//               expense.category!,
//               (value) => value + expense.amount,
//               ifAbsent: () => expense.amount,
//             );
//           }

//           // Create pie chart sections
//           final pieChartSections = categoryTotals.entries.map((entry) {
//             return PieChartSectionData(
//               value: entry.value,
//               title: entry.key.getName(context.locale.languageCode),
//               color: entry.key.colorValue,
//               radius: 50,
             
//               titleStyle: const TextStyle(
//                 fontSize: 10,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             );
//           }).toList();

//           return SizedBox(
//             height: 200,
//             child: PieChart(
//               PieChartData(
//                 sections: pieChartSections,
//               ),
//             ),
//           );
//         } else {
//           return const SizedBox(
//             height: 200,
//             child: Center(child: CircularProgressIndicator()),
//           );
//         }
//       },
//     );
//   }
// }
