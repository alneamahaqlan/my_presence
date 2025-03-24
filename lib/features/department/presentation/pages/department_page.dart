import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:my_presence/core/extensions/context_extensions.dart';

import '../../../../core/models/status.dart';
import '../../../../core/routes/app_pages.dart';
import '../../data/models/department_model.dart';
import '../bloc/department_bloc.dart';

class DepartmentPage extends StatelessWidget {
  const DepartmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الأقسام'),
        centerTitle: true,
        elevation: 0,
      ),
      body: BlocBuilder<DepartmentBloc, DepartmentState>(
        builder: (context, state) {
          if (state.status == Status.loading()) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.status == Status.success()) {
            final departments = state.departments.toList();
            if (departments.isEmpty) {
              return const Center(child: Text('لا توجد بيانات متاحة'));
            }
            return ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: departments.length,
              itemBuilder: (context, index) {
                final department = departments[index];
                return _buildDepartmentCard(context, department);
              },
            );
          } else if (state.status == Status.failed()) {
            return Center(child: Text(state.message!));
          }
          return const Center(child: Text('No data available'));
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.add, color: Colors.white),
        onPressed: () => context.pushNamed(AppRoutes.addDepartment),
      ),
    );
  }

  Widget _buildDepartmentCard(BuildContext context, Department department) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      margin: const EdgeInsets.only(bottom: 16.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(12.0),
        onTap: () {
          print(department.id);
          context.pushNamed(AppRoutes.lectureScheduleList, extra: department);
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Department Name
              ListTile(
                title: Text(
                  department.name,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                subtitle: Text(
                  department.faculty?.name ?? '',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(color: Colors.grey[700]),
                ),
              ),

              // Text(
              //   department.name,
              //   style: Theme.of(context).textTheme.titleLarge?.copyWith(
              //     fontWeight: FontWeight.bold,
              //     color: Theme.of(context).primaryColor,
              //   ),
              // ),
              const SizedBox(height: 8.0),

              // Schedules Count
              Row(
                children: [
                  const Icon(Icons.schedule, size: 16, color: Colors.grey),
                  const SizedBox(width: 6),
                  Text(
                    '${department.schedules?.length ?? 0} جدول',
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(color: Colors.grey[700]),
                  ),
                ],
              ),

              const SizedBox(height: 8.0),

              // Created & Updated Timestamps
              if (department.createdAt != null || department.updatedAt != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (department.createdAt != null)
                      _buildTimestampRow(
                        'تاريخ الإنشاء',
                        department.createdAt!,
                      ),
                    if (department.updatedAt != null)
                      _buildTimestampRow('آخر تحديث', department.updatedAt!),
                  ],
                ),

              const SizedBox(height: 12.0),

              // Navigation Arrow
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Format timestamp to readable text
  Widget _buildTimestampRow(String label, Timestamp timestamp) {
    final formattedDate = DateFormat(
      'yyyy-MM-dd HH:mm',
    ).format(timestamp.toDate());
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(Icons.access_time, size: 16, color: Colors.grey[600]),
          const SizedBox(width: 6),
          Text(
            '$label: $formattedDate',
            style: TextStyle(color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }
}
