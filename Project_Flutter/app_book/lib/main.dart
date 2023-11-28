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
          child: Stack(
            children: [
              const ListaLibros(),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MenuBarBook(
                      width: 500,
                      height: 75,
                      borderRadius: 30,
                      backgroundColor: const Color.fromARGB(255, 97, 97, 97),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
