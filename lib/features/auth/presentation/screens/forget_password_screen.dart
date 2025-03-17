import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/extensions/context_extensions.dart';

import '../../../../../core/models/auth_status.dart';
import '../../../../../core/models/status.dart';
import '../../../../../core/routes/app_pages.dart';
import '../../../../../core/widgets/app_bar_widget.dart';
import '../../../../../core/widgets/button_widget.dart';
import '../../../../../core/widgets/text_field_widget.dart';
import '../../../../../core/widgets/text_widget.dart';
import '../bloc/auth_bloc.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    final emailController = TextEditingController();

    return Scaffold(
      appBar: AppBarWidget(title: "forget_password"),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF009688), Color(0xFF00796B)],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 200,
                  height: 55,
                ),
                const SizedBox(height: 40),
                const TextWidget(
                  text: "enter_your_email_to_reset_password",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),

                // Email Input
                TextFieldWidget(
                  controller: emailController,
                  icon: Icons.email,
                  hint: "email_address",
                  onChanged: (email) {
                    authBloc.add(AuthEvent.emailChanged(email));
                  },
                ),
                const SizedBox(height: 20),

                // Reset Password Button
                BlocConsumer<AuthBloc, AuthState>(
                  listener: (context, state) {
                    if (state.resetPasswordStatus == Status.failed()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(state.errorMessage!)),
                      );
                    }
                    if (state.resetPasswordStatus == Status.success()) {
                      context.goNamed(AppRoutes.login);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content:
                                TextWidget(text: "password_reset_link_sent")),
                      );
                    }
                  },
                  builder: (context, state) {
                    return ButtonWidget(
                      isSubmitting: state.status == AuthStatus.loading(),
                      text: "reset_password",
                      onPressed: state.status == AuthStatus.loading()
                          ? null
                          : () => context
                              .read<AuthBloc>()
                              .add(const AuthEvent.resetPasswordSubmitted()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
