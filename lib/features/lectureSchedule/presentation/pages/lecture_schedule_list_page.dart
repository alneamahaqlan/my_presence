import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

// import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/models/status.dart';
import '../../../../core/routes/app_pages.dart';
import '../bloc/lecture_schedule_bloc.dart';
import '../widgets/schedule_card.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('المستويات الدراسية'),
        centerTitle: true,
      ),
      body: BlocBuilder<LectureScheduleBloc, LectureScheduleState>(
        builder: (context, state) {
          if (state.status == Status.loading()) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.status == Status.success()) {
            final schedules = state.schedules.toList();

            if (schedules.isEmpty) {
              return _buildEmptyState();
            }

            return ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: schedules.length,
              itemBuilder: (context, index) {
                final schedule = schedules[index];
                return InkWell(
                  onTap: () {
                    context.pushNamed(
                      AppRoutes.lectures,
                      extra:schedule,
                    );
                  },
                  child: ScheduleCard(schedule: schedule),
                ); // Use ScheduleCard
              },
            );
          } else {
            return const Center(child: Text('Failed to load schedules'));
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final state = context.read<LectureScheduleBloc>().state;
          context.pushNamed(
            AppRoutes.addLectureSchedule,
            extra: state.department!,
          );
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
