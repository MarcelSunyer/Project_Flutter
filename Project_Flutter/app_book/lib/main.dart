import 'package:app_book/api.dart';
import 'package:app_book/models/users.dart' as BookModel; // Assuming you have a 'Book' class

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
        body: FutureBuilder(
          future: apiLoadBooks(),
          builder: (
            BuildContext context,
            AsyncSnapshot<List<Book>> snapshot,
          ) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }
            final bookList = snapshot.data!;
            return ListView.builder(
              itemCount: bookList.length,
              itemBuilder: (BuildContext context, int index) {
                return BookListItem(book: bookList[index]);
              },
            );
          },
        ),
      ),
    );
  }
}

class BookListItem extends StatelessWidget {
  const BookListItem({
    Key? key,
    required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(book.title),
      subtitle: Text(book.author),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(book.imageUrl),
      ),
    );
  }
}