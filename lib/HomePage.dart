import 'package:flutter/material.dart';
import 'package:science_star/SearchPage.dart';

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

final categoryCard1 = Column(
  children: [
    Card(
      color: Colors.white,
      elevation: 10,
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset('assets/images/icon/8.jpeg', width: 70),
      ),
    ),
    const Text('Category 1'),
  ],
);

final categoryCard2 = Column(
  children: [
    Card(
      color: Colors.white,
      elevation: 10,
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset('assets/images/icon/7.jpeg', width: 70),
      ),
    ),
    const Text('Category 2'),
  ],
);

final categoryCard3 = Column(
  children: [
    Card(
      color: Colors.white,
      elevation: 10,
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset('assets/images/icon/6.jpeg', width: 70),
      ),
    ),
    const Text('Category 3'),
  ],
);

final categoryCard4 = Column(
  children: [
    Card(
      color: Colors.white,
      elevation: 10,
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset('assets/images/icon/4.jpeg', width: 70),
      ),
    ),
    const Text('Category 4'),
  ],
);

final categoryCard5 = Column(
  children: [
    Card(
      color: Colors.white,
      elevation: 10,
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset('assets/images/icon/1.jpeg', width: 70),
      ),
    ),
    const Text('Category 5'),
  ],
);

final categoryCard6 = Column(
  children: [
    Card(
      color: Colors.white,
      elevation: 10,
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset('assets/images/icon/3.jpeg', width: 70),
      ),
    ),
    const Text('Category 6'),
  ],
);

final categoryCard7 = Column(
  children: [
    Card(
      color: Colors.white,
      elevation: 10,
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset('assets/images/icon/9.jpeg', width: 70),
      ),
    ),
    const Text('Category 7'),
  ],
);

final categoryCard8 = Column(
  children: [
    Card(
      color: Colors.white,
      elevation: 10,
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset('assets/images/icon/5.jpeg', width: 70),
      ),
    ),
    const Text('Category 8'),
  ],
);
final categoryCard9 = Column(
  children: [
    Card(
      color: Colors.white,
      elevation: 10,
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset('assets/images/icon/13.jpeg', width: 70),
      ),
    ),
    const Text('Category 8'),
  ],
);
final categoryCard10 = Column(
  children: [
    Card(
      color: Colors.white,
      elevation: 10,
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset('assets/images/icon/12.jpeg', width: 70),
      ),
    ),
    const Text('Category 8'),
  ],
);
final categoryCard11 = Column(
  children: [
    Card(
      color: Colors.white,
      elevation: 10,
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset('assets/images/icon/15.jpeg', width: 70),
      ),
    ),
    const Text('Category 8'),
  ],
);
final categoryCard12 = Column(
  children: [
    Card(
      color: Colors.white,
      elevation: 10,
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset('assets/images/icon/16.jpeg', width: 70),
      ),
    ),
    const Text('Category 8'),
  ],
);
final categoryCard13 = Column(
  children: [
    Card(
      color: Colors.white,
      elevation: 10,
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset('assets/images/icon/11.jpeg', width: 70),
      ),
    ),
    const Text('Category 8'),
  ],
);
final categoryCard14 = Column(
  children: [
    Card(
      color: Colors.white,
      elevation: 10,
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset('assets/images/icon/10.jpeg', width: 70),
      ),
    ),
    const Text('Category 8'),
  ],
);
final categoryCard15 = Column(
  children: [
    Card(
      color: Colors.white,
      elevation: 10,
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset('assets/images/icon/14.jpeg', width: 70),
      ),
    ),
    const Text('Category 8'),
  ],
);
final categoryCard16 = Column(
  children: [
    Card(
      color: Colors.white,
      elevation: 10,
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset('assets/images/icon/2.jpeg', width: 70),
      ),
    ),
    const Text('Category 8'),
  ],
);

final favoriteIcon = const Icon(
  Icons.favorite_rounded,
  fill: null,
  color: Color.fromARGB(255, 216, 61, 61),
  size: 35,
);

final textStyle = const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Color(0xFF164863),
);

class HomePage extends StatefulWidget {
  final Color backgroundColor;

  const HomePage({required this.backgroundColor, required TextStyle textStyle});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    // Add other pages here as needed
    Center(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            child: Container(
              width: double.infinity,
              height: 350,
              color: Color(0xFFDDF2FD),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Spacer
              const SizedBox(height: 38),
              // Heading
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Add SizedBox to separate logo and text
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Image.asset('assets/images/logo.png', width: 50),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'SCIENCE STAR',
                      style: textStyle,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 10,
                  runSpacing: 30,
                ),
              ),

              SizedBox(
                height: 120,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      categoryCard1,
                      categoryCard2,
                      categoryCard3,
                      categoryCard4,
                      categoryCard9,
                      categoryCard10,
                      categoryCard11,
                      categoryCard12,

                      // Repeat for the other 6 categories
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 10,
                  runSpacing: 30,
                ),
              ),
              SizedBox(
                height: 120,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      categoryCard5,
                      categoryCard6,
                      categoryCard7,
                      categoryCard8,
                      categoryCard13,
                      categoryCard14,
                      categoryCard15,
                      categoryCard16,
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 10,
              runSpacing: 30,
            ),
          ),
          Positioned(
            top: 45,
            right: 15,
            child: favoriteIcon,
          ),
          Positioned(
            bottom: 0,
            top: 370,
            left: 15,
            child: Text(
              'Buku yang Mungkin Anda Sukai',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF164863),
              ),
            ),
          ),
        ],
      ),
    ),

    // const SearchPage(),
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Add avatar and text widgets here
          avatar,
          const SizedBox(height: 10),
          Text(
            'User',
            style: textStyle,
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: widget.backgroundColor,
        child: _children[_currentIndex],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: widget.backgroundColor,
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            if (index == 1) {
              // Navigate to the search page when the search icon is tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchPage(
                    backgroundColor: const Color(0xFF9BBEC8),
                    textStyle: textStyle,
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
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
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
