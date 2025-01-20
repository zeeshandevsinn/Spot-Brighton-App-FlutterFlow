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

Future<bool> checkNewAction(DateTime inputDate) async {
  // Add your function code here!
  // Get the current date (in local time)
  DateTime currentDate = DateTime.now();

  // Debugging: Print both dates
  print('Current Date: $currentDate');
  print('Input Date: $inputDate');

  // Check if the inputDate is greater than or equal to current date
  if (inputDate.isAfter(currentDate) ||
      inputDate.isAtSameMomentAs(currentDate)) {
    print('Input date is in the future or equal to current date.');
    return true;
  }

  // Check the last 5 days (excluding today)
  DateTime startOfRange = currentDate.subtract(Duration(days: 5));

  // Debugging: Print the range
  print('Checking if input date is within the last 5 days: $startOfRange');

  // If inputDate is within the last 5 days
  if (inputDate.isAfter(startOfRange) && inputDate.isBefore(currentDate)) {
    print('Input date is within the last 5 days.');
    return true;
  }

  // If none of the conditions match, return false
  print('Input date is not valid (not in range or future).');
  return false;
}
