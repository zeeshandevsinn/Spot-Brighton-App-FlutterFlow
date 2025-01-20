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

Future<List<String>> getVenueTitles() async {
  try {
    // Reference to the Firestore collection
    final CollectionReference venuesCollection =
        FirebaseFirestore.instance.collection('venues');

    // Fetch the documents from the collection
    final QuerySnapshot snapshot = await venuesCollection.get();

    // Extract venue titles from the documents
    final List<String> venueTitles = snapshot.docs
        .map((doc) => doc['venueTitle'] as String) // Cast to String
        .toList();

    return venueTitles; // Return the list of venue titles
  } catch (e) {
    // Handle errors
    print('Error fetching venue titles: $e');
    return [];
  }
}
