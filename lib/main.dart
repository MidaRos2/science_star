import 'dart:async';
import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perpustakaan Science Star',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyApp(), // Set the home page to MyApp
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => HomePage(
                    backgroundColor: Color(0xFF9BBEC8),
                    textStyle: TextStyle(),
                  )));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 280, // Adjust the width as needed
                ),
              ),
              const SizedBox(height: 20),
              CircularProgressIndicator(),
            ],
          ),
        ],
      ),
    );
  }
}
