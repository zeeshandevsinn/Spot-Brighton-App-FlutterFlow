import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAkNKZ5e1lTVYTTeS0Q_kA_xvvxaFEeCaU",
            authDomain: "spot-app-240c6.firebaseapp.com",
            projectId: "spot-app-240c6",
            storageBucket: "spot-app-240c6.firebasestorage.app",
            messagingSenderId: "753720157984",
            appId: "1:753720157984:web:635f4d93935af119e99945",
            measurementId: "G-L1G4T7T0KG"));
  } else {
    await Firebase.initializeApp();
  }
}
