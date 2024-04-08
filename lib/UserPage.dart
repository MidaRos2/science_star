import 'package:flutter/material.dart';
import 'package:science_star/HomePage.dart';
import 'package:science_star/SearchPage.dart';

final avatar = Container(
  width: 25,
  height: 25,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    image: DecorationImage(
      image: AssetImage('assets/images/Avatar.png'),
      fit: BoxFit.cover,
    ),
  ),
);

class UserPage extends StatefulWidget {
  final Color backgroundColor;
  final TextStyle textStyle;

  const UserPage(
      {Key? key, required this.backgroundColor, required this.textStyle})
      : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  int _currentIndex = 2;
  Color _backgroundColor = Color(0xFF9BBEC8);

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // Change the background color here
          child: Column(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => HomePage(
                          backgroundColor: Color(0xFF9BBEC8),
                          textStyle: widget.textStyle,
                        )));
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SearchPage(
                  backgroundColor: const Color(0xFF9BBEC8),
                  textStyle: TextStyle(),
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
    );
  }
}
