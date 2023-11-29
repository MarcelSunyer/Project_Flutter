import 'package:app_book/widgets/book_list.dart';
import 'package:app_book/widgets/menu_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Expanded(
                child: BookListScreen(
                  itemWidth: 150,
                  itemHeight: 250,
                ),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 675,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: MenuBarBook(
                        width: 450,
                        height: 75,
                        borderRadius: 30,
                        backgroundColor: Color.fromARGB(255, 97, 97, 97),
                      ),
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
