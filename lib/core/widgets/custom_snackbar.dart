// custom_snackbar.dart
import 'package:flutter/material.dart';

enum SnackBarPosition { top, bottom }

class CustomSnackBar {
  // Show Info SnackBar
  static void showInfo(
    BuildContext context,
    String message, {
    SnackBarPosition position = SnackBarPosition.bottom,
  }) {
    _showSnackBar(context, message, Colors.blue, Icons.info_outline, position);
  }

  // Show Success SnackBar
  static void showSuccess(
    BuildContext context,
    String message, {
    SnackBarPosition position = SnackBarPosition.bottom,
  }) {
    _showSnackBar(
      context,
      message,
      Colors.green,
      Icons.check_circle_outline,
      position,
    );
  }

  // Show Warning SnackBar
  static void showWarning(
    BuildContext context,
    String message, {
    SnackBarPosition position = SnackBarPosition.bottom,
  }) {
    _showSnackBar(
      context,
      message,
      Colors.orange,
      Icons.warning_amber_outlined,
      position,
    );
  }

  // Show Error SnackBar
  static void showError(
    BuildContext context,
    String message, {
    SnackBarPosition position = SnackBarPosition.bottom,
  }) {
    _showSnackBar(context, message, Colors.red, Icons.error_outline, position);
  }

  // Internal method to display the SnackBar
  static void _showSnackBar(
    BuildContext context,
    String message,
    Color backgroundColor,
    IconData icon,
    SnackBarPosition position,
  ) {
    final snackBar = SnackBar(
      content: Row(
        children: [
          Icon(icon, color: Colors.white), // Icon for the SnackBar
          const SizedBox(width: 10), // Spacing between icon and text
          Expanded(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ],
      ),
      backgroundColor: backgroundColor,
      behavior: SnackBarBehavior.floating, // Floating behavior
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Rounded corners
      ),
      margin:
          position == SnackBarPosition.top
              ? EdgeInsets.only(
                bottom:
                    MediaQuery.of(context).size.height -
                    100, // Adjust as needed
                left: 10,
                right: 10,
              )
              : const EdgeInsets.all(10), // Margin for floating SnackBar
      elevation: 6, // Shadow
      duration: const Duration(seconds: 3), // Display duration
      action: SnackBarAction(
        label: 'Dismiss',
        textColor: Colors.white,
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);

    // If the position is top, use a custom overlay to display the SnackBar at the top
    if (position == SnackBarPosition.top) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final overlay = Overlay.of(context);
        overlay.insert(
          OverlayEntry(
            builder:
                (context) => Positioned(
                  top: 50, // Adjust the top position as needed
                  left: 10,
                  right: 10,
                  child: Material(color: Colors.transparent, child: snackBar),
                ),
          ),
        );
      });
    }
  }
}
