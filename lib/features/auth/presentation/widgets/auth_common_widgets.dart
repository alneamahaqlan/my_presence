// auth_common_widgets.dart
import 'package:flutter/material.dart';

import '../../../../../core/extensions/context_extensions.dart';
import '../../../../../core/models/auth_status.dart';
import '../../../../../core/routes/app_pages.dart';
import '../../../../../core/widgets/button_widget.dart';
import '../../../../../core/widgets/text_field_widget.dart';
import '../../../../../core/widgets/text_widget.dart';
import '../bloc/auth_bloc.dart';

class AuthCommonWidgets {
  static Widget logo() {
    return Image.asset("assets/images/logo.png", width: 200, height: 55);
  }

  static Widget emailField(BuildContext context, AuthBloc bloc) {
    return TextFieldWidget(
      icon: Icons.email_rounded,
      hint: "email_address",
      keyboardType: TextInputType.emailAddress,
      onChanged: (email) => bloc.add(AuthEvent.emailChanged(email)),
    );
  }

  static Widget passwordField(BuildContext context, AuthBloc bloc) {
    return TextFieldWidget(
      icon: Icons.lock,
      hint: "password",
      isPassword: true,
      onChanged: (password) => bloc.add(AuthEvent.passwordChanged(password)),
    );
  }

  static Widget signInButton(
    BuildContext context,
    AuthState state,
    AuthBloc bloc,
  ) {
    final theme = Theme.of(context);
    return ButtonWidget(
      isSubmitting: state.status == AuthStatus.loading(),
      text: "sign_in",
      onPressed:
          state.status == AuthStatus.loading()
              ? null
              : () => bloc.add(const AuthEvent.loginSubmitted()),
      backgroundColor: theme.colorScheme.secondary,
      textColor: theme.colorScheme.onSecondary,
    );
  }

  static Widget signUpButton(
    BuildContext context,
    AuthState state,
    AuthBloc bloc,
  ) {
    final theme = Theme.of(context);
    return ButtonWidget(
      isSubmitting: state.status == AuthStatus.loading(),
      text: "sign_up",
      onPressed:
          state.status == AuthStatus.loading()
              ? null
              : () => bloc.add(const AuthEvent.signUpSubmitted()),
      backgroundColor: theme.colorScheme.secondary,
      textColor: Colors.white,
    );
  }

  static Widget createAccountButton(BuildContext context) {
    final theme = Theme.of(context);
    return ButtonWidget(
      text: "create_account",
      onPressed: () {
        context.replaceNamed(AppRoutes.signup);
      },
      isOutlined: true,
      backgroundColor: theme.colorScheme.onPrimary,
      textColor: Colors.black,
    );
  }

  static Widget haveAnAccountButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.replaceNamed(AppRoutes.login);
      },
      child: TextWidget(
        text: "have_an_account",
        style: const TextStyle(color: Colors.black),
      ),
    );
  }

  static Widget forgotPasswordButton(BuildContext context) {
    final theme = Theme.of(context);
    return TextButton(
      onPressed: () {
        context.pushNamed(AppRoutes.resetPassword);
      },
      child: TextWidget(
        text: "forgot_password",
        style: TextStyle(
          color: theme.colorScheme.onPrimary.withAlpha((0.8 * 255).toInt()),
        ),
      ),
    );
  }
}
