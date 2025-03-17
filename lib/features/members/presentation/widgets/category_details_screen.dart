// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../../root/data/models/category_model.dart';

// import '../../../../dependency_injection.dart';
// import 'sub_expense_list_widget.dart';


// class CategoryDetailsScreen extends StatelessWidget {
//   final Category category;

//   const CategoryDetailsScreen({super.key, required this.category});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(category.getName(context.locale.languageCode)),
//       ),
//       body: BlocProvider(
//         create: (context) => getIt<ExpenseBloc>()..add(const ExpenseEvent.loadExpenses()),
//         child: SubExpenseList(category: category),
//       ),
//     );
//   }
// }