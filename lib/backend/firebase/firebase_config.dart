import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBCDK1q4O-JUr98GhzS35ZTT3TmkNEcx3g",
            authDomain: "bramaderofvb.firebaseapp.com",
            projectId: "bramaderofvb",
            storageBucket: "bramaderofvb.firebasestorage.app",
            messagingSenderId: "1045784928068",
            appId: "1:1045784928068:web:ccac1f108d26bdf2ba8111"));
  } else {
    await Firebase.initializeApp();
  }
}
