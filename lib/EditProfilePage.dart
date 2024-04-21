import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        backgroundColor: Color(0xFF427D9D), // Ubah warna app bar menjadi hijau
      ),
      backgroundColor:
          Color(0xFF9BBEC8), // Ubah warna latar belakang halaman menjadi biru
      body: Center(),
    );
  }
}
