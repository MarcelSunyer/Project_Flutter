import 'package:app_book/screens/home_screen.dart';
import 'package:app_book/screens/library_screen.dart';
import 'package:app_book/screens/my_books_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) =>  HomeScreen(),
        "/mybooks": (context) =>  MyBooksScreen(),
        "/library": (context) => LibraryScreen(),
      },
    );
  }
}
