// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_datagrid/datagrid.dart';

// class ReportsPage extends StatefulWidget {
//   const ReportsPage({super.key});

//   @override
//   _ReportsPageState createState() => _ReportsPageState();
// }

// class _ReportsPageState extends State<ReportsPage> {
//   // Sample attendance data
//   final List<Attendance> allRecords = [
//     Attendance(name: 'John Doe', date: '2023-10-01', status: 'Present'),
//     Attendance(name: 'Jane Smith', date: '2023-10-01', status: 'Absent'),
//     Attendance(
//       name: 'Alice Johnson',
//       date: '2023-10-01',
//       status: 'Present',
//     ),
//     Attendance(name: 'Bob Brown', date: '2023-10-02', status: 'Present'),
//     Attendance(name: 'Charlie Davis', date: '2023-10-02', status: 'Late'),
//     Attendance(
//       name: 'David Wilson',
//       date: '2023-10-03',
//       status: 'Present',
//     ),
//     Attendance(name: 'Eva Green', date: '2023-10-03', status: 'Absent'),
//   ];

//   // Filtered records based on search query
//   List<Attendance> filteredRecords = [];

//   @override
//   void initState() {
//     super.initState();
//     filteredRecords = allRecords; // Initialize with all records
//   }

//   // Function to filter records based on search query
//   void filterRecords(String query) {
//     setState(() {
//       filteredRecords =
//           allRecords
//               .where(
//                 (record) =>
//                     record.name.toLowerCase().contains(query.toLowerCase()),
//               )
//               .toList();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Search bar
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TextField(
//               decoration: const InputDecoration(
//                 labelText: 'Search by name',
//                 hintText: 'Enter a name...',
//                 prefixIcon: Icon(Icons.search),
//                 border: OutlineInputBorder(),
//               ),
//               onChanged: filterRecords,
//             ),
//           ),
//           // Data table
//           Expanded(
//             child: SfDataGrid(
//               source: AttendanceDataSource(filteredRecords),
//               columns: [
//                 GridColumn(
//                   columnName: 'name',
//                   label: Container(
//                     padding: const EdgeInsets.all(8.0),
//                     alignment: Alignment.center,
//                     child: const Text(
//                       'Name',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//                 GridColumn(
//                   columnName: 'date',
//                   label: Container(
//                     padding: const EdgeInsets.all(8.0),
//                     alignment: Alignment.center,
//                     child: const Text(
//                       'Date',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//                 GridColumn(
//                   columnName: 'status',
//                   label: Container(
//                     padding: const EdgeInsets.all(8.0),
//                     alignment: Alignment.center,
//                     child: const Text(
//                       'Status',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Data source for the DataGrid
// class AttendanceDataSource extends DataGridSource {
//   AttendanceDataSource(List<Attendance> records) {
//     _attendanceRecords =
//         records
//             .map<DataGridRow>(
//               (record) => DataGridRow(
//                 cells: [
//                   DataGridCell<String>(columnName: 'name', value: record.name),
//                   DataGridCell<String>(columnName: 'date', value: record.date),
//                   DataGridCell<String>(
//                     columnName: 'status',
//                     value: record.status,
//                   ),
//                 ],
//               ),
//             )
//             .toList();
//   }

//   List<DataGridRow> _attendanceRecords = [];

//   @override
//   List<DataGridRow> get rows => _attendanceRecords;

//   @override
//   DataGridRowAdapter buildRow(DataGridRow row) {
//     return DataGridRowAdapter(
//       cells:
//           row.getCells().map<Widget>((dataGridCell) {
//             return Container(
//               alignment: Alignment.center,
//               padding: const EdgeInsets.all(8.0),
//               child: Text(dataGridCell.value.toString()),
//             );
//           }).toList(),
//     );
//   }
// }

// // Attendance record model
// class Attendance {
//   final String name;
//   final String date;
//   final String status;

//   Attendance({
//     required this.name,
//     required this.date,
//     required this.status,
//   });
// }
