import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/routes/app_pages.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../pages/bloc/root_bloc.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, authState) {
        final user = authState.user;

        return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              // Drawer Header with User Profile
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue.shade700, Colors.blue.shade400],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        'assets/images/user_avatar.png',
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      user?.name ?? 'زائر',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      user?.email ?? 'غير مسجل الدخول',
                      style: TextStyle(
                        color: Colors.white.withAlpha((0.8 * 255).toInt()),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),

              // Drawer Items
              _buildDrawerItem(context, Icons.home, 'الرئيسية', AppRoutes.home),
              _buildDrawerItem(
                context,
                Icons.people,
                'الأعضاء',
                AppRoutes.members,
              ),
              _buildDrawerItem(
                context,
                Icons.report,
                'التقارير',
                AppRoutes.reports,
              ),
              _buildDrawerItem(
                context,
                Icons.settings,
                'الإعدادات',
                AppRoutes.settings,
              ),

              const Divider(),

              // Admin-specific item
              if (user?.role.name == 'admin')
                ListTile(
                  leading: const Icon(Icons.dashboard, color: Colors.blue),
                  title: const Text('لوحه التحكم'),
                  onTap: () {
                    context.pushNamed(AppRoutes.dashboard);
                    context.pop(); // Close the drawer
                  },
                ),

              // Logout item
              ListTile(
                leading: const Icon(Icons.logout, color: Colors.red),
                title: const Text(
                  'تسجيل الخروج',
                  style: TextStyle(color: Colors.red),
                ),
                onTap: () {
                  // Dispatch sign-out event
                  context.read<AuthBloc>().add(
                    const AuthEvent.signOutRequested(),
                  );
                  context.pop(); // Close the drawer
                },
              ),
            ],
          ),
        );
      },
    );
  }

  /// Helper method to build drawer items
  Widget _buildDrawerItem(
    BuildContext context,
    IconData icon,
    String title,
    String route,
  ) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title),
      onTap: () {
        // Get the current index based on the route
        final index = _getCurrentIndex(route);

        // Dispatch the RootEvent to update the selected index
        context.read<RootBloc>().add(
          RootEvent.itemTapped(context: context, index: index),
        );

        // Close the drawer
        context.pop();
      },
    );
  }

  /// Helper method to get the current index based on the route
  int _getCurrentIndex(String route) {
    switch (route) {
      case AppRoutes.home:
        return 0;
      case AppRoutes.members:
        return 1;
      case AppRoutes.reports:
        return 2;
      case AppRoutes.settings:
        return 3;
      default:
        return 0; // Default to home
    }
  }
}
