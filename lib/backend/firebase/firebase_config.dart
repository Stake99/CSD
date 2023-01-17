import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD4E9Kgr_fQEAN1lqzYK-SjQx6YLRKX8Pk",
            authDomain: "molly-36434.firebaseapp.com",
            projectId: "molly-36434",
            storageBucket: "molly-36434.appspot.com",
            messagingSenderId: "435003661540",
            appId: "1:435003661540:web:c14a958f2381f077de20f1",
            measurementId: "G-W6L4JJW8MQ"));
  } else {
    await Firebase.initializeApp();
  }
}
