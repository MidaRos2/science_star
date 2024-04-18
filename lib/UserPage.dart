import 'package:flutter/material.dart';
import 'package:science_star/FavoriteBookPage.dart';
import 'package:science_star/SearchPage.dart';
import 'package:science_star/HomePage.dart';

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
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('Assets/images/user/mida.jpg'),
                  )
                ],
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
