import 'package:flutter/material.dart';
import 'package:science_star/HomePage.dart';
import 'SignUpPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDDF2FD),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/bg2.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.4,
                  ),
                  Positioned(
                    top: 70,
                    left: (MediaQuery.of(context).size.width - 190) / 2,
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 200,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Username",
                        labelStyle: TextStyle(
                          color: Color.fromARGB(
                              255, 21, 50, 99), // Warna teks label
                        ),

                        fillColor: Color.fromARGB(
                            255, 170, 205, 215), // Warna background label
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    TextField(
                      decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 21, 50, 99),
                          ),
                          fillColor: Color.fromARGB(
                              255, 170, 205, 215), // Warna background label
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                      obscureText: true,
                    ),
                    SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage(
                                      backgroundColor: Color(0xFF9BBEC8),
                                      textStyle: TextStyle(),
                                    )));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 21, 50, 99),
                        onPrimary: Colors.white,
                        minimumSize: Size(200, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text('Sign Up'),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        );
                      },
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: "Don't have account? ",
                            ),
                            TextSpan(
                              text: "Create One!",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 21, 50, 99),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
