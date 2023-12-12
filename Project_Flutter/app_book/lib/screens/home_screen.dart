import 'package:app_book/widgets/book_row.dart';
import 'package:app_book/widgets/menu_bar.dart';
import 'package:app_book/widgets/profile_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 22.0, left: 10.0, right: 10.0),
            child: Column(
              children: [
                ProfileWidget(avatarRadius: 20.0),
                Divider(
                  color: Colors.grey,
                  height: 10,
                  thickness: 0.5,
                ),
                BookRow(
                  itemHeight: 150,
                  itemWidth: 300,
                  category: 'Hardcover Fiction',
                  titleFontSize: 35,
                  authorFontSize: 20,
                  numItems: 1,
                ),
                Divider(
                  color: Colors.grey,
                  height: 10,
                  thickness: 0.5,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'New & Trending',
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'MyFont',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                BookRow(
                  itemHeight: 150,
                  itemWidth: 100,
                  category: 'Hardcover Fiction',
                  titleFontSize: 35,
                  authorFontSize: 20,
                ),
              ],
            ),
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
