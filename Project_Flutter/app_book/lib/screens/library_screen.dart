import 'package:app_book/Widgets/menu_bar.dart';
import 'package:flutter/material.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
