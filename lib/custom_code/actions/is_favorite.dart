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

Future<bool> isFavorite(String id) async {
  // Add your function code here!
  /// MODIFY CODE ONLY BELOW THIS LINE

  // Get the current user's UID
  final userID = FirebaseAuth.instance.currentUser?.uid;

  // If user is not logged in, return false
  if (userID == null) {
    print("User not logged in");
    return false;
  }

  try {
    // Reference to the user's document in Firestore
    final userRef = FirebaseFirestore.instance.collection('users').doc(userID);

    // Fetch the user's data
    final userSnapshot = await userRef.get();

    // Check if the document exists
    if (userSnapshot.exists) {
      // Retrieve the 'favorites' array from the user's data
      final List<dynamic>? favorites =
          userSnapshot.data()?['favorites'] as List<dynamic>?;

      // Return true if the id is in the favorites array, otherwise false
      return favorites != null && favorites.contains(id);
    }

    // If the user document does not exist, return false
    return false;
  } catch (e) {
    // Handle errors gracefully
    print("Error checking favorite status: $e");
    return false;
  }
}
