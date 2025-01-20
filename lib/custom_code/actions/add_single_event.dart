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

import 'package:cloud_firestore/cloud_firestore.dart';

Future addSingleEvent(
  String monthName,
  String eventTitle,
  String venueName,
  DateTime eventDate,
) async {
  final firestore = FirebaseFirestore.instance;

  // List of months for validation and indexing
  final List<String> months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];

  try {
    // Check if the given month name exists in the months list
    final monthIndex =
        months.indexWhere((month) => month == monthName.substring(0, 3));
    if (monthIndex == -1) {
      throw Exception("Invalid month name: $monthName");
    }

    // Get the shorthand month name (e.g., "Jan" for "January")
    final monthShortName = months[monthIndex];

    // Reference to the month document in the `events` collection
    final monthRef = firestore.collection('events').doc(monthShortName);
    await monthRef.set({
      'title': monthShortName,
      'createdAt': FieldValue.serverTimestamp(),
      'updatedAt': FieldValue.serverTimestamp(),
    });

    // Create an event ID using the current timestamp for uniqueness
    final eventId = DateTime.now().millisecondsSinceEpoch.toString();

    // Reference to the specific event in the `eventsDetails` sub-collection
    final eventRef = monthRef.collection('eventsDetails').doc(eventId);
    Timestamp timestampValue = Timestamp.fromDate(eventDate);

    // Add the event to the Firestore collection
    await eventRef.set({
      'id': eventId,
      'date': eventDate,
      'eventTitle': eventTitle,
      'venueName': venueName,
      'isFavorite': false, // Default value
      'shareLink': 'https://sharelink.com', // Default empty share link
    });

    // Update the month document's `updatedAt` timestamp

    print("Event added successfully to $monthShortName!");
  } catch (e) {
    print("Error adding event: $e");
  }
}
