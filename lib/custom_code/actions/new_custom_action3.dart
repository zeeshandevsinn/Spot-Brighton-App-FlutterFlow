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

Future newCustomAction3() async {
  final firestore = FirebaseFirestore.instance;

  // Provided promoter data
  List<Map<String, String>> promoters = [
    {"title": "ACID BOX", "subtitle": "PSYCH/FUZZ/STONER"},
    {"title": "ABYSSAL CULT", "subtitle": "METAL/PUNK/SLUDGE"},
    {"title": "BELLA UNION VINYL SHOP", "subtitle": "BU IN/OUT-STORES"},
    {"title": "BN1 COLLECTIVE", "subtitle": "HARDCORE/METAL/ROCK"},
    {"title": "BRIGHTHELMSTONE", "subtitle": "MULTI-GENRE"},
    {"title": "BRIGHTON NOISE", "subtitle": "MULTI-GENRE"}
  ];

  // Function to generate promoterDetails dynamically for each promoter
  List<Map<String, dynamic>> generatePromoterDetails(String promoterTitle) {
    return List.generate(2, (index) {
      final now = DateTime.now()
          .add(Duration(days: index * 3)); // Increment dates dynamically
      return {
        "date": now.toIso8601String(),
        "eventTitle": "$promoterTitle Event ${index + 1}",
        "id": "$promoterTitle-event${index + 1}",
        "instagramLink": "https://instagram.com/${promoterTitle}",
        "isFavorite": index % 2 == 0, // Alternate favorites
        "shareLink": "http://example.com/${promoterTitle}-event${index + 1}",
        "venueName": promoterTitle,
      };
    });
  }

  try {
    for (var promoter in promoters) {
      final promoterRef =
          firestore.collection('promoters').doc(promoter['title']);

      // Add promoter-level fields
      await promoterRef.set({
        "promoterTitle": promoter['title'],
        "promoterSubtitle": promoter['subtitle'],
        "instagramLink": "https://instagram.com/${promoter['title']}",
        "shareLink": "http://example.com/${promoter['title']}",
        "createdAt": FieldValue.serverTimestamp(),
        "updatedAt": FieldValue.serverTimestamp(),
      });

      // Add promoterDetails as subcollection
      List<Map<String, dynamic>> promoterDetails =
          generatePromoterDetails(promoter['title']!);
      for (var detail in promoterDetails) {
        await promoterRef
            .collection('promoterDetails')
            .doc(detail['id'])
            .set(detail);
      }
    }

    print("Promoters and promoterDetails created successfully!");
  } catch (e) {
    print("Error creating promoters: $e");
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
