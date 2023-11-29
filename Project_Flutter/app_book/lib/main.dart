import 'package:app_book/Widgets/lista_libros.dart';
import 'package:app_book/Widgets/menu_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Expanded(
                child: ListaLibros(),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 675,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: MenuBarBook(
                        width: 450,
                        height: 75,
                        borderRadius: 30,
                        backgroundColor: Color.fromARGB(255, 97, 97, 97),
                      ),
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
