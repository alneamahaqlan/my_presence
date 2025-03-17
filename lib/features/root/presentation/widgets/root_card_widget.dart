// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:google_fonts/google_fonts.dart';
// import '../../../../core/extensions/context_extensions.dart';

// import '../../../../core/models/status.dart';
// import '../../../../core/widgets/text_widget.dart';
// import '../pages/bloc/root_bloc.dart';

// class RootCardWidget extends StatelessWidget {
//   const RootCardWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<RootBloc, RootState>(
//       builder: (context, state) {
//         // Check if the status is success and data is loaded
//         if (state.status == Status.success()) {
//           return GridView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               mainAxisSpacing: 10,
//               crossAxisSpacing: 10,
//               childAspectRatio: 1.2,
//             ),
//             itemCount: state.appData.items.length, // Access items from appData
//             itemBuilder: (context, index) {
//               final item = state.appData.items[index]; // Get the current item
//               return InkWell(
//                 onTap: item.route == null
//                     ? null
//                     : () => context.pushNamed(item.route!),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.teal.shade400,
//                     borderRadius: BorderRadius.circular(16),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       IconButton(
//                         onPressed: item.addRoute == null
//                             ? null
//                             : () => context.pushNamed(item.addRoute!),
//                         icon: Icon(
//                           Icons.add_circle,
//                           color: item.addRoute == null ? Colors.grey : Colors.white,
//                           size: 30,
//                         ),
//                       ),
//                       const SizedBox(height: 5),
//                       TextWidget(
//                         text: item.title,
//                         style: GoogleFonts.poppins(
//                           color: Colors.white,
//                           fontSize: 16,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                       Text(
//                         item.icon,
//                         style: const TextStyle(fontSize: 30),
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           );
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