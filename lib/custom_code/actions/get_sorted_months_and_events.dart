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

import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<dynamic> getSortedMonthsAndEvents() async {
  final firestore = FirebaseFirestore.instance;

  // Get the current month (e.g., November)
  DateTime now = DateTime.now();
  int currentMonth = now.month;

  // List of all months (static order for sorting)
  List<String> monthNames = [
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

  // Reorganize months to start from the current month
  List<String> sortedMonths = [
    ...monthNames.sublist(currentMonth - 1),
    ...monthNames.sublist(0, currentMonth - 1)
  ];

  // Fetch available months from Firestore
  final eventRef = firestore.collection('events');
  final monthDocs = await eventRef.get();

  // List to store months and their events
  List<Map<String, dynamic>> monthsEventData = [];

  // Loop through all available months (from Firestore) and get their events
  for (String month in sortedMonths) {
    // Check if the month exists in Firestore
    if (monthDocs.docs.any((doc) => doc.id == month)) {
      try {
        // Get the events for this month
        final eventCollection = firestore
            .collection('events')
            .doc(month)
            .collection('eventsDetails');
        final eventSnapshot = await eventCollection.get();

        if (eventSnapshot.docs.isEmpty) {
          continue; // Skip if no events for the month
        }

        // Fetch events data for this month, ensure non-null values
        List<Map<String, dynamic>> eventsList = eventSnapshot.docs.map((doc) {
          Map<String, dynamic> eventData = doc.data() as Map<String, dynamic>;

          // Ensure non-null and serialize Timestamp fields
          eventData['id'] = eventData['id'] ?? 'Unknown ID'; // Handle null IDs

          // Check and convert Timestamp to DateTime if exists
          if (eventData['date'] is Timestamp) {
            eventData['date'] =
                (eventData['date'] as Timestamp).toDate().toIso8601String();
          }

          eventData['eventTitle'] =
              eventData['eventTitle'] ?? 'No Title'; // Default title

          return eventData;
        }).toList();

        // Add month data to the list
        monthsEventData.add({
          'month': month,
          'events': eventsList,
        });
      } catch (e) {
        print("Error fetching events for month $month: $e");
      }
    }
  }

  return monthsEventData;
}
