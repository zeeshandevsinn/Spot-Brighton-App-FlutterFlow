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

Future<dynamic> getVenuesAndDetails() async {
  final firestore = FirebaseFirestore.instance;

  try {
    // Reference to the 'venues' collection
    final venuesCollection = firestore.collection('venues');

    // Fetch all documents from the 'venues' collection
    final venuesSnapshot = await venuesCollection.get();

    // List to store venues data
    List<Map<String, dynamic>> venuesData = [];

    for (var venueDoc in venuesSnapshot.docs) {
      // Get document data for each venue, excluding the 'createdAt' and 'updatedAt' fields
      Map<String, dynamic> venueData = Map.from(venueDoc.data())
        ..remove('createdAt')
        ..remove('updatedAt');

      // Fetch 'venueDetails' sub-collection for this venue
      final venueDetailsSnapshot =
          await venueDoc.reference.collection('venueDetails').get();

      // List to store venueDetails
      List<Map<String, dynamic>> venueDetails = venueDetailsSnapshot.docs.map(
        (detailDoc) {
          return detailDoc.data();
        },
      ).toList();

      // Add venueDetails to the venue data
      venueData['venueDetails'] = venueDetails;

      // Add venue data to the list
      venuesData.add(venueData);
    }

    // Return the data as JSON (list of maps)
    return venuesData;
  } catch (e) {
    print("Error fetching venues: $e");
    return {"error": e.toString()};
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
