import 'package:flutter/material.dart';
import 'package:app_book/widgets/book_row.dart';
import 'package:app_book/widgets/menu_bar.dart';
import 'package:app_book/widgets/profile_widget.dart';
import 'package:app_book/api.dart';

class BookReviewScreen extends StatelessWidget {
  const BookReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Receive the book information
    final Book book = ModalRoute.of(context)!.settings.arguments as Book;

    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the image of the clicked book
            SizedBox(
              width: 200, // Set a suitable width
              height: 300, // Set a suitable height
              child: Image.network(
                book.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            // Add other details or content as needed
          ],
        ),
      ),
    );
  }
}
