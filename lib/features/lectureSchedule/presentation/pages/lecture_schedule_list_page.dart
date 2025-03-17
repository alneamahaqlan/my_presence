import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/routes/app_pages.dart';
import '../../../department/data/models/department_model.dart';
import '../bloc/lecture_schedule_bloc.dart';
import '../widgets/generate_and_print_pdf.dart';
import '../widgets/schedule_card.dart';

class LectureScheduleListPage extends StatelessWidget {
  final Department department;

  const LectureScheduleListPage({super.key, required this.department});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lecture Schedules'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.print),
            onPressed: () {
              final state = context.read<LectureScheduleBloc>().state;
              if (state is LectureScheduleLoaded) {
                final schedules =
                    state.schedules
                       
                        .toList();
                generateAndPrintPdf(schedules, department);
              }
            },
          ),
        ],
      ),
      body: BlocBuilder<LectureScheduleBloc, LectureScheduleState>(
        builder: (context, state) {
          if (state is LectureScheduleLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is LectureScheduleLoaded) {
            final schedules =
                state.schedules
                   
                    .toList();

            if (schedules.isEmpty) {
              return _buildEmptyState();
            }

            return ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: schedules.length,
              itemBuilder: (context, index) {
                final schedule = schedules[index];
                return ScheduleCard(schedule: schedule, department: department);
              },
            );
          } else {
            return const Center(child: Text('Failed to load schedules'));
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushNamed(AppRoutes.addLectureSchedule, extra: department);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  /// Displays a UI when there are no schedules for today.
  Widget _buildEmptyState() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.event_busy, size: 80, color: Colors.grey),
          SizedBox(height: 10),
          Text(
            'No repeating schedules available',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
