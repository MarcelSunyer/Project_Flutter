import 'package:app_book/api.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  TextEditingController _searchController = TextEditingController();

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
                    _handleSearch(value);
                  },
                  decoration: InputDecoration(
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

  void _handleSearch(String value) async {
    // Realiza la lógica de búsqueda aquí (puedes modificar según tu implementación)
    // En este ejemplo, carga los libros desde la API y compara los nombres

    // Cargar libros desde la API
    List<String> bookNames = await apiLoadBookNamess();

    // Comparar el valor ingresado con los nombres de los libros
    bool bookFound = bookNames.contains(value);

    // Navegar a la próxima página con el resultado de la búsqueda
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NextPage(searchValue: value, bookFound: bookFound),
      ),
    );
  }

  Future<List<String>> apiLoadBookNamess() async {
    // Lógica para cargar los nombres de los libros desde la API aquí
    // Debes implementar tu lógica para cargar libros desde la API y extraer los nombres
    // Aquí, devuelvo una lista de nombres ficticios como ejemplo
    return apiLoadBookNames();
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
  }}