import 'package:app_book/api.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget {
 
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  final TextEditingController _searchController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[200],
            border: Border.all(color: Colors.grey, width: 2.0),
          ),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.search, color: Colors.grey),
              ),
              Expanded(
                child: TextField(
                  controller: _searchController,
                  onSubmitted: (value) {
                    _handleSearch(value, context);
                  },
                  decoration: const InputDecoration(
                    hintText: 'Book, author, theme...',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(Icons.tune, color: Colors.white),
              ),
            ],
          ),
        ),
        // Resto de tu código...
      ],
    );
  }

void _handleSearch(String value,BuildContext contexts ) async {
  
  List<Book> bookList = await apiLoadBooks();



Book? foundBook;

try {
  foundBook = bookList.firstWhere((book) => book.title == value);
} catch (e) {
  // Handle the exception or provide a default value
  foundBook = null;
}
if (foundBook != null) {
  // ignore: use_build_context_synchronously
  Navigator.of(contexts).pushNamed(
                        '/book_review',
                        arguments: foundBook,
                      );
}

}

  Future<List<Book>> apiLoadBooks() async {
    // Lógica para cargar los nombres de los libros desde la API aquí
    // Debes implementar tu lógica para cargar libros desde la API y extraer los nombres
    // Aquí, devuelvo una lista de nombres ficticios como ejemplo
    return apiLoadAllBooks();
  }
}

class NextPage extends StatelessWidget {
  final String searchValue;
  final bool bookFound;

  const NextPage({Key? key, required this.searchValue, required this.bookFound})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Results'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Search Value: $searchValue'),
            SizedBox(height: 20),
            if (bookFound)
              Text('Book found with the same name!')
            else
              Text('Book not found with the same name.'),
          ],
        ),
      ),
    );
  }
}
