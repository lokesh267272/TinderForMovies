import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDstj4UtRPQ5j1dyvaDVSwXyZjGgMWBAhA",
            authDomain: "tinderformovies-d243f.firebaseapp.com",
            projectId: "tinderformovies-d243f",
            storageBucket: "tinderformovies-d243f.appspot.com",
            messagingSenderId: "359449315258",
            appId: "1:359449315258:web:30233e7c3fe111efb03f83"));
  } else {
    await Firebase.initializeApp();
  }
}
