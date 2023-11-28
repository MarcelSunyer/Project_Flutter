import 'dart:convert';

import 'package:app_book/models/users.dart';
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
  final uri = Uri.parse("https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=vuY5P7B0Dc4I2xGxtoEPadALIQPnIIT6"); // Replace with the actual API URL
  final response = await http.get(uri);
  final json = jsonDecode(response.body);
  final jsonBookList = json['results']['books'];

  final List<Book> bookList = [];
  for (final jsonBook in jsonBookList) {
    final book = Book.fromJson(jsonBook);
    bookList.add(book);
  }

  return bookList;
}