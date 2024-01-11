import 'package:flutter/material.dart';
import 'package:app_book/api.dart';

class BookDetailScreen extends StatelessWidget {
  final Book book;

  const BookDetailScreen({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title: ${book.title}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Author: ${book.author}',
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              'Description: ${book.description}',
              style: const TextStyle(fontSize: 16),
            ),
            // Puedes agregar más detalles aquí
          ],
        ),
      ),
    );
  }
}