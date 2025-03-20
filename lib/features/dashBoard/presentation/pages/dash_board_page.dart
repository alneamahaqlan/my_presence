import 'package:flutter/material.dart';
import 'package:my_presence/core/extensions/context_extensions.dart';

import '../../../../core/extensions/string_extensions.dart';
import '../../../../core/routes/app_pages.dart';
import '../../../root/presentation/widgets/app_drawer.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('لوحة التحكم')),
      drawer: const AppDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 2 columns
              crossAxisSpacing: 16.0, // Spacing between columns
              mainAxisSpacing: 16.0, // Spacing between rows
              childAspectRatio: 1.0, // Square cards
            ),
            children: [
              //faculties
              _buildDashboardCard(
                context: context,
                icon: Icons.person,
                title: 'faculties',
                onTap: () {
                  context.pushNamed(AppRoutes.faculties);
                },
              ),
              //subjects
              _buildDashboardCard(
                context: context,
                icon: Icons.book,
                title: 'subjects',
                onTap: () {
                  context.pushNamed(AppRoutes.subjects);
                },
              ),
              //departments
              _buildDashboardCard(
                context: context,
                icon: Icons.work,
                title: 'departments',
                onTap: () {
                  context.pushNamed(AppRoutes.departments);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDashboardCard({
    required BuildContext context,
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.0),
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 48.0, color: Theme.of(context).primaryColor),
              const SizedBox(height: 16.0),
              Text(
                title.trans(context),
                style: Theme.of(
                  context,
                ).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
