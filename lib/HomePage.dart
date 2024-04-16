import 'package:flutter/material.dart';
import 'package:science_star/SearchPage.dart';
import 'package:science_star/UserPage.dart';
import 'FavoriteBookPage.dart';

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

Widget categoryCard(String imagePath, String label, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Column(
      children: [
        Card(
          color: Colors.white,
          elevation: 10,
          margin: const EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(imagePath, width: 70),
          ),
        ),
        Text(label),
      ],
    ),
  );
}

Widget BookCard(
    String imagePath, String label, VoidCallback onFavoritePressed) {
  bool isBookFavorite =
      false; // Penanda apakah buku sudah difavoritkan, bisa diganti dengan logika yang sesuai

  return Column(
    children: [
      Card(
        color: Colors.white,
        elevation: 10,
        margin: const EdgeInsets.all(10),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: Image.asset(imagePath, width: 120),
            ),
            Positioned(
              top: 0,
              right: 75,
              child: IconButton(
                icon: isBookFavorite
                    ? favoriteIcon
                    : Icon(Icons
                        .favorite_border), // Gunakan ikon favorit jika buku sudah difavoritkan
                color: Colors.red,
                iconSize: 30, // Ganti warna sesuai kebutuhan
                onPressed:
                    onFavoritePressed, // Panggil fungsi ketika ikon favorit diklik
              ),
            ),
          ],
        ),
      ),
      Text(label),
    ],
  );
}

final favoriteIcon = const Icon(
  Icons.favorite_rounded,
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

  final List<Widget Function(BuildContext)> _children = [
    (context) => Center(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 260,
                decoration: BoxDecoration(
                  color: Color(0xFF9BBEC8),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        categoryCard('assets/images/icon/8.jpeg', 'Category 1',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Category1Page(),
                            ),
                          );
                        }),
                        categoryCard(
                            'assets/images/icon/7.jpeg', 'Category 2', () {}),
                        categoryCard(
                            'assets/images/icon/6.jpeg', 'Category 3', () {}),
                        categoryCard(
                            'assets/images/icon/4.jpeg', 'Category 4', () {}),
                        categoryCard(
                            'assets/images/icon/9.jpeg', 'Category 5', () {}),
                        categoryCard(
                            'assets/images/icon/5.jpeg', 'Category 6', () {}),
                        categoryCard(
                            'assets/images/icon/3.jpeg', 'Category 7', () {}),
                        categoryCard(
                            'assets/images/icon/1.jpeg', 'Category 8', () {}),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        categoryCard(
                            'assets/images/icon/13.jpeg', 'Category 9', () {}),
                        categoryCard(
                            'assets/images/icon/10.jpeg', 'Category 10', () {}),
                        categoryCard(
                            'assets/images/icon/11.jpeg', 'Category 11', () {}),
                        categoryCard(
                            'assets/images/icon/12.jpeg', 'Category 12', () {}),
                        categoryCard(
                            'assets/images/icon/16.jpeg', 'Category 13', () {}),
                        categoryCard(
                            'assets/images/icon/14.jpeg', 'Category 14', () {}),
                        categoryCard(
                            'assets/images/icon/15.jpeg', 'Category 15', () {}),
                        categoryCard(
                            'assets/images/icon/17.jpeg', 'Category 16', () {}),
                      ],
                    ),
                  ),
                  SizedBox(height: 35),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 20, bottom: 0),
                        child: Text(
                          'Buku yang Mungkin Anda Sukai',
                          style: textStyle,
                        ),
                      ),
                      Container(
                        height: 220, // Sesuaikan dengan tinggi kartu buku
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(width: 10), // Padding awal
                            BookCard('assets/images/buku/2.jpeg', 'Category A',
                                () {
                              // Implementasi logika ketika ikon favorit pada buku ini diklik
                            }),
                            BookCard('assets/images/buku/1.jpeg', 'Category B',
                                () {
                              // Implementasi logika ketika ikon favorit pada buku ini diklik
                            }),
                            BookCard('assets/images/buku/3.jpeg', 'Category C',
                                () {
                              // Implementasi logika ketika ikon favorit pada buku ini diklik
                            }),
                            BookCard('assets/images/buku/4.jpeg', 'Category D',
                                () {
                              // Implementasi logika ketika ikon favorit pada buku ini diklik
                            }),
                            BookCard('assets/images/buku/5.jpeg', 'Category E',
                                () {
                              // Implementasi logika ketika ikon favorit pada buku ini diklik
                            }),
                            BookCard('assets/images/buku/6.jpeg', 'Category F',
                                () {
                              // Implementasi logika ketika ikon favorit pada buku ini diklik
                            }),
                            SizedBox(width: 0), // Padding akhir
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 20, bottom: 0),
                        child: Text(
                          'Buku Terpopuler',
                          style: textStyle,
                        ),
                      ),
                      Container(
                        height: 220, // Sesuaikan dengan tinggi kartu buku
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(width: 10), // Padding awal
                            BookCard('assets/images/buku/2.jpeg', 'Category A',
                                () {
                              // Implementasi logika ketika ikon favorit pada buku ini diklik
                            }),
                            BookCard('assets/images/buku/1.jpeg', 'Category B',
                                () {
                              // Implementasi logika ketika ikon favorit pada buku ini diklik
                            }),
                            BookCard('assets/images/buku/3.jpeg', 'Category C',
                                () {
                              // Implementasi logika ketika ikon favorit pada buku ini diklik
                            }),
                            BookCard('assets/images/buku/4.jpeg', 'Category D',
                                () {
                              // Implementasi logika ketika ikon favorit pada buku ini diklik
                            }),
                            BookCard('assets/images/buku/5.jpeg', 'Category E',
                                () {
                              // Implementasi logika ketika ikon favorit pada buku ini diklik
                            }),
                            BookCard('assets/images/buku/6.jpeg', 'Category F',
                                () {
                              // Implementasi logika ketika ikon favorit pada buku ini diklik
                            }),
                            SizedBox(width: 10), // Padding akhir
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDDF2FD),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: widget.backgroundColor,
        elevation: 0, // No shadow
        title: Row(
          children: [
            Image.asset('assets/images/logo.png', width: 50),
            SizedBox(width: 10),
            Text(
              'SCIENCE STAR',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF164863),
              ),
            ),
          ],
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoriteBookPage(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: favoriteIcon,
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                // Panggil fungsi yang mengembalikan widget dengan menyediakan context
                _children[_currentIndex](context),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: widget.backgroundColor,
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchPage(
                    backgroundColor: Color(0xFF9BBEC8),
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF164863)),
                  ),
                ),
              );
            } else if (index == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserPage(
                    backgroundColor: Color(0xFF9BBEC8),
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF164863)),
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

class Category1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category 1'),
      ),
      body: Center(
        child: Text('Category 1 Page'),
      ),
    );
  }
}
