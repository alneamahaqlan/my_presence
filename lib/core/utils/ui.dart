import 'package:flutter/material.dart';

import '../widgets/custom_snackbar.dart';
import 'theme/app_colors.dart';

class Ui {
  static BoxDecoration getBox({
    Color? color, // Default solid color
    double borderRadius = 16.0, // Default border radius
    Color? borderColor, // Optional border color
    double borderWidth = 1.0, // Default border width if border is set
    double elevation = 0.0, // Shadow intensity
    Color shadowColor = Colors.black26, // Default shadow color
    Gradient? gradient,
    BoxShape shape = BoxShape.rectangle,
  }) {
    return BoxDecoration(
      gradient: gradient,
      color: color ?? AppColors.primary, // Solid background color
      borderRadius:
          shape == BoxShape.rectangle
              ? BorderRadius.circular(borderRadius)
              : null,
      border:
          borderColor != null
              ? Border.all(color: borderColor, width: borderWidth)
              : null,
      boxShadow:
          elevation > 0
              ? [
                BoxShadow(
                  color: shadowColor,
                  blurRadius: elevation,
                  spreadRadius: elevation * 0.2,
                  offset: const Offset(0, 2), // Subtle shadow
                ),
              ]
              : [],
      shape: shape,
    );
  }

  static Future<bool?> showCustomDialog({
    required BuildContext context,
    required String title,
    required String message,
    required String confirmText,
    required String cancelText,
    Color confirmButtonColor = Colors.red, // Default to red, can be customized
  }) {
    return showDialog<bool>(
      context: context,
      builder:
          (context) => AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            title: Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            content: Text(
              message,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text(
                  cancelText,
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: confirmButtonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () => Navigator.of(context).pop(true),
                child: Text(confirmText, style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
    );
  }

  static void showDialogWidget(BuildContext context, Widget child) {
    showDialog(
      context: context,
      builder:
          (context) => Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.7,
                child: child,
              ),
            ),
          ),
    );
  }

  static void showSnackBar({
    required BuildContext context,
    required String message,
    required SnackBarType type,
  }) {
    switch (type) {
      case SnackBarType.info:
        CustomSnackBar.showInfo(context, message);
        break;
      case SnackBarType.success:
        CustomSnackBar.showSuccess(context, message);
        break;
      case SnackBarType.warning:
        CustomSnackBar.showWarning(context, message);
        break;
      case SnackBarType.error:
        CustomSnackBar.showError(
          context,
          message,
          position: SnackBarPosition.bottom,
        );
        break;
    }
  }
static Future<DateTime?> selectDate(
  BuildContext context, {
  DateTime? initialDate,
  DateTime? firstDate,
  DateTime? lastDate,
}) async {
  firstDate ??= DateTime.now(); // Default to today
  lastDate ??= DateTime(2100); // Default to a far future date

  // Ensure initialDate is not before firstDate
  initialDate ??= DateTime.now();
  if (initialDate.isBefore(firstDate)) {
    initialDate = firstDate;
  }

  final DateTime? pickedDate = await showDatePicker(
    context: context,
    initialDate: initialDate,
    firstDate: firstDate,
    lastDate: lastDate,
  );

  if (pickedDate == null || !context.mounted) return null;

  // Optional: Add a check for Fridays (if needed)
  if (pickedDate.weekday == DateTime.friday) {
    showSnackBar(
      context: context,
      message: 'Friday is a holiday',
      type: SnackBarType.warning,
    );
    return null;
  }

  return pickedDate;
}
  static Future<DateTime?> selectDateTime(
    BuildContext context, {
    DateTime? initialDate,
     DateTime? firstDate,
     DateTime? lastDate,
  }) async {
    firstDate ??= DateTime.now().add(Duration(days: 1));
     lastDate ??= DateTime(2100);
    // Ensure initialDate is not before firstDate
    initialDate ??= DateTime.now();
    if (initialDate.isBefore(firstDate)) {
      initialDate = firstDate;
    }

    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );

    if (pickedDate == null || !context.mounted) return null;

    if (pickedDate.weekday == DateTime.friday) {
      showSnackBar(
        context: context,
        message: 'Friday is a holiday',
        type: SnackBarType.warning,
      );
      return null;
    }

    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime == null || !context.mounted) return null;

    return DateTime(
      pickedDate.year,
      pickedDate.month,
      pickedDate.day,
      pickedTime.hour,
      pickedTime.minute,
    );
  }
}

enum SnackBarType { info, success, warning, error }
