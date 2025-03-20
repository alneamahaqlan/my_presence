import 'package:flutter/material.dart';
import 'package:timezone/timezone.dart' as tz;

import '../widgets/custom_snackbar.dart';
import 'theme/app_colors.dart';

class Ui {
  static BoxDecoration getBox({
    Color? color,
    double borderRadius = 16.0,
    Color? borderColor,
    double borderWidth = 1.0,
    double elevation = 0.0,
    Color shadowColor = Colors.black26,
    Gradient? gradient,
    BoxShape shape = BoxShape.rectangle,
  }) {
    return BoxDecoration(
      gradient: gradient,
      color: color ?? AppColors.primary,
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
                  offset: const Offset(0, 2),
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
    Color confirmButtonColor = Colors.red,
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
    firstDate ??= DateTime.now();
    lastDate ??= DateTime(2100);

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

    return pickedDate;
  }

  static Future<DateTime?> selectDateTime(
    BuildContext context, {
    DateTime? initialDate,
    DateTime? firstDate,
    DateTime? lastDate,
  }) async {
    firstDate ??= DateTime.now();
    lastDate ??= DateTime(2100);

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

    // Combine date and time
    final localDateTime = DateTime(
      pickedDate.year,
      pickedDate.month,
      pickedDate.day,
      pickedTime.hour,
      pickedTime.minute,
    );

    // Ensure the combined date and time is not before the firstDate
    if (localDateTime.isBefore(firstDate)) {
      showSnackBar(
        context: context,
        message: 'Selected time is before the minimum allowed date',
        type: SnackBarType.warning,
      );
      return null;
    }

    // Convert to Asia/Riyadh time zone
    final riyadhLocation = tz.getLocation('Asia/Riyadh');
    final riyadhDateTime = tz.TZDateTime.from(localDateTime, riyadhLocation);

    return riyadhDateTime;
  }

  static Future<TimeOfDay?> selectTime(
    BuildContext context, {
    TimeOfDay? initialTime,
  }) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: initialTime ?? TimeOfDay.now(),
    );

    if (pickedTime == null || !context.mounted) return null;

    return pickedTime;
  }
}

enum SnackBarType { info, success, warning, error }
