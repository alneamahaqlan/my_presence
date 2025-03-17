// import 'package:easy_localization/easy_localization.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../../core/extensions/context_extensions.dart';
// import '../../../../core/models/status.dart';
// import '../../../../core/routes/app_pages.dart';
// import '../../../../core/widgets/app_bar_widget.dart';
// import '../../../../core/widgets/text_widget.dart';
// import '../../../root/data/models/category_model.dart';
// import '../bloc/income_bloc.dart';
// import '../widgets/transaction_card_widget.dart';

// class IncomesScreen extends StatelessWidget {
//   const IncomesScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBarWidget(
//         title: "incomes",
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.add_box_outlined),
//             onPressed: () {
//               context.pushNamed(AppRoutes.addIncomeInner);
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: BlocBuilder<IncomeBloc, IncomeState>(
//           builder: (context, state) {
//             if (state.status == Status.loading()) {
//               return const Center(child: CircularProgressIndicator());
//             } else if (state.status == Status.failed()) {
//               return Center(
//                   child: Text(state.errorMessage ?? "Failed to load incomes"));
//             }

//             final incomes = state.incomes;

//             // Grouping incomes by category
//             final Map<Category, double> categoryTotals = {};
//             for (var income in incomes) {
//               categoryTotals.update(
//                   income.category, (value) => value + income.amount,
//                   ifAbsent: () => income.amount);
//             }

//             final totalIncome = categoryTotals.values
//                 .fold<double>(0, (sum, amount) => sum + amount);

//             final sections = categoryTotals.entries.map((entry) {
//               return PieChartSectionData(
//                 color: entry.key.colorValue,
//                 value: entry.value,
//                 title: entry.key.getName(context.locale.languageCode),
//               );
//             }).toList();

//             return Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 TextWidget(
//                   text: "total",
//                   namedArgs: {
//                     "total": totalIncome.toStringAsFixed(2),
//                     "currency": "\$"
//                   },
//                   style: const TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.teal,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 200,
//                   child: PieChart(
//                       PieChartData(sections: sections, centerSpaceRadius: 40)),
//                 ),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: categoryTotals.entries
//                         .map((entry) => categoryChip(
//                             "${entry.value.toStringAsFixed(2)} ${entry.key.getName(context.locale.languageCode)}"))
//                         .toList(),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 const TextWidget(
//                   text: "recent_transactions",
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: incomes.length,
//                     itemBuilder: (context, index) {
//                       final income = incomes[index];
//                       return TransactionCardWidget(
//                         title: income.name,
//                         amount: income.amount,
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }

//   Widget categoryChip(String label) {
//     return Chip(
//       label: Text(label, style: const TextStyle(color: Colors.white)),
//       backgroundColor: Colors.black87,
//     );
//   }
// }
