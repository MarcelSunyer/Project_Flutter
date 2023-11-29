import 'package:app_book/api.dart';
import 'package:flutter/material.dart';

class ListaLibros extends StatelessWidget {
  const ListaLibros({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'My Books',
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'MiFuente',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: FutureBuilder(
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
                      shrinkWrap: true,
                      itemCount: bookList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            BookListItem(book: bookList[index]),
                          ],
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
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
  return Container(
    margin: const EdgeInsets.all(8.0), // Puedes ajustar el margen según tus necesidades
    padding: const EdgeInsets.all(8.0), // Puedes ajustar el padding según tus necesidades
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.grey,
        width: 1.0,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 150,
          height: 250,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              book.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 16.0), // Puedes ajustar el espacio entre la imagen y el texto
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente el contenido
            children: [
              Text(
                book.title,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0), // Puedes ajustar el espacio entre el título y el autor
              Text(
                book.author,
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
}
