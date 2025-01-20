// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<DateTime?> getParsedDateAction(String? date) async {
  // Add your function code here!
  if (date == null) {
    return null; // Return null if date is null
  }

  try {
    // If the date is in ISO format (e.g., "2024-11-23T16:11:43.459"), parse it directly
    if (date.contains('UTC') == false) {
      return DateTime.parse(date); // Directly parse the ISO date
    }

    // Handle the format like '15 December 2024 at 20:00:00 UTC+5'
    final regex = RegExp(r'UTC([+-]\d{1,2})');
    final match = regex.firstMatch(date);

    if (match != null) {
      // Replace 'UTC' and adjust the string to match DateTime.parse requirements
      String adjustedDate =
          date.replaceFirst('UTC', '') + ":00"; // Add minutes to timezone
      date = adjustedDate;
    }

    // Define the input format for the second type of date
    DateFormat inputFormat = DateFormat("d MMMM yyyy 'at' HH:mm:ss Z");

    // Parse the string into a DateTime object
    return inputFormat.parse(date);
  } catch (e) {
    print('Error parsing date: $e');
    return null; // Return null in case of an error
  }
}
