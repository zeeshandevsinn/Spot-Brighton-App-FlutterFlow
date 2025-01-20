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

Future<dynamic> getSortedPromotersAndDetails(bool isAscending) async {
  final firestore = FirebaseFirestore.instance;

  try {
    // Reference to the 'promoters' collection
    final promotersCollection = firestore.collection('promoters');

    // Fetch all documents from the 'promoters' collection
    final promotersSnapshot = await promotersCollection.get();

    // List to store promoters with their details
    List<Map<String, dynamic>> promotersData = [];

    for (var promoterDoc in promotersSnapshot.docs) {
      // Get promoter document data
      Map<String, dynamic> promoterData = promoterDoc.data();

      // Remove 'createdAt' and 'updatedAt' fields if they exist
      promoterData.remove('createdAt');
      promoterData.remove('updatedAt');

      // Fetch 'promoterDetails' subcollection for this promoter
      final promoterDetailsSnapshot =
          await promoterDoc.reference.collection('promoterDetails').get();

      // List to store promoterDetails
      List<Map<String, dynamic>> promoterDetails =
          promoterDetailsSnapshot.docs.map((detailDoc) {
        // Get detail document data
        Map<String, dynamic> detailData = detailDoc.data();

        // Remove 'createdAt' and 'updatedAt' fields from details if they exist
        detailData.remove('createdAt');
        detailData.remove('updatedAt');

        return detailData;
      }).toList();

      // Sort promoterDetails by date
      promoterDetails.sort((a, b) {
        final dateA = DateTime.parse(a['date']);
        final dateB = DateTime.parse(b['date']);
        return isAscending ? dateA.compareTo(dateB) : dateB.compareTo(dateA);
      });

      // Add sorted promoterDetails to the promoter data
      promoterData['promoterDetails'] = promoterDetails;

      // Add promoter data to the list
      promotersData.add(promoterData);
    }

    // Sort promoters by promoterTitle
    promotersData.sort((a, b) {
      final titleA = a['promoterTitle'].toString().toLowerCase();
      final titleB = b['promoterTitle'].toString().toLowerCase();
      return isAscending ? titleA.compareTo(titleB) : titleB.compareTo(titleA);
    });

    return promotersData;
  } catch (e) {
    print("Error fetching promoters and details: $e");
    return [
      {"error": e.toString()}
    ];
  }
}
