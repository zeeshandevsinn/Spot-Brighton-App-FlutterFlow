import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String getFormatDate(String? date) {
  if (date == null) {
    return ''; // Return empty string if date is null
  }

  try {
    // If the date is in ISO format (2024-11-23T16:11:43.459), parse it directly
    if (date.contains('UTC') == false) {
      DateTime parsedDate = DateTime.parse(date); // Directly parse the ISO date
      DateFormat outputFormat = DateFormat('MMM dd, yyyy');
      return outputFormat.format(parsedDate);
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
    DateTime parsedDate = inputFormat.parse(date);

    // Define the desired output format
    DateFormat outputFormat = DateFormat('MMM dd, yyyy');
    return outputFormat.format(parsedDate);
  } catch (e) {
    print('Error parsing or formatting date: $e');
    return ''; // Return empty string in case of an error
  }
}

DateTime? convertDateTime(String date) {
  // Define the format matching the input string
  DateFormat inputFormat = DateFormat("d MMMM yyyy 'at' HH:mm:ss 'UTC'xxx");

  // Parse the date string into a DateTime object
  DateTime parsedDate = inputFormat.parse(date, true).toUtc();

  print(parsedDate); // Output: 2024-11-23 21:44:37.000Z (UTC equivalent)
  return parsedDate;
}

DateTime? getParsedDate(String? date) {
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

bool checkNew(DateTime inputDate) {
  DateTime currentDate = DateTime.now();

  // Check if the inputDate is greater than or equal to current date
  if (inputDate.isAfter(currentDate) ||
      inputDate.isAtSameMomentAs(currentDate)) {
    return true;
  }

  // Check the last 5 days (excluding today)
  DateTime startOfRange = currentDate.subtract(Duration(days: 5));

  // If inputDate is within the last 5 days
  if (inputDate.isAfter(startOfRange) && inputDate.isBefore(currentDate)) {
    return true;
  }

  // If none of the conditions match, return false
  return false;
}
