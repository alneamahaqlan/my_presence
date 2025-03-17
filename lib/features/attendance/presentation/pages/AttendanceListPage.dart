// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../bloc/attendance_bloc.dart';


// class AttendanceListPage extends StatelessWidget {
//   const AttendanceListPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Attendance List')),
//       body: BlocBuilder<AttendanceBloc, AttendanceState>(
//         builder: (context, state) {
//           return state.when(
//             initial: () => const Center(child: Text('No data')),
//             loading: () => const Center(child: CircularProgressIndicator()),
//             loaded: (attendanceList) => ListView.builder(
//               itemCount: attendanceList.length,
//               itemBuilder: (context, index) {
//                 final attendance = attendanceList[index];
//                 return ListTile(
//                   title: Text(attendance.byUser.name),
//                   subtitle: Text(attendance.status),
//                 );
//               },
//             ),
//             error: (message) => Center(child: Text(message)),
//             success: (message) => Center(child: Text(message)),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => const AddAttendancePage()),
//           );
//         },
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }