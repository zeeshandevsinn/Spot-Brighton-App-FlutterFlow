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

Future addFavorite(
  String id,
  String eventTitle,
  String venueName,
  String shareLink,
  bool isFavorite,
  DateTime date,
) async {
  // Get the current user's UID
  final userID = FirebaseAuth.instance.currentUser?.uid;

  if (userID == null) {
    print("User not logged in");
    return;
  }

  try {
    // Reference to the Firestore subcollection
    final favoriteRef = FirebaseFirestore.instance
        .collection('saved')
        .doc(userID)
        .collection('favorites')
        .doc(id);

    // Reference to the user's favorites list in the users collection
    final userRef = FirebaseFirestore.instance.collection('users').doc(userID);

    // Create the data object
    final favoriteData = {
      'id': id,
      'eventTitle': eventTitle,
      'venueName': venueName,
      'shareLink': shareLink,
      'isFavorite': isFavorite,
      'date': date,
    };

    // Add or update the data in the favorites subcollection
    await favoriteRef.set(favoriteData);

    // Update the user's favorites list
    await userRef.set({
      'favoriteIDs': FieldValue.arrayUnion([id])
    }, SetOptions(merge: true));

    print("Favorite added successfully");
  } catch (e) {
    print("Error adding favorite: $e");
  }
}
