import 'package:app_book/Widgets/menu_bar.dart';
import 'package:app_book/widgets/book_genre_widget.dart';
import 'package:app_book/widgets/book_row.dart';
import 'package:app_book/widgets/book_search_bar.dart';
import 'package:flutter/material.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Library',
                    style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'Analogist',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SearchBarWidget(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 10.0),
                    child: Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: 'Analogist',
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
              const SingleChildScrollView(
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
                        genre: "Creativity",
                        icon: Icons.create_outlined,
                        color: Color.fromARGB(255, 215, 100, 60),
                      ),
                    ),
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 10.0),
                    child: Text(
                      'Novel',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Analogist',
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
              BookRow(
                  itemWidth: 100,
                  itemHeight: 140,
                  category: 'Hardcover Fiction',
                  titleFontSize: 12,
                  authorFontSize: 8, 
                  parentContext: context,
                  ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 10.0),
                    child: Text(
                      'Pocketbook',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Analogist',
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
              BookRow(
                itemWidth: 100,
                itemHeight: 140,
                category: 'Mass Market Paperback',
                titleFontSize: 12,
                authorFontSize: 8,
                parentContext: context,
              ),
            ],
          ),
          const Align(
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
