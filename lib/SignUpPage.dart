import 'package:flutter/material.dart';
import 'package:science_star/HomePage.dart';
import 'package:science_star/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatefulWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _genderController.dispose();
    _addressController.dispose();
    super.dispose();
  }

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
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Positioned(
                    top: 19,
                    left: (MediaQuery.of(context).size.width - 120) / 2,
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 130,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      'Create New Account',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 40),
                    Form(
                      key: widget._formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _usernameController,
                            decoration: InputDecoration(
                              labelText: 'Create Username',
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 21, 50, 99),
                              ),
                              fillColor: Color.fromARGB(255, 170, 205, 215),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your name';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 21, 50, 99),
                              ),
                              fillColor: Color.fromARGB(255, 170, 205, 215),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            controller: _passwordController,
                            decoration: InputDecoration(
                              labelText: 'Create Password',
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 21, 50, 99),
                              ),
                              fillColor: Color.fromARGB(255, 170, 205, 215),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                            obscureText: true,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              labelText: 'Gender',
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 21, 50, 99),
                              ),
                              fillColor: Color.fromARGB(255, 170, 205, 215),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            value: null,
                            onChanged: (value) {
                              // Add your onChanged logic here
                            },
                            items: [
                              DropdownMenuItem(
                                child: Text('Male'),
                                value: 'male',
                              ),
                              DropdownMenuItem(
                                child: Text('Female'),
                                value: 'female',
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            controller: _addressController,
                            decoration: InputDecoration(
                              labelText: 'Address',
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 21, 50, 99),
                              ),
                              fillColor: Color.fromARGB(255, 170, 205, 215),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your address';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 30),
                          ElevatedButton(
                            onPressed: () {
                              if (widget._formKey.currentState!.validate()) {
                                // Proses pendaftaran
                                // Misalnya, menyimpan data pengguna atau mengirimnya ke server

                                // Setelah proses pendaftaran selesai, pindah ke halaman beranda
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(
                                      backgroundColor: Color((0xFF9BBEC8)),
                                      textStyle: TextStyle(),
                                    ),
                                  ),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Color.fromARGB(255, 21, 50, 99),
                              minimumSize: Size(200, 50),
                              textStyle: TextStyle(
                                fontSize: 16,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Text('Sign Up'),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ),
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
                                      text: "Already have account? ",
                                    ),
                                    TextSpan(
                                      text: "Sign In",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 21, 50, 99),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
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
