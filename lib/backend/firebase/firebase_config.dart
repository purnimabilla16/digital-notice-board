import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCwqBXHAD8zaTSnC806BU7cFgKNctQy1fY",
            authDomain: "low-code-digital-notice-board.firebaseapp.com",
            projectId: "low-code-digital-notice-board",
            storageBucket: "low-code-digital-notice-board.firebasestorage.app",
            messagingSenderId: "440821020900",
            appId: "1:440821020900:web:0c47504cbbc820fde854f1"));
  } else {
    await Firebase.initializeApp();
  }
}
