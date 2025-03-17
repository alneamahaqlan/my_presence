import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/models/status.dart';
import '../bloc/income_bloc.dart';

class ReportsPage extends StatefulWidget {
  const ReportsPage({super.key});

  @override
  _ReportsPageState createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  @override
  void initState() {
    super.initState();
    // Fetch statistics when the page loads
    context.read<IncomeBloc>().add(const IncomeEvent.fetchIncomes());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<IncomeBloc, IncomeState>(
        builder: (context, state) {
          if (state.status == Status.loading()) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.status == Status.failed()) {
            return Center(
              child: Text("فشل في تحميل البيانات: ${state.errorMessage}"),
            );
          }

          // Extract statistics from the state
          final stats = state.stats;

          // Define data for cards
          final List<Map<String, dynamic>> evaluationData = [
            {
              "title": "الحضور",
              "value": double.parse(stats["attendance_discipline_rate"] ?? "0"),
              "icon": Icons.calendar_today,
              "color": Colors.blue,
            },
            {
              "title": "الأداء التعليمي",
              "value": double.parse(stats["teaching_performance"] ?? "0"),
              "icon": Icons.school,
              "color": Colors.green,
            },
            {
              "title": "التفاعل مع الطلاب",
              "value": double.parse(stats["interaction_with_students"] ?? "0"),
              "icon": Icons.people,
              "color": Colors.orange,
            },
            {
              "title": "الأبحاث",
              "value": double.parse(stats["research_publication_rate"] ?? "0"),
              "icon": Icons.article,
              "color": Colors.red,
            },
          ];

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                const Text(
                  "تقرير الأداء",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                const SizedBox(height: 20),

                // Cards for each statistic
                ...evaluationData.map((data) {
                  return Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            data["color"].withOpacity(0.8),
                            data["color"].withOpacity(0.4),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Icon(data["icon"], size: 40, color: Colors.white),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data["title"],
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "${data["value"].toStringAsFixed(2)}%",
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ],
            ),
          );
        },
      ),
    );
  }
}
