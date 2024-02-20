import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD8bVhbjHqY5Ucf33tLCoG3IbME7QNJfJk",
            authDomain: "trilha-do-tomate.firebaseapp.com",
            projectId: "trilha-do-tomate",
            storageBucket: "trilha-do-tomate.appspot.com",
            messagingSenderId: "182962259301",
            appId: "1:182962259301:web:b1e32e8906f8f239c44d8c",
            measurementId: "G-9ZLKXHL5XC"));
  } else {
    await Firebase.initializeApp();
  }
}
