import 'package:app_book/api.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
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
      ],
    );
  }

  void _handleSearch(String value, BuildContext contexts) async {
    List<Book> bookList = await apiLoadAllBookNames();

    Book? foundBook;

    try {
      foundBook = bookList.firstWhere((book) => book.title == value);
    } catch (e) {
      foundBook = null;
    }
    if (foundBook != null) {
      // ignore: use_build_context_synchronously
      Navigator.of(contexts).pushNamed(
        '/book_review',
        arguments: foundBook,
      );
    } else {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Container(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: const Text(
              'ERROR LOADING THIS BOOK',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24.0, color: Colors.white),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 153, 255),
          duration: const Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
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
        title: const Text('Search Results'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Search Value: $searchValue'),
            const SizedBox(height: 20),
            if (bookFound)
              const Text('Book found with the same name!')
            else
              const Text('Book not found with the same name.'),
          ],
        ),
      ),
    );
  }
}
