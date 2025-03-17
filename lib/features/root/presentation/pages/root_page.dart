import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/models/auth_status.dart';
import '../../../../core/routes/app_pages.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../members/presentation/bloc/member_bloc.dart';
import '../../../members/presentation/widgets/search_delegate.dart';
import '../widgets/app_drawer.dart';
import 'bloc/root_bloc.dart';

class RootPage extends StatelessWidget {
  final Widget child;

  const RootPage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, authState) {
        if (authState.status == AuthStatus.unAuthenticated()) {
          context.replaceNamed(AppRoutes.login);
        }
      },
      builder: (context, state) {
        return BlocBuilder<RootBloc, RootState>(
          builder: (context, state) {
            return Scaffold(
              appBar:
                  isRootRoute(context)
                      ? AppBar(
                        title: const Text('حظوري'),
                        centerTitle: true,
                        leading: Builder(
                          builder: (context) {
                            return IconButton(
                              icon: const Icon(Icons.menu),
                              onPressed:
                                  () => Scaffold.of(context).openDrawer(),
                            );
                          },
                        ),
                        actions: [
                          IconButton(
                            icon: const Icon(Icons.notifications),
                            onPressed:
                                () =>
                                    context.pushNamed(AppRoutes.notifications),
                          ),
                          IconButton(
                            icon: const Icon(Icons.search),
                            onPressed: () {
                              // Navigate to the SearchPage
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) => SearchPage(
                                        state: context.read<MemberBloc>().state,
                                      ),
                                ),
                              );
                            },
                          ),
                        ],
                      )
                      : null,
              drawer:
                  const AppDrawer(), // Updated to use the AppDrawer with BLoC
              body: SafeArea(child: child),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: state.currentIndex,
                onTap:
                    (index) => context.read<RootBloc>().add(
                      RootEvent.itemTapped(context: context, index: index),
                    ),
                type:
                    BottomNavigationBarType
                        .fixed, // Fixed type for better styling
                backgroundColor:
                    Theme.of(context).colorScheme.surface, // Use theme color
                selectedItemColor:
                    Theme.of(
                      context,
                    ).colorScheme.primary, // Selected item color
                unselectedItemColor: Theme.of(context).colorScheme.onSurface
                    .withOpacity(0.6), // Unselected item color
                showSelectedLabels: true, // Show labels for selected items
                showUnselectedLabels: true, // Show labels for unselected items
                elevation: 8, // Add elevation for better visibility
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'الرئيسية',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.people),
                    label: 'الأعضاء',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.report),
                    label: 'التقارير',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: 'الإعدادات',
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  bool isRootRoute(BuildContext context) {
    final location = context.fullPath;
    if (location == AppRoutes.home ||
        location == AppRoutes.members ||
        location == AppRoutes.reports ||
        location == AppRoutes.settings) {
      return true;
    }
    return false; // Default to home
  }
}
