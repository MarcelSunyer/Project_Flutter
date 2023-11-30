import 'package:app_book/screens/home_screen.dart';
import 'package:app_book/screens/my_books_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const MyBooksScreen(),
        "/home": (context) => const HomeScreen(),
      },
    );
  }
}
