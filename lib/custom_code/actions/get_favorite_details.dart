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
import 'package:firebase_auth/firebase_auth.dart';

Future<List<dynamic>> getFavoriteDetails() async {
  // Get the current user's UID
  final userID = FirebaseAuth.instance.currentUser?.uid;

  // If user is not logged in, return an empty list
  if (userID == null) {
    print("User not logged in");
    return [];
  }

  try {
    // Reference to the Firestore collection for the current user's favorites
    final favoritesRef = FirebaseFirestore.instance
        .collection('saved')
        .doc(userID)
        .collection('favorites');

    // Get the data from Firestore
    final querySnapshot = await favoritesRef.get();

    // Log number of documents returned
    print('Number of documents: ${querySnapshot.docs.length}');

    // If no documents are found, return an empty list
    if (querySnapshot.docs.isEmpty) {
      return [];
    }

    // Map the querySnapshot to a list of favorite details
    List<Map<String, dynamic>> favoriteDetails = querySnapshot.docs.map((doc) {
      // Return document data as a Map
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

    // Return the list of documents
    return favoriteDetails;
  } catch (e) {
    // Handle any errors that occur during the data fetch
    print('Error fetching favorite details: $e');
    return [];
  }
}
