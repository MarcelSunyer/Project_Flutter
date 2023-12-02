import 'package:app_book/widgets/book_list.dart';
import 'package:app_book/widgets/menu_bar.dart';
import 'package:flutter/material.dart';

class MyBooksScreen extends StatelessWidget {
  const MyBooksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Stack(
          children: [
            BookListScreen(
              itemWidth: 150,
              itemHeight: 250,
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
      ),
    );
  }
}

