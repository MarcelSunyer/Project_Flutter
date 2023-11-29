import 'package:app_book/widgets/book_list.dart';
import 'package:app_book/widgets/menu_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              const Expanded(
                child: BookListScreen(
                  itemWidth: 150,
                  itemHeight: 250,
                ),
              ),
              Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 675,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: MenuBarBook(
                        width: 450,
                        height: 75,
                        borderRadius: 30,
                        backgroundColor: const Color.fromARGB(255, 97, 97, 97),
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
