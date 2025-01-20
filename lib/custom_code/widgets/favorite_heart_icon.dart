// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FavoriteHeartIcon extends StatefulWidget {
  const FavoriteHeartIcon({
    super.key,
    this.width,
    this.height,
    required this.id,
    required this.eventTitle,
    required this.venueName,
    required this.shareLink,
  });

  final double? width;
  final double? height;
  final String id;
  final String eventTitle;
  final String venueName;
  final String shareLink;

  @override
  State<FavoriteHeartIcon> createState() => _FavoriteHeartIconState();
}

class _FavoriteHeartIconState extends State<FavoriteHeartIcon> {
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    _checkIfFavorite(); // Check if the item is in the user's favorites
  }

  // Function to check if the event is in the user's favorite list
  Future<void> _checkIfFavorite() async {
    final userID = FirebaseAuth.instance.currentUser?.uid;

    if (userID == null) {
      print("User not logged in");
      return;
    }

    try {
      // Reference to the user's document in Firestore
      final userRef =
          FirebaseFirestore.instance.collection('users').doc(userID);

      // Fetch the user's data
      final userSnapshot = await userRef.get();

      if (userSnapshot.exists) {
        // Retrieve the 'favoriteIDs' array from the user's data
        final List<dynamic>? favoriteIDs =
            userSnapshot.data()?['favoriteIDs'] as List<dynamic>?;

        // Check if the 'id' is in the favoriteIDs array
        setState(() {
          isFavorite = favoriteIDs != null &&
              favoriteIDs.any((favoriteID) => favoriteID == widget.id);
        });
      }
    } catch (e) {
      print("Error checking favorite status: $e");
    }
  }

  // Function to toggle favorite status (add/remove)
  Future<void> _toggleFavorite() async {
    final userID = FirebaseAuth.instance.currentUser?.uid;

    if (userID == null) {
      print("User not logged in");
      return;
    }

    try {
      if (isFavorite) {
        // Remove from favorites
        await removeFavorite(widget.id); // Call your removeFavorite function
      } else {
        // Add to favorites
        await addFavorite(
          widget.id,
          widget.eventTitle,
          widget.venueName,
          widget.shareLink,
          true, // Setting this to true as we are adding it
          DateTime.now(), // Example: Pass the current date
        ); // Call your addFavorite function
      }

      // Update the favorite status locally
      setState(() {
        isFavorite = !isFavorite;
      });
    } catch (e) {
      print("Error toggling favorite: $e");
    }
  }

  addFavorite(
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
      final userRef =
          FirebaseFirestore.instance.collection('users').doc(userID);

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

  removeFavorite(String id) async {
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
      final userRef =
          FirebaseFirestore.instance.collection('users').doc(userID);

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

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: isFavorite
            ? Colors.red
            : Colors.white, // Red if favorite, white if not
        size: 30, // You can customize size
      ),
      onPressed: _toggleFavorite,
    );
  }
}
