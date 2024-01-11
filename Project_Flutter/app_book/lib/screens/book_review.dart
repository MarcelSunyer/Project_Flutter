import 'package:app_book/api.dart';
import 'package:app_book/widgets/book_row.dart';
import 'package:app_book/widgets/menu_bar.dart';
import 'package:app_book/widgets/profile_widget.dart';
import 'package:app_book/widgets/bookdetail_widget.dart';
import 'package:flutter/material.dart';

class BookReviewScreen extends StatelessWidget {
  const BookReviewScreen({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ... otros widgets
          Center(
            child: GestureDetector(
              onTap: () {
                // Navegar de nuevo a la ruta "/"
                Navigator.pushNamed(context, '/');
              },
              child: Text('Click me to go back'),
            ),
          ),
          // Agrega el código del BookDetailScreen aquí
          Expanded(
            child: BookDetailScreen(
              book: Book(
                title: 'Example Title',  // Reemplaza con los datos reales del libro
                author: 'Example Author',  // Reemplaza con los datos reales del libro
                description: 'Example Description',  // Reemplaza con los datos reales del libro
                // Otros atributos del libro
              ),
            ),
          ),
        ],
      ),
    );
  }
}
