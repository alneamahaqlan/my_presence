import 'package:flutter/material.dart';
import 'text_widget.dart';

class DropDownWidget<T> extends StatelessWidget {
  final String hint;
  final List<T> items;
  final ValueChanged<T?> onChanged;
  final T? selectedValue;
  final String Function(T)? displayText;
  final String? Function(T?)? validator;
  final Widget? icon;
  final double? iconSize;
  final double? elevation;
  final String? errorText;

  const DropDownWidget({
    super.key,
    required this.hint,
    required this.items,
    required this.onChanged,
    this.selectedValue,
    this.displayText,
    this.validator,
    this.icon,
    this.iconSize,
    this.elevation,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return DropdownButtonFormField<T>(
      validator: validator,
      borderRadius: BorderRadius.circular(10),
      dropdownColor: colorScheme.surface, // Use theme surface color
      hint: TextWidget(
        text: hint,
        style: theme.textTheme.bodyMedium?.copyWith(
          color: colorScheme.onSurface.withOpacity(0.6), // Use theme onSurface color with opacity
        ),
      ),
      value: selectedValue,
      items: items.map((T item) {
        return DropdownMenuItem<T>(
          value: item,
          child: Text(
            displayText != null ? displayText!(item) : item.toString(),
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurface, // Use theme onSurface color
            ),
          ),
        );
      }).toList(),
      onChanged: onChanged,
      icon: icon ?? Icon(
        Icons.arrow_drop_down,
        color: colorScheme.onSurface, // Use theme onSurface color
      ),
      iconSize: iconSize ?? 24,
      elevation: elevation?.toInt() ?? 8,
      decoration: InputDecoration(
        filled: true,
        fillColor: colorScheme.surface, // Use theme surface color
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: theme.dividerColor), // Use theme divider color
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: theme.dividerColor), // Use theme divider color
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorScheme.primary), // Use theme primary color
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorScheme.error), // Use theme error color
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorScheme.error), // Use theme error color
        ),
        errorText: errorText,
        errorStyle: theme.textTheme.bodySmall?.copyWith(
          color: colorScheme.error, // Use theme error color
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
      ),
    );
  }
}