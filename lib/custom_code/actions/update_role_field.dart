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

Future updateRoleField() async {
  // Add your function code here!
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  try {
    // Reference to the 'users' collection
    final QuerySnapshot querySnapshot =
        await firestore.collection('users').get();

    // Loop through each user document
    for (QueryDocumentSnapshot doc in querySnapshot.docs) {
      await firestore.collection('users').doc(doc.id).update({
        'role': 'user',
      });
    }
    print("isBlock field added to all users successfully.");
  } catch (e) {
    print("Error updating users: $e");
  }
}
