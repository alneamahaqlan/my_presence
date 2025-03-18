import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_presence/core/extensions/context_extensions.dart';

import '../../../../core/models/status.dart';
import '../../../../core/routes/app_pages.dart';
import '../bloc/faculty_bloc.dart';

class FacultiesPage extends StatelessWidget {
  const FacultiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Faculties'),
        centerTitle: true,
        elevation: 0,
      ),
      body: BlocBuilder<FacultyBloc, FacultyState>(
        builder: (context, state) {
          if (state.status == Status.loading()) {
            return Center(
              child: CircularProgressIndicator(
                color: colorScheme.primary, // Use theme primary color
              ),
            );
          } else if (state.status == Status.success()) {
            final faculties = state.faculties;
            return ListView.builder(
              padding: const EdgeInsets.all(
                16.0,
              ), // Add padding around the list
              itemCount: faculties.length,
              itemBuilder: (context, index) {
                final faculty = faculties[index];
                return Card(
                  elevation: 4, // Add shadow to the card
                  margin: const EdgeInsets.only(
                    bottom: 16.0,
                  ), // Add margin between cards
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      16.0,
                    ), // Rounded corners
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(
                      16.0,
                    ), // Rounded corners for InkWell
                    onTap: () {
                      // Navigate to faculty profile page
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        gradient: LinearGradient(
                          colors: [
                            colorScheme.primary.withOpacity(0.1),
                            colorScheme.primary.withOpacity(0.05),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(
                          16.0,
                        ), // Add padding inside the card
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Faculty Name
                            Text(
                              faculty.name,
                              style: theme.textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                color:
                                    colorScheme
                                        .onSurface, // Use theme onSurface color
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ), // Add spacing between text and icon
                            // Additional Details (e.g., description or stats)
                            Text(
                              '${faculty.departments.length} Departments',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: colorScheme.onSurface.withOpacity(0.7),
                              ),
                            ),
                            const SizedBox(
                              height: 16.0,
                            ), // Add spacing between text and icon
                            // Icon or Action Button
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color:
                                        colorScheme
                                            .primary, // Use theme primary color
                                  ),
                                  onPressed: () {
                                    context.pushNamed(
                                      AppRoutes.departments,
                                      extra: faculty,
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          } else if (state.status == Status.failed()) {
            return Center(
              child: Text(
                state.message!,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: colorScheme.error, // Use theme error color
                ),
              ),
            );
          }
          return Center(
            child: Text(
              'No data available',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurface.withOpacity(
                  0.6,
                ), // Use theme onSurface color with opacity
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushNamed(AppRoutes.addFaculty);
        },
        backgroundColor: colorScheme.primary, // Use theme primary color
        child: Icon(
          Icons.add,
          color: colorScheme.onPrimary, // Use theme onPrimary color
        ),
      ),
    );
  }
}
