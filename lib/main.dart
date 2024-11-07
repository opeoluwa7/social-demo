import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show kIsWeb, kReleaseMode;
import 'package:flutter/material.dart';
import 'package:social_demo/auth/auth.dart';
import 'package:device_preview/device_preview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAn-7xvZ7Vq-HTqm8BzuWwlJMH4Yr6ZXX8",
            appId: "1:716075393861:web:17f625eeb4764a7784d42c",
            messagingSenderId: "716075393861",
            storageBucket: "social-demo-d63cf.firebasestorage.app",
            projectId: "social-demo-d63cf",
            authDomain: "social-demo-d63cf.firebaseapp.com"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(DevicePreview(
      enabled: !kReleaseMode, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
        ),
        useMaterial3: true,
      ),
      home: const AuthPage(),
    );
  }
}
