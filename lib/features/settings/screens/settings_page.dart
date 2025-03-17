import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/theme/theme_bloc.dart';
import '../../auth/presentation/bloc/auth_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _buildSectionHeader('عام'),
          BlocBuilder<ThemeBloc, AppTheme>(
            builder: (context, theme) {
              return _buildSwitchListTile(
                title: 'الوضع الداكن',
                value: theme == AppTheme.dark,
                onChanged: (bool value) {
                  // تبديل الوضع الداكن
                  context.read<ThemeBloc>().toggleTheme();
                },
              );
            },
          ),
          _buildSwitchListTile(
            title: 'الإشعارات',
            value: true,
            onChanged: (bool value) {
              // تفعيل/تعطيل الإشعارات
            },
          ),
          _buildSectionHeader('الحساب'),
          _buildListTile(
            title: 'تغيير كلمة المرور',
            onTap: () {
              // الانتقال إلى شاشة تغيير كلمة المرور
            },
          ),
          _buildListTile(
            title: 'تسجيل الخروج',
            onTap: () {
              // تنفيذ عملية تسجيل الخروج
               context.read<AuthBloc>().add(
                    const AuthEvent.signOutRequested(),
                  );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
        textAlign: TextAlign.right, // محاذاة النص إلى اليمين
      ),
    );
  }

  Widget _buildSwitchListTile({
    required String title,
    required bool value,
    required Function(bool) onChanged,
  }) {
    return SwitchListTile(
      title: Text(title, textAlign: TextAlign.right),
      value: value,
      onChanged: onChanged,
    );
  }

  Widget _buildListTile({required String title, required VoidCallback onTap}) {
    return ListTile(
      title: Text(title, textAlign: TextAlign.right),
      onTap: onTap,
    );
  }
}
