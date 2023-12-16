import 'package:app_book/widgets/book_row.dart';
import 'package:app_book/widgets/menu_bar.dart';
import 'package:app_book/widgets/profile_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 22.0, left: 10.0, right: 10.0),
            child: Column(
              children: [
                const ProfileWidget(avatarRadius: 20.0),
                const Divider(
                  color: Colors.grey,
                  height: 5,
                  thickness: 0.5,
                ),
                const SizedBox(
                  width: 450,
                  height: 325,
                  child: BookRow(
                    itemWidth: 400,
                    itemHeight: 200,
                    category: 'Mass Market Paperback',
                    titleFontSize: 35,
                    authorFontSize: 20,
                    numItems: 1,
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                  height: 10,
                  thickness: 0.5,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'New & Trending',
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'Analogist',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const BookRow(
                  itemHeight: 150,
                  itemWidth: 120,
                  category: 'Hardcover Fiction',
                  titleFontSize: 50,
                  authorFontSize: 30,
                ),
                Container(
                  width: 400,
                  height: 225,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 128, 112, 112),
                        offset: Offset(0, 1),
                        blurRadius: 20,
                      ),
                    ],
                    image: const DecorationImage(
                      image: AssetImage("assets/daybook.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
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
