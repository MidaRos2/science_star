import 'package:flutter/material.dart';
import 'package:science_star/FavoriteBookPage.dart';
import 'package:science_star/SearchPage.dart';
import 'package:science_star/HomePage.dart';
import 'package:science_star/EditProfilePage.dart'; // Pastikan import halaman EditProfilePage

final avatar = Container(
  width: 25,
  height: 25,
  decoration: const BoxDecoration(
    shape: BoxShape.circle,
    image: DecorationImage(
      image: AssetImage('assets/images/Avatar.png'),
      fit: BoxFit.cover,
    ),
  ),
);

class UserPage extends StatefulWidget {
  final Color backgroundColor;

  const UserPage(
      {Key? key, required this.backgroundColor, required TextStyle textStyle})
      : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:
              CrossAxisAlignment.start, // Tambahkan crossAxisAlignment
          children: [
            SizedBox(height: 20), // Spacer
            Container(
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                color: Color(0xFF9BBEC8),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 220, // Ubah lebar sesuai kebutuhan
                    height: 220, // Ubah tinggi sesuai kebutuhan
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xFF164863), width: 3),
                    ),
                    child: CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.blue,
                      backgroundImage: AssetImage('assets/images/mida.jpg'),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Rosmida',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF164863),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ), // Tambahkan jarak antara teks "Rosmida" dan "Edit Profile"
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditProfilePage(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Edit Profile',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF164863),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(width: 2),
                        Icon(
                          Icons.edit,
                          color: Color(0xFF164863),
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0), // Tambahkan padding ke teks
              child: Text(
                'Buku Yang Sedang Di Pinjam',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF164863),
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: widget.backgroundColor,
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            if (index == 0) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(
                    backgroundColor: widget.backgroundColor,
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF164863),
                    ),
                  ),
                ),
              );
            } else if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchPage(
                    backgroundColor: Color(0xFF9BBEC8),
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF164863),
                    ),
                  ),
                ),
              );
            } else {
              setState(() {
                _currentIndex = index;
              });
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: avatar,
              label: 'User',
            ),
          ],
        ),
      ),
    );
  }
}
