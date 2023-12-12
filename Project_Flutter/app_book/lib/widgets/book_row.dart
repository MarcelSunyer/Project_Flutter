import 'package:flutter/material.dart';
import 'package:app_book/api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Book App'),
        ),
        body: const BookRow(
          itemWidth: 150.0,
          itemHeight: 200.0,
          category: "hardcover-nonfiction",
          titleFontSize: 16.0,
          authorFontSize: 12.0,
        ),
      ),
    );
  }
}

class BookRow extends StatelessWidget {
  const BookRow({
    Key? key,
    required this.itemWidth,
    required this.itemHeight,
    required this.category,
    this.numItems,
    this.titleFontSize = 16.0,
    this.authorFontSize = 12.0,
  }) : super(key: key);

  final double itemWidth;
  final double itemHeight;
  final String category;
  final int? numItems;
  final double titleFontSize;
  final double authorFontSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          FutureBuilder(
            future: apiLoadBooks(category: category),
            builder: (
              BuildContext context,
              AsyncSnapshot<List<Book>> snapshot,
            ) {
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              }
              final bookList = snapshot.data!;

              final limitedBookList = numItems != null
                  ? bookList.take(numItems!).toList()
                  : bookList;

              return Row(
                children: limitedBookList.map((book) {
                  return BookRowItem(
                    book: book,
                    width: itemWidth,
                    height: itemHeight,
                    titleFontSize: titleFontSize,
                    authorFontSize: authorFontSize,
                  );
                }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}

class BookRowItem extends StatelessWidget {
  const BookRowItem({
    Key? key,
    required this.book,
    required this.width,
    required this.height,
    required this.titleFontSize,
    required this.authorFontSize,
  }) : super(key: key);

  final Book book;
  final double width;
  final double height;
  final double titleFontSize;
  final double authorFontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: width,
            height: height,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                book.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: width,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                book.title,
                style: TextStyle(
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            width: width,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                book.author,
                style: TextStyle(
                  fontSize: authorFontSize,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
