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

// New SortEvents function
Future<dynamic> sortEvents(bool isAscending) async {
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

  // Fetch all documents from the 'events' collection
  final eventRef = firestore.collection('events');
  final monthDocs = await eventRef.get();

  // List to store months and their events
  List<Map<String, dynamic>> monthsWithEvents = [];

  // Filter months with event details
  for (var doc in monthDocs.docs) {
    String month = doc.id;

    try {
      // Check if the month has event details
      final eventCollection = eventRef.doc(month).collection('eventsDetails');
      final eventSnapshot = await eventCollection.get();

      if (eventSnapshot.docs.isNotEmpty) {
        // Fetch event details
        List<Map<String, dynamic>> eventsList = eventSnapshot.docs.map((doc) {
          Map<String, dynamic> eventData = doc.data() as Map<String, dynamic>;

          // Ensure non-null values
          eventData['id'] = eventData['id'] ?? 'Unknown ID';
          if (eventData['date'] is Timestamp) {
            eventData['date'] =
                (eventData['date'] as Timestamp).toDate().toIso8601String();
          }
          eventData['eventTitle'] =
              eventData['eventTitle'] ?? 'No Title Available';

          return eventData;
        }).toList();

        // Add month with its events
        monthsWithEvents.add({
          'month': month,
          'events': eventsList,
        });
      }
    } catch (e) {
      print("Error fetching events for month $month: $e");
    }
  }

  // Sort the months based on the isAscending parameter
  monthsWithEvents.sort((a, b) {
    int indexA = monthNames.indexOf(a['month']);
    int indexB = monthNames.indexOf(b['month']);
    if (isAscending) {
      // Sort A to Z (Jan to Dec)
      return indexA.compareTo(indexB);
    } else {
      // Sort Z to A (Dec to Jan)
      return indexB.compareTo(indexA);
    }
  });

  return monthsWithEvents;
}
