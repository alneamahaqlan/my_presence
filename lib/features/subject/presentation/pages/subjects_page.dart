import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_presence/core/extensions/context_extensions.dart';

import '../../../../core/models/status.dart';
import '../../../../core/routes/app_pages.dart';
import '../bloc/subject_bloc.dart';

class SubjectsPage extends StatelessWidget {
  const SubjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Subjects')),
      body: BlocBuilder<SubjectBloc, SubjectState>(
        builder: (context, state) {
          if (state.status == Status.loading()) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.status == Status.success()) {
            final subjects = state.subjects.toList();
            return ListView.builder(
              padding: const EdgeInsets.all(
                16.0,
              ), // Add padding around the list
              itemCount: subjects.length,
              itemBuilder: (context, index) {
                final subject = subjects[index];
                return Card(
                  elevation: 4, // Add shadow to the card
                  margin: const EdgeInsets.only(
                    bottom: 16.0,
                  ), // Add margin between cards
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      12.0,
                    ), // Rounded corners
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(
                      12.0,
                    ), // Rounded corners for InkWell
                    onTap: () {
                      // Navigate to faculty profile page
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(
                        16.0,
                      ), // Add padding inside the card
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Faculty Name
                          Text(
                            subject.name,
                            style: Theme.of(context).textTheme.titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),

                          const SizedBox(
                            height: 8.0,
                          ), // Add spacing between text and icon
                          // Icon or Action Button
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                ),
                                onPressed: () {
                                  // context.pushNamed(AppRoutes.departments, extra: subject);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else if (state.status == Status.failed()) {
            return Center(child: Text(state.message!));
          }
          return const Center(child: Text('No data available'));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to add subject page
          context.pushNamed(AppRoutes.addSubject);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
