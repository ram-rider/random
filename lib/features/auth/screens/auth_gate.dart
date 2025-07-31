import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:random/features/auth/screens/login.dart'; // Replace your_app_name
import 'package:random/features/dashboard/screens/home.dart'; // Replace your_app_name

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // User is not signed in
        if (!snapshot.hasData) {
          return const LoginScreen();
        }

        // User is signed in
        return const HomeScreen();
      },
    );
  }
}