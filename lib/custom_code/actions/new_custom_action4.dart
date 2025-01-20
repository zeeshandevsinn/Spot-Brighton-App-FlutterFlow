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

import 'package:firebase_auth/firebase_auth.dart';

Future newCustomAction4() async {
  // Get the current user's UID
  final userID = FirebaseAuth.instance.currentUser?.uid;
  Map<String, dynamic> favoriteDetails = {
    'date': Timestamp.fromDate(DateTime(
        2024, 12, 10, 18, 0)), // Convert DateTime to Firestore Timestamp
    'eventTitle': 'Rock Night',
    'venueName': 'The Actors',
    'shareLink': 'http://example.com/event1',
    'isFavorite': true,
    'id': 'event1', // This ID will be used for document naming
  };

  if (userID == null) {
    throw Exception("User is not logged in.");
  }

  try {
    // Extract the `id` from favoriteDetails for document naming
    final String id = favoriteDetails['id'];

    // Reference to Firestore
    final firestore = FirebaseFirestore.instance;

    // Path: Saved -> UID -> Favorites -> ID
    final docRef = firestore
        .collection('saved')
        .doc(userID)
        .collection('favorites')
        .doc(id);

    // Add the favorite details
    await docRef.set({
      'date': favoriteDetails['date'], // Timestamp
      'eventTitle': favoriteDetails['eventTitle'],
      'venueName': favoriteDetails['venueName'],
      'shareLink': favoriteDetails['shareLink'],
      'isFavorite': favoriteDetails['isFavorite'],
    });

    print('Favorite details saved successfully!');
  } catch (e) {
    print('Error saving favorite details: $e');
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
