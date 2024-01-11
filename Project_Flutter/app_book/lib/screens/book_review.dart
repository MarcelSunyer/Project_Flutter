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
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomIconContainer(
                  child: Icon(Icons.share_outlined),
                ),
                SizedBox(width: 16),
                CustomIconContainer(
                  child: Icon(
                    Icons.favorite_outline,
                    color: Colors.red,
                  ),
                ),
                SizedBox(
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
              height: 32,
            ),
            Container(
              width: 200,
              height: 300,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  book.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 22.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: 1),
                Column(
                  children: [
                    CustomIconContainer(
                      child: Icon(
                        Icons.phone_iphone,
                        color: Color.fromARGB(255, 238, 93, 83),
                      ),
                    ),
                    
                    Text('E-Book'),
                  ],
                ),
                SizedBox(
                  width: 1,
                ),
                Column(
                  children: [
                    CustomIconContainer(
                      child: Icon(
                        Icons.headphones,
                        color: Color.fromARGB(255, 238, 93, 83),
                      ),
                    ),
                    Text('Audio'),
                  ],
                ),
                SizedBox(
                  width: 1,
                ),
                Column(
                  children: [
                    CustomIconContainer(
                      child: Icon(
                        Icons.star_outline,
                        color: Color.fromARGB(255, 238, 93, 83),
                      ),
                    ),
                    Text('4,8'),
                  ],
                ),
                SizedBox(
                  width: 1,
                ),
                Column(
                  children: [
                    CustomIconContainer(
                      child: Icon(
                        Icons.auto_stories_outlined,
                        color: Color.fromARGB(255, 238, 93, 83),
                      ),
                    ),
                    Text('300 pages'),
                  ],
                ),
                SizedBox(
                  width: 1,
                ),
              ],
            ),
            const SizedBox(height: 12.0),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                book.description,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 16.0,
                ),
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
