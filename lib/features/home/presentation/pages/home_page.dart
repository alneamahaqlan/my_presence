import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/text_widget.dart';
import '../../../faculty/presentation/bloc/faculty_bloc.dart';
import '../../../members/presentation/bloc/member_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Members Card
                  BlocBuilder<MemberBloc, MemberState>(
                    builder: (context, state) {
                      return _buildDashboardCard(
                        context: context,
                        count: state.members.length,
                        title: "عدد الاعضاء",
                      );
                    },
                  ),
                  // Faculties Card
                  BlocBuilder<FacultyBloc, FacultyState>(
                    builder: (context, state) {
                      return _buildDashboardCard(
                        context: context,
                        count: state.status.maybeWhen(
                          orElse: () => 0,
                          success: () => state.faculties.length,
                        ),
                        title: "الكليات",
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDashboardCard({
    required BuildContext context,
    required int count,
    required String title,
  }) {
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: Container(
        width: 120, // Smaller width
        height: 120, // Smaller height
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.grey.shade100, // Dark gray
              Colors.grey.shade400, // Light gray
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0), // Adjusted padding
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(
                text: count.toString(),
                style: const TextStyle(
                  fontSize: 20, // Smaller font size
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8.0),
              TextWidget(
                text: title,
                style: const TextStyle(
                  fontSize: 12, // Smaller font size
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
