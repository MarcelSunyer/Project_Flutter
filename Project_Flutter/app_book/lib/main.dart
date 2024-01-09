import 'package:app_book/screens/home_screen.dart';
import 'package:app_book/screens/library_screen.dart';
import 'package:app_book/screens/my_books_screen.dart';
import 'package:app_book/screens/book_review.dart';
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
        "/": (context) => const HomeScreen(),
        "/mybooks": (context) => const MyBooksScreen(),
        "/library": (context) => const LibraryScreen(),
        "/book_review": (context) => const BookReviewScreen(),
      },
    );
  }
}
