import 'package:app_book/widgets/book_row.dart';
import 'package:app_book/widgets/menu_bar.dart';
import 'package:app_book/widgets/profile_widget.dart';
import 'package:flutter/material.dart';

class BookReviewScreen extends StatelessWidget {
  const BookReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
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
      ),
    );
  }
}
