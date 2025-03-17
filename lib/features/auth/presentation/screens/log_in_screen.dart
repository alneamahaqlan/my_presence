import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/extensions/context_extensions.dart';
import '../../../../../core/models/auth_status.dart';
import '../../../../../core/routes/app_pages.dart';
import '../../../../../core/utils/ui.dart';
import '../bloc/auth_bloc.dart';
import '../widgets/auth_common_widgets.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: SingleChildScrollView(
            child: BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state.status == AuthStatus.authenticated()) {
                  context.replaceNamed(AppRoutes.home);
                } else if (state.status == AuthStatus.failed()) {
                  Ui.showSnackBar(
                    context: context,
                    message: state.errorMessage!,
                    type: SnackBarType.error,
                  );
                }
              },
              builder: (context, state) {
                final bloc = context.read<AuthBloc>();
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AuthCommonWidgets.logo(),
                    const SizedBox(height: 40),
                    AuthCommonWidgets.emailField(context, bloc),
                    const SizedBox(height: 16),
                    AuthCommonWidgets.passwordField(context, bloc),
                    const SizedBox(height: 24),
                    AuthCommonWidgets.signInButton(context, state, bloc),
                    const SizedBox(height: 10),
                    AuthCommonWidgets.forgotPasswordButton(context),
                    const SizedBox(height: 10),
                    AuthCommonWidgets.createAccountButton(context),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
