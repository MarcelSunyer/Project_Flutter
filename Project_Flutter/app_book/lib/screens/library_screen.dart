import 'package:app_book/Widgets/menu_bar.dart';
import 'package:app_book/widgets/book_genre_widget.dart';
import 'package:app_book/widgets/book_row.dart';
import 'package:app_book/widgets/book_search_bar.dart';
import 'package:flutter/material.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Library',
                    style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'MyFont',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SearchBarWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 10.0),
                    child: Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: 'MyFont',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.0, top: 10.0),
                    child: Icon(
                      Icons.east,
                      size: 40.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: GenreWidget(
                        genre: "Novel",
                        icon: Icons.book_outlined,
                        color: Color.fromARGB(255, 215, 100, 60),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: GenreWidget(
                        genre: "Science",
                        icon: Icons.biotech_outlined,
                        color: Color.fromARGB(255, 215, 100, 60),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: GenreWidget(
                        genre: "Motivation",
                        icon: Icons.lightbulb_outline,
                        color: Color.fromARGB(255, 215, 100, 60),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: GenreWidget(
                        genre: "Motivation",
                        icon: Icons.lightbulb_outline,
                        color: Color.fromARGB(255, 215, 100, 60),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: GenreWidget(
                        genre: "Motivation",
                        icon: Icons.lightbulb_outline,
                        color: Color.fromARGB(255, 215, 100, 60),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: GenreWidget(
                        genre: "Motivation",
                        icon: Icons.lightbulb_outline,
                        color: Color.fromARGB(255, 215, 100, 60),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 10.0),
                    child: Text(
                      'Novel',
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: 'MyFont',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.0, top: 10.0),
                    child: Icon(
                      Icons.east,
                      size: 40.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              BookRow(itemWidth: 100, itemHeight: 170, category: 'Hardcover Fiction'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 10.0),
                    child: Text(
                      'Pocketbook',
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: 'MyFont',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.0, top: 10.0),
                    child: Icon(
                      Icons.east,
                      size: 40.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              BookRow(itemWidth: 100, itemHeight: 170, category: 'Mass Market Paperback'),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: MenuBarBook(
                width: 450,
                height: 75,
                borderRadius: 30,
                backgroundColor: Color.fromARGB(240, 39, 42, 52),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
