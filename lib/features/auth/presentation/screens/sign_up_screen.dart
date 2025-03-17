import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/extensions/context_extensions.dart';
import '../../../../../core/models/auth_status.dart';
import '../../../../../core/routes/app_pages.dart';
import '../../../../../core/widgets/text_field_widget.dart';
import '../bloc/auth_bloc.dart';
import '../widgets/auth_common_widgets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: SingleChildScrollView(
            child: BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state.status == AuthStatus.authenticated()) {
                  context.goNamed(AppRoutes.home);
                } else if (state.status == AuthStatus.failed()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.errorMessage!),
                      backgroundColor: theme.colorScheme.error,
                    ),
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
                    TextFieldWidget(
                      icon: Icons.person,
                      hint: "user_name",
                      onChanged:
                          (username) =>
                              bloc.add(AuthEvent.usernameChanged(username)),
                    ),
                    const SizedBox(height: 16),
                    AuthCommonWidgets.emailField(context, bloc),
                    const SizedBox(height: 16),
                    AuthCommonWidgets.passwordField(context, bloc),
                    const SizedBox(height: 24),
                    AuthCommonWidgets.signUpButton(context, state, bloc),
                    const SizedBox(height: 10),
                    AuthCommonWidgets.haveAnAccountButton(context),
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
