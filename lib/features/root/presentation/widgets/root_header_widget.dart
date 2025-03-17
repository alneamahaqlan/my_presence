import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/models/auth_status.dart';
import '../../../../core/routes/app_pages.dart';
import '../../../../core/widgets/text_widget.dart';
import '../../../../dependency_injection.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';

class RootHeaderWidget extends StatelessWidget {
  const RootHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.status == AuthStatus.unAuthenticated()) {
          context.replaceNamed(AppRoutes.login);
        }
      },
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
                  PopupMenuButton<String>(
              onSelected: (value) {
                if (value == 'sign_out') {
                  getIt<AuthBloc>().add(AuthEvent.signOutRequested());
                }
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 'user_name',
                  child: Row(
                    children: [
                      Icon(Icons.person, color: Colors.red),
                      SizedBox(width: 8),
                      TextWidget(
                          text: getIt<AuthBloc>().state.user?.name ?? "",
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                //settings
                PopupMenuItem(
                  value: 'settings',
                  child: Row(
                    children: [
                      Icon(Icons.settings, color: Colors.red),
                      SizedBox(width: 8),
                      TextWidget(
                          text: 'settings',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: 'sign_out',
                  child: Row(
                    children: [
                      Icon(Icons.logout, color: Colors.red),
                      SizedBox(width: 8),
                      TextWidget(
                          text: 'sign_out',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
              child: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.white,
                child:
                    Icon(Icons.person, color: Colors.teal.shade700, size: 32),
              ),
            ),
            Badge(
              alignment: Alignment.topRight,
              label: Text(
                '0',
              ),
              child: const Icon(Icons.notifications,
                  size: 32, color: Colors.white70),
            ),
      
          ],
        );
      },
    );
  }
}
