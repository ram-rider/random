import 'package:flutter/material.dart';
import 'package:random/features/auth/services/auth_service.dart'; // Replace your_app_name

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthService authService = AuthService();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
            onPressed: () async {
              // AuthGate will handle navigation back to login screen
              await authService.signOut();
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Welcome to your Lift Share App!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}