import 'package:flutter/material.dart';
import 'package:app_book/widgets/book_row.dart';
import 'package:app_book/widgets/menu_bar.dart';
import 'package:app_book/widgets/profile_widget.dart';

class BookReviewScreen extends StatelessWidget {
  const BookReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Agrega un botón para ir a la página de revisión de libros
            ElevatedButton(
              onPressed: () {
                // Navega a la página de revisión de libros
                Navigator.pushNamed(
                  context,
                  '/book_review',
                  arguments: {
                    'bookTitle': 'Título del libro', // Puedes pasar el título real aquí
                  },
                );
              },
              child: Text('Ir a la revisión del libro'),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Navegar de nuevo a la ruta "/"
                Navigator.pushNamed(context, '/');
              },
              child: Container(
                width: 100, // Ajusta el ancho según tus necesidades
                height: 100, // Ajusta la altura según tus necesidades
                color: Colors.blue, // Puedes cambiar el color según tus necesidades
                child: Center(
                  child: Text(
                    'Regresar a "/"',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}