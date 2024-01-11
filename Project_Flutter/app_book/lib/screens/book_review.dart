import 'package:flutter/material.dart';
import 'package:app_book/widgets/book_row.dart';
import 'package:app_book/widgets/menu_bar.dart';
import 'package:app_book/widgets/profile_widget.dart';
import 'package:app_book/api.dart';

class BookReviewScreen extends StatelessWidget {
  const BookReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Book book = ModalRoute.of(context)!.settings.arguments as Book;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomIconContainer(
                  child: const Icon(Icons.share),
                ),
                const SizedBox(width: 16),
                CustomIconContainer(
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(
                  width: 16,
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              book.title,
              style: const TextStyle(
                fontSize: 50,
                fontFamily: 'Analogist',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              book.author,
              style: const TextStyle(
                fontSize: 18.0,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: 200,
              height: 300,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(
                        0.5),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    10),
                child: Image.network(
                  book.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              book.description,
              style: const TextStyle(
                fontSize: 14.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomIconContainer extends StatelessWidget {
  final Widget child;

  const CustomIconContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Colors.grey[300]!,
        ),
      ),
      padding: const EdgeInsets.all(12.0),
      child: child,
    );
  }
}
