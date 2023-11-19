import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBI539Q-6xrd1KraMoFwMJ_XAR8qCgT_0E",
            authDomain: "spoteasy-ph.firebaseapp.com",
            projectId: "spoteasy-ph",
            storageBucket: "spoteasy-ph.appspot.com",
            messagingSenderId: "154609088959",
            appId: "1:154609088959:web:76eaa612a439d05a08c90a",
            measurementId: "G-STYZ36F0D2"));
  } else {
    await Firebase.initializeApp();
  }
}
