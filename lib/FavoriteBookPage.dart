import 'package:flutter/material.dart';

class FavoriteBookPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Books'),
      ),
      body: Center(
        child: Text(
          'Your favorite books will be displayed here.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
