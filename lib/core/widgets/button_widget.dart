import 'package:flutter/material.dart';
import 'text_widget.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isOutlined;
  final bool isSubmitting;
  final Color? backgroundColor;
  final Color? textColor;
  final double height;

  const ButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
    this.isOutlined = false,
    this.isSubmitting = false,
    this.backgroundColor,
    this.textColor,
    this.height = 55,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return SizedBox(
      width: double.infinity,
      height: height,
      child: isOutlined
          ? OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: textColor ?? colorScheme.primary, // Use theme primary color
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: isSubmitting ? null : onPressed,
              child: isSubmitting
                  ? CircularProgressIndicator(
                      color: colorScheme.onPrimary, // Use theme onPrimary color
                    )
                  : TextWidget(
                      text: text,
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: textColor ?? colorScheme.onPrimary, // Use theme onPrimary color
                        fontWeight: FontWeight.w400,
                      ),
                    ),
            )
          : ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor ?? colorScheme.primary, // Use theme primary color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: isSubmitting ? null : onPressed,
              child: isSubmitting
                  ? CircularProgressIndicator(
                      color: colorScheme.onPrimary, // Use theme onPrimary color
                    )
                  : TextWidget(
                      text: text,
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: textColor ?? colorScheme.onPrimary, // Use theme onPrimary color
                        fontWeight: FontWeight.w400,
                      ),
                    ),
            ),
    );
  }
}