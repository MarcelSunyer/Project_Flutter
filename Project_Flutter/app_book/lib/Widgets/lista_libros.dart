import 'package:app_book/api.dart';
import 'package:flutter/material.dart';

class Lista_Libros extends StatelessWidget {
  const Lista_Libros({super.key});

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
        width: 350,
        height: 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            book.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}