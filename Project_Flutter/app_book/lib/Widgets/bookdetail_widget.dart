import 'package:flutter/material.dart';

class BookReviewPage extends StatelessWidget {
  const BookReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Receive arguments using ModalRoute
    final Map<String, dynamic>? arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    // Extract the book title
    final String bookTitle = arguments?['bookTitle'] ?? '';

    return Scaffold(
      appBar: AppBar(
        title: Text('Reseña de $bookTitle'),
      ),
      body: Center(
        child: Text('Aquí va la reseña del libro $bookTitle'),
      ),
    );
  }
}