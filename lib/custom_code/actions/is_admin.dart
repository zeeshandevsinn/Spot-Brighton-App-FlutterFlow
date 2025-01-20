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

Future<bool> isAdmin(String uid) async {
  try {
    // Get the document reference for the user
    DocumentSnapshot userDoc =
        await FirebaseFirestore.instance.collection('users').doc(uid).get();

    // Check if the document exists and has a 'role' field
    if (userDoc.exists && userDoc.data() != null) {
      final data = userDoc.data() as Map<String, dynamic>;
      String role = data['role'] ?? '';
      return role == 'admin';
    } else {
      return false; // Document does not exist or has no 'role' field
    }
  } catch (e) {
    print('Error checking admin role: $e');
    return false; // Return false on any error
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
