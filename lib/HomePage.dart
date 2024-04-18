import 'package:flutter/material.dart';
import 'package:science_star/SearchPage.dart';
import 'package:science_star/UserPage.dart';
import 'FavoriteBookPage.dart';
import 'Category1Page.dart';
import 'Category2Page.dart';
import 'Category3Page.dart';
import 'Category4Page.dart';

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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: ClipRRect(
            // borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              imagePath,
              width: 90,
              height: 90,
            ),
          ),
        ),
        Text(label),
      ],
    ),
  );
}

class Book {
  final String imagePath;
  final String label;

  Book({required this.imagePath, required this.label});
}

class BookCard extends StatefulWidget {
  final String imagePath;
  final String label;
  final VoidCallback onFavoritePressed;

  const BookCard({
    required this.imagePath,
    required this.label,
    required this.onFavoritePressed,
  });

  @override
  _BookCardState createState() => _BookCardState();
}

class _BookCardState extends State<BookCard> {
  bool isBookFavorite = false;

  @override
  Widget build(BuildContext context) {
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
                child: Image.asset(
                  widget.imagePath,
                  width: 120,
                ),
              ),
              Positioned(
                top: 0,
                right: 75,
                child: IconButton(
                  icon: isBookFavorite
                      ? favoriteIcon
                      : Icon(Icons.favorite_border),
                  color: Colors.red,
                  iconSize: 30,
                  onPressed: () {
                    setState(() {
                      isBookFavorite = !isBookFavorite;
                    });
                    widget.onFavoritePressed();
                  },
                ),
              ),
            ],
          ),
        ),
        Text(widget.label),
      ],
    );
  }
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
  // ignore: unused_field
  final List<String> _favoriteBookIds = [];

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
                        categoryCard('assets/images/icon/8.png', 'Category 1',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Category1Page(),
                            ),
                          );
                        }),
                        categoryCard('assets/images/icon/7.png', 'Category 2',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Category2Page(),
                            ),
                          );
                        }),
                        categoryCard('assets/images/icon/6.png', 'Category 3',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Category3Page(),
                            ),
                          );
                        }),
                        categoryCard('assets/images/icon/4.png', 'Category 4',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Category4Page(),
                            ),
                          );
                        }),
                        categoryCard('assets/images/icon/9.png', 'Category 5',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Category1Page(),
                            ),
                          );
                        }),
                        categoryCard('assets/images/icon/5.png', 'Category 6',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Category1Page(),
                            ),
                          );
                        }),
                        categoryCard('assets/images/icon/3.png', 'Category 7',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Category1Page(),
                            ),
                          );
                        }),
                        categoryCard(
                            'assets/images/icon/1.png', 'Category 8', () {}),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        categoryCard('assets/images/icon/13.png', 'Category 9',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Category1Page(),
                            ),
                          );
                        }),
                        categoryCard('assets/images/icon/10.png', 'Category 10',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Category1Page(),
                            ),
                          );
                        }),
                        categoryCard('assets/images/icon/11.png', 'Category 11',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Category1Page(),
                            ),
                          );
                        }),
                        categoryCard('assets/images/icon/12.png', 'Category 12',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Category1Page(),
                            ),
                          );
                        }),
                        categoryCard('assets/images/icon/16.png', 'Category 13',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Category1Page(),
                            ),
                          );
                        }),
                        categoryCard('assets/images/icon/14.png', 'Category 14',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Category1Page(),
                            ),
                          );
                        }),
                        categoryCard('assets/images/icon/15.png', 'Category 15',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Category1Page(),
                            ),
                          );
                        }),
                        categoryCard('assets/images/icon/17.png', 'Category 16',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Category1Page(),
                            ),
                          );
                        }),
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
                            BookCard(
                              imagePath: 'assets/images/buku/2.jpeg',
                              label: 'Category A',
                              onFavoritePressed: () {
                                // Implementasi logika ketika ikon favorit pada buku ini diklik
                              },
                            ),
                            BookCard(
                              imagePath: 'assets/images/buku/1.jpeg',
                              label: 'Category B',
                              onFavoritePressed: () {
                                // Implementasi logika ketika ikon favorit pada buku ini diklik
                              },
                            ),
                            BookCard(
                              imagePath: 'assets/images/buku/3.jpeg',
                              label: 'Category C',
                              onFavoritePressed: () {
                                // Implementasi logika ketika ikon favorit pada buku ini diklik
                              },
                            ),
                            BookCard(
                              imagePath: 'assets/images/buku/4.jpeg',
                              label: 'Category D',
                              onFavoritePressed: () {
                                // Implementasi logika ketika ikon favorit pada buku ini diklik
                              },
                            ),
                            BookCard(
                              imagePath: 'assets/images/buku/5.jpeg',
                              label: 'Category E',
                              onFavoritePressed: () {
                                // Implementasi logika ketika ikon favorit pada buku ini diklik
                              },
                            ),
                            BookCard(
                              imagePath: 'assets/images/buku/6.jpeg',
                              label: 'Category F',
                              onFavoritePressed: () {
                                // Implementasi logika ketika ikon favorit pada buku ini diklik
                              },
                            ),
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
                            BookCard(
                              imagePath: 'assets/images/buku/2.jpeg',
                              label: 'Category A',
                              onFavoritePressed: () {
                                // Implementasi logika ketika ikon favorit pada buku ini diklik
                              },
                            ),
                            BookCard(
                              imagePath: 'assets/images/buku/1.jpeg',
                              label: 'Category B',
                              onFavoritePressed: () {
                                // Implementasi logika ketika ikon favorit pada buku ini diklik
                              },
                            ),
                            BookCard(
                              imagePath: 'assets/images/buku/3.jpeg',
                              label: 'Category C',
                              onFavoritePressed: () {
                                // Implementasi logika ketika ikon favorit pada buku ini diklik
                              },
                            ),
                            BookCard(
                              imagePath: 'assets/images/buku/4.jpeg',
                              label: 'Category D',
                              onFavoritePressed: () {
                                // Implementasi logika ketika ikon favorit pada buku ini diklik
                              },
                            ),
                            BookCard(
                              imagePath: 'assets/images/buku/5.jpeg',
                              label: 'Category E',
                              onFavoritePressed: () {
                                // Implementasi logika ketika ikon favorit pada buku ini diklik
                              },
                            ),
                            BookCard(
                              imagePath: 'assets/images/buku/6.jpeg',
                              label: 'Category F',
                              onFavoritePressed: () {
                                // Implementasi logika ketika ikon favorit pada buku ini diklik
                              },
                            ),
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
                    backgroundColor: Color(0xFFDDF2FD),
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
      ),
    );
  }
}
