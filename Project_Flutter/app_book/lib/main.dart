import 'package:app_book/api.dart';
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
            return SingleChildScrollView(
              child: ListView.builder(
                shrinkWrap: true, // Esto permite que el ListView se ajuste al contenido dentro de SingleChildScrollView
                itemCount: bookList.length,
                itemBuilder: (BuildContext context, int index) {
                  return BookListItem(book: bookList[index]);
                },
              ),
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
      leading: SizedBox(
        width: 350, // Ancho deseado
        height: 100, // Altura deseada
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0), // Ajusta según tus necesidades
          child: Image.network(
            book.imageUrl,
            fit: BoxFit.cover, // Otra opción para ajustar la imagen al contenedor
          ),
        ),
      ),
    );
  }
}
