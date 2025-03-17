// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../../../core/models/status.dart';
// import '../pages/bloc/root_bloc.dart';
// import 'transaction_card_widget.dart';

// class TransactionSectionWidget extends StatelessWidget {
//   const TransactionSectionWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<RootBloc, RootState>(
//       builder: (context, state) {
//         // Check if the status is success and data is loaded
//         if (state.status == Status.success()) {
//           return TransactionCardWidget(transactions: state.appData.transactions);
//         }

//         // Show a loading indicator if data is still being fetched
//         if (state.status == Status.loading()) {
//           return const Center(child: CircularProgressIndicator());
//         }

//         // Show an error message if something went wrong
//         if (state.status == Status.failed()) {
//           return Center(
//             child: Text(
//               state.errorMessage ?? "An error occurred",
//               style: const TextStyle(color: Colors.red),
//             ),
//           );
//         }

//         // Default fallback (initial state)
//         return const SizedBox.shrink();
//       },
//     );
//   }
// }