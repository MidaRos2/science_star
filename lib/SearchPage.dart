import 'package:flutter/material.dart';
import 'package:science_star/HomePage.dart';
import 'UserPage.dart';

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

class SearchPage extends StatefulWidget {
  final Color backgroundColor;
  final TextStyle textStyle;

  const SearchPage(
      {Key? key, required this.backgroundColor, required this.textStyle})
      : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int _currentIndex = 1;

  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: widget.backgroundColor,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search for a scientist',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              // Add other widgets here
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          if (index == 0) {
            // Navigate to the home page when the home icon is tapped
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => HomePage(
                          backgroundColor: Color(0xFF9BBEC8),
                          textStyle: widget.textStyle,
                        )));
          } else if (index == 2) {
            // Navigate to the user page when the avatar is tapped
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UserPage(
                  backgroundColor: Color(0xFF9BBEC89BBEC8),
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
