import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:random/features/auth/screens/auth_gate.dart'; // Replace your_app_name
import 'firebase_options.dart'; // Generated by FlutterFire CLI

void main() async {
  // Ensure Flutter bindings are initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lift Share App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      // Use AuthGate to decide which screen to show
      home: const AuthGate(),
    );
  }
}