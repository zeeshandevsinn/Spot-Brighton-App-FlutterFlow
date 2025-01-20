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

Future newCustomAction2() async {
  final firestore = FirebaseFirestore.instance;

  // Sample venue titles
  List<String> venueTitles = [
    "The Actors",
    "The Palladium",
    "The Blue Note",
    "Grand Arena",
    "Majestic Theater"
  ];

  // Function to generate venue details for each venue
  List<Map<String, dynamic>> generateVenueDetails(String venueName) {
    return List.generate(3, (index) {
      final now =
          DateTime.now().add(Duration(days: index * 5)); // Increment dates
      return {
        "eventTitle": "$venueName Event ${index + 1}",
        "date": now.toIso8601String(),
        "id": "$venueName-event${index + 1}",
        "isFavorite": index % 2 == 0,
        "shareLink":
            "http://example.com/${venueName.toLowerCase().replaceAll(' ', '')}-event${index + 1}",
        "localMapLink":
            "https://maps.google.com/?q=${37.7749 + index},-${122.4194 + index}",
        "instagramLink":
            "https://instagram.com/${venueName.toLowerCase().replaceAll(' ', '')}",
        "venueName": venueName // Include venue name
      };
    });
  }

  try {
    for (String venueTitle in venueTitles) {
      final venueRef = firestore.collection('venues').doc(venueTitle);

      // Add venue-level fields
      await venueRef.set({
        "venueTitle": venueTitle,
        "createdAt": FieldValue.serverTimestamp(),
        "updatedAt": FieldValue.serverTimestamp(),
      });

      // Add venueDetails as sub-collection
      List<Map<String, dynamic>> venueDetails =
          generateVenueDetails(venueTitle);
      for (int i = 0; i < venueDetails.length; i++) {
        final venueDetail = venueDetails[i];
        await venueRef
            .collection('venueDetails')
            .doc("venue${i + 1}")
            .set(venueDetail);
      }
    }

    print("Venues and venueDetails created successfully!");
  } catch (e) {
    print("Error creating venues: $e");
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
