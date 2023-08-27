
import 'package:flutter/material.dart';

Future<DateTime?> pickDate(
    BuildContext context, [
    DateTime? initDateTime,
  ]) async {
    // Show a date picker dialog and save the selected date in a Future
    return await showDatePicker(
      context: context,
      helpText: 'Your Date of Birth',
      initialDate: initDateTime ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
      builder: (BuildContext context, Widget? child) {
        // Customize the appearance of the date picker dialog
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.light(
              primary: Theme.of(context).colorScheme.primary,
              onPrimary: Colors.white,
              surface: Colors.white,
              onSurface: Colors.black,
            ),
          ),
          child: child!,
        );
      },
    );
  }
  
  Future<DateTime?> pickTime(
    BuildContext context, [
    DateTime? initTime,
  ]) async {
    // Show a date picker dialog and save the selected date in a Future
    final now = DateTime.now();
    final time = await showTimePicker(
      context: context,
      helpText: 'Your Date of Birth',
      initialTime: initTime != null
          ? TimeOfDay(hour: initTime.hour, minute: initTime.minute)
          : TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.light(
              primary: Theme.of(context).colorScheme.primary,
              onPrimary: Colors.white,
              surface: Colors.white,
              onSurface: Colors.black,
            ),
          ),
          child: child!,
        );
      },
    );
    return time != null
        ? DateTime(
            now.year,
            now.month,
            now.day,
            time.hour,
            time.minute,
          )
        : null;
  }
  