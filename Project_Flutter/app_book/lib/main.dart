import 'package:app_book/Widgets/lista_libros.dart';
import 'package:app_book/Widgets/menu_bar.dart';
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(
                child: ListaLibros(),
              ),
              const SizedBox(height: 20),
              MenuBarBook(
                width: 500,
                height: 50,
                borderRadius: 30,
                backgroundColor: const Color.fromARGB(255, 97, 97, 97),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
