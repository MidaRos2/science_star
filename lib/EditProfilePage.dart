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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40), // Jarak antara appbar dan container/foto
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 150, // Ubah lebar sesuai kebutuhan
                    height: 150, // Ubah tinggi sesuai kebutuhan
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xFF164863), width: 3),
                    ),
                    child: CircleAvatar(
                      radius: 150,
                      backgroundColor: Colors.blue,
                      backgroundImage: AssetImage('assets/images/mida.jpg'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text(
                //   'Edit Photo Profile',
                //   style: TextStyle(
                //     fontSize: 15,
                //     color: Colors.black,
                //   ),
                // ),
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    // Aksi ketika ikon edit ditekan
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileTextField(label: 'Username'),
                  SizedBox(height: 20),
                  ProfileTextField(label: 'Gender'),
                  SizedBox(height: 20),
                  ProfileTextField(label: 'Address'),
                ],
              ),
            ),
            SizedBox(height: 20), // Jarak di bagian bawah form
          ],
        ),
      ),
    );
  }
}

class ProfileTextField extends StatelessWidget {
  final String label;

  const ProfileTextField({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
