import 'package:flutter/material.dart';
import 'package:science_star/FavoriteBookPage.dart';
import 'package:science_star/HomePage.dart';
import 'package:science_star/LoginPage.dart';
import 'package:science_star/SignUpPage.dart';
import 'LoginPage.dart';
import 'SignUpPage.dart';

class Category2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF427D9D),
        title: Row(
          children: [
            Text(
              'Category 2',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFFDDF2FD),
              ),
            ),
          ],
        ),
        iconTheme: IconThemeData(
          color: Color(0xFFDDF2FD),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavoriteBookPage(),
                  ),
                );
              },
              icon: Icon(
                Icons.favorite,
                size: 30,
                color: Color.fromARGB(255, 155, 33, 33),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 2),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
            CardBook(
              imagePath: 'assets/images/buku/1.jpeg',
              title: 'Septihan',
              author: 'Poppy Pertiwi',
            ),
            SizedBox(height: 0),
            CardBook(
              imagePath: 'assets/images/buku/2.jpeg',
              title: 'Judul Buku 2',
              author: 'Penulis 2',
            ),
            SizedBox(height: 0),
            CardBook(
              imagePath: 'assets/images/buku/3.jpeg',
              title: 'Judul Buku 3',
              author: 'Penulis 3',
            ),
            SizedBox(height: 0),
            CardBook(
              imagePath: 'assets/images/buku/3.jpeg',
              title: 'Judul Buku 3',
              author: 'Penulis 3',
            ),
            SizedBox(height: 0),
            CardBook(
              imagePath: 'assets/images/buku/3.jpeg',
              title: 'Judul Buku 3',
              author: 'Penulis 3',
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
      backgroundColor: Color(0xFF9BBEC8),
    );
  }
}

class CardBook extends StatefulWidget {
  final String imagePath;
  final String title;
  final String author;

  const CardBook({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.author,
  }) : super(key: key);

  @override
  _CardBookState createState() => _CardBookState();
}

class _CardBookState extends State<CardBook> {
  bool isFavorite = false;

  void _showLoginPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color(0xFFDDF2FD),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "Silahkan Masuk ke Akun Anda, Untuk Melakukan Peminjaman Buku",
                style: TextStyle(color: Color(0xFF164863)),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Daftar',
                      style: TextStyle(color: Color(0xFF427D9D)),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Masuk',
                      style: TextStyle(color: Color(0xFF427D9D)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: Card(
        color: Color(0xFFDDF2FD),
        margin: const EdgeInsets.symmetric(vertical: 2.0),
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.imagePath,
                width: 200,
                height: 200,
              ),
              SizedBox(width: 0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      widget.author,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 100),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: _showLoginPopup,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF164863),
                            fixedSize: Size(120, 30),
                          ),
                          child: Text('Pinjam'),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                          icon: Icon(
                            isFavorite
                                ? Icons.favorite
                                : Icons.favorite_outline,
                            size: 33,
                            color: Colors.red,
                          ),
                        ),
                      ],
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
