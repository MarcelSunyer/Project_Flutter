import 'dart:convert';

import 'package:app_book/models/book.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
class Book {
  final int rank;
  final String title;
  final String author;
  final String description;
  final String imageUrl;
  final String amazonUrl;

  Book({
    required this.rank,
    required this.title,
    required this.author,
    required this.description,
    required this.imageUrl,
    required this.amazonUrl,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      rank: json['rank'],
      title: json['title'],
      author: json['author'],
      description: json['description'],
      imageUrl: json['book_image'],
      amazonUrl: json['buy_links'][0]['url'], // Assuming the first link is Amazon
    );
  }
}

Future<List<Book>> apiLoadBooks() async {
  final uri = Uri.parse("https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=vuY5P7B0Dc4I2xGxtoEPadALIQPnIIT6");
  final response = await http.get(uri);
  final json = jsonDecode(response.body);

  // Verificar si 'results' y 'books' existen y no son null
  if (json['results'] != null && json['results']['books'] != null) {
    final jsonBookList = json['results']['books'];

    final List<Book> bookList = [];
    for (final jsonBook in jsonBookList) {
      final book = Book.fromJson(jsonBook);
      bookList.add(book);
    }

    return bookList;
  } else {
    // Manejar el caso donde las claves 'results' o 'books' son null
    print('Error: No se encontró la clave "results" o "books" en el JSON.');
    return []; // Devolver una lista vacía o manejar de otra manera según tus necesidades
  }
}