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

Future removeFavorite(String id) async {
  // Add your function code here!
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

    // Delete the favorite document
    await favoriteRef.delete();

    // Update the user's favorites list
    await userRef.set({
      'favoriteIDs': FieldValue.arrayRemove([id])
    }, SetOptions(merge: true));

    print("Favorite removed successfully");
  } catch (e) {
    print("Error removing favorite: $e");
  }
}
