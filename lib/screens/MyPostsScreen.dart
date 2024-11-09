import 'package:flutter/material.dart';

class MyPostsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Posts')),
      body: Center(
        child: Text('User posts go here'),
      ),
    );
  }
}
