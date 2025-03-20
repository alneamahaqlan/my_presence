import 'package:flutter/material.dart';

import '../extensions/string_extensions.dart';

class TextFieldWidget extends StatelessWidget {
  final IconData? icon;
  final String? hint;
  final bool isPassword;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final TextInputType keyboardType;
  final int maxLines;
  final String? Function(String?)? validator;
  final String? initialValue;
  final bool readOnly;
  final VoidCallback? onTap;
  final Widget? suffixIcon; // New parameter for suffix icon

  const TextFieldWidget({
    super.key,
    this.icon,
    this.hint,
    this.isPassword = false,
    this.controller,
    this.onChanged,
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
    this.validator,
    this.initialValue,
    this.readOnly = false,
    this.onTap,
    this.suffixIcon, // Add suffixIcon to the constructor
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return TextFormField(
      onTap: onTap,
      readOnly: readOnly,
      validator: validator,
      keyboardType: keyboardType,
      controller: controller,
      obscureText: isPassword,
      maxLines: maxLines,
      style: textTheme.bodyLarge, // Use theme text style
      onChanged: onChanged,
      initialValue: initialValue,
      decoration: InputDecoration(
        prefixIcon:
            icon != null
                ? Icon(
                  icon,
                  color: colorScheme.onSurface, // Use theme color
                )
                : null,
        suffixIcon: suffixIcon, // Add suffixIcon to the InputDecoration
        hintText: hint?.trans(context),
        hintStyle: textTheme.bodyMedium?.copyWith(
          color: Theme.of(context).hintColor, // Use theme hint color
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Theme.of(context).dividerColor, // Use theme divider color
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: colorScheme.primary, // Use theme primary color
          ),
        ),
      ),
    );
  }
}
