import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Account')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_circle, size: 100),
            Text('User Profile Information'),
            ElevatedButton(
              onPressed: () {
                // Handle Logout logic
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
